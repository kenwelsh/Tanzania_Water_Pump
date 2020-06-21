# Tanzania_Water_Pump
Machine learning model to predict one of three classes for water pumps in Tanzania


### Team Members
+ Kuntal Deshpande
+ Matt Glibota
+ Ken Welsh
+ Nabanita Gupta
+ Allen Shih

### Communication Protocol
+ Team meetings on Monday and Wednesday during scheduled class hours (Zoom)
+ All team members available on Slack Fridays at 6 pm PST on Slack for check-in
  + Zoom meeting will be started if necessary
  + Friday check-in meeting used to determine if meetings need to be schedule on Saturday or Sunday in order to meet project deliverables
+ Slack is the primary communication channel throughout the week

### Project Summary
This project is to build a machine learning model to classify water pumps in Tanzania as either functional, functional – needs repair, or non-functional.  We chose this project because access to clean water is a significant issue faced by many communities around the world.  Around the world, 785 million people lack access to safe water.  Access to safe water helps empower people with time for school and work and contributes to improved health for women, children, and families.  This machine learning model can help the Tanzanian Ministry of Water improve maintenance operations and ensure that clean, potable water is available to communities across Tanzania.

The data for this project was sourced from DrivenData.org from the Pump it Up: Data Mining the Water Table competition (https://www.drivendata.org/competitions/7/pump-it-up-data-mining-the-water-table/page/23/).  The data is being supplied to DrivenData.org by the Taarifa waterpoints dashboard, which aggregates data from the Tanzania Ministry of Water.

Questions we hope to answer with the data:
+ Are there any geographic regions with higher pump failure rates?
+ Which features are most important in determining a pump needs repair?
+ Are pumps funded by certain funding organizations, installers, or management groups more likely to fail?

#### Technologies Used/Plan to Use

## Data Cleaning and Analysis
Python is used for initial data cleaning and analysis. Jupyter notebook is used to compose and run the codes. 
R is used in the further analysis part. 

## Database Storage
We have used SQLite Database for data storage. Tableau Dashboard along with Google slide is used to display and presentation purposes.

## Machine Learning
Python and Jupyter notebook are used for ETL and machine learning. The active workbook is **machinelearning_supervised_segment2.ipynb**.

### Description of preliminary data preprocessing and Description of preliminary feature engineering and preliminary feature selection, including the decision-making process
There was a multitude of data cleaning and transforming prior to compiling and fitting the model.

**Dataset supplemented with information about the 3 closest cities**. We created an algorithm that, for each water point row, will calculate the GPS distance to each of the 280 cities in Tanzania, and return the distance and population of the 3 closest cities. This algorithm is located in the **supplemental_population.ipynb** workbook. We included this supplemental data because we wanted to understand the influence of people relying on the waterpoint had on its status.

**Filling missing data with appropriate data type and value**. There were multiple columns and rows that had missing values. Two of these columns (Permit and Public Meeting) were Boolean in nature. Therefore the missing value was populated as False. IF the data was missing it would likely not be True. There are int/float columns and the missing values were filled with "0". For all other data types (mainly object), the missing values were filled with "Other". We are performing bucketting later in cleaning, therefore "Other" is a good value to use because it will not be unique just to missing data.

**Find unique values and perform bucketting on categorical information**. We ran unique value counts for each of the "object" columns to determine which features would need to be bucketed. We identified 6 features that would need to be bucketed: funder, installer, subvillage, lga, ward and scheme_name. These had around 2000 unique values. The other features had less than 21 unique values, which we determined would all be valuable in a dataset of over 59,000 rows. We set the threshold to 100 occurences of a unique value, otherwise it was re-labelled "Other". This transformation reduced the unique values in around 100 from 2000.

**Drop invaluable or duplicate features**. There were many parent/child grouping (i.e. group then type) which had 1 to 1 relationships. In otherwords, the group value only had one type value, therefore the group value was redundant. We removed payment type, quality, quantity, source, and waterpoint type groups. We also removed the waterpoint name and date recorded as these are unique values to every entry and do not provide prediction value. Lastly, dropped the geo_loc feature which was a intermediate feature during the calculation of closest cities

**Perform One Hot Encoding on categorical variables**. Once we had the features bucketted, which performed OneHotEncoded to create numeric values compatible with the machine learning model. The 21 categorical features were transformed to 546 features.

**Data filtering for illogical entries**. During preliminary model runs, Latitude and longitude were determined to be important features. Unfortunately there were nearly 2000 rows where longitude equals 0, which is a longitude impossible for the geography of Tanzania. Therefore we made the decision to drop these rows.

### Description of how data was split into training and testing sets
The data was split using sklearn train_test_split with no additional parameters.

### Explanation of model choice, including limitations and benefits
A Random Forest model was chosen for the model. We felt our features lent themselves very well to a decision tree model. Items like geopgraphy (lat, lon, height) and engineering information (water quality, waterpoint type, water source) would be great features for a decision tree to begin segmentting data. With a lot of categorical variables, a Random Forest can tend to make trees with sparse dataset, which can be a limitation. In our case, we had many rows and we felt the sparse trees lend themselves well to the numerous "engineering"-type features describing each of the waterpoints.

We also tested a deep learning modeling, with 2 hidden layers. During preliminary testing, both the accuracy and computational time were worse than the Random Forest, so we chose to stick with Random Forest.

We also tested a two stage logistic regression, where first stage would predict functioning versus everything else, and second stage would break down everything else into "needs repair" or "non-functioning". Unfortunately, the first stage yielded lower accuracy than Random Forest, so we chose not to pursue this model

### Description of model performance
The Random Forest had an accuracy of **80.8%** when identifying 3 output labels (functioning, needs repair, non-functioning). F1-score on the "needs repair label were the worst. This label is under represented in the overall dataset (<10% of total) and isn't linearly separable from the other two labels.

We also ran the Random Forest on a binary classification by combining the "needs repair" and "non-functioning" into a single label. This model achieved **82.6%** accuracy, with strong precision and recall scores. Precision for "non-functioning" group was 85%, which is a strong score for identifying pumps in need of maintenance.

## Dashboard
We are using Tableau for dashboarding. Also using Google slides for story board.


### Notes for Segment 1
+ Notebook named **machinelearning_supervised_improvedcleaning.ipynb** is the most up to the base code for cleaning and machine learning. This notebook also demonstrates the connection string to our SQLite database.

### Notes for Segment 2
**Presentation**
+ Water.org (The Power of Water - context and humanity touch), JMP WHO organization visualization, news articles
+ Starting Google Slides for [Presentation]( https://docs.google.com/presentation/d/1Tzutmtu-93NaoocKtD8GsclPh2si5CNKLqiVq4YbVKA/edit#slide=id.g8637fd1418_0_15) 
+ Starting Google Slides for [Storyboard](https://docs.google.com/presentation/d/1Hb3z-RGZLof6P-a4ixLqQX8gBp3ay2EoK5fEBRXFfFk/edit#slide=id.g89a106cc94_0_230)
+ Starting Tableau for [Interactive Map](https://public.tableau.com/shared/4KZ5BGWT8?:display_count=y&:origin=viz_share_link)
+ Starting Tableau for [Dashboarding] (https://public.tableau.com/profile/nabanita.gupta#!/vizhome/Tanzania-Water-BarCharts/Dashboard1)

**Machine Learning**
+ Different techniques for filling NAs and replacing zeroes
+ Different levels for bucketing
+ Merge supplemental population/GPS data into the dataset
+ Try oversampling and imbalanced algorithms
+ More tuning of a deep learning model
+ Need to fix column data types for the SQLite
