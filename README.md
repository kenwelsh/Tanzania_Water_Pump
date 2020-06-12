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


### Notes for Segment 1
+ Notebook named **machinelearning_supervised_improvedcleaning.ipynb** is the most up to the base code for cleaning and machine learning. This notebook also demonstrates the connection string to our SQLite database.

### Notes for Segment 2
**Presentation**
+ Water.org (The Power of Water - context and humanity touch), JMP WHO organization visualization, news articles
+ Starting Google Slides for [Presentation]( https://docs.google.com/presentation/d/1Tzutmtu-93NaoocKtD8GsclPh2si5CNKLqiVq4YbVKA/edit#slide=id.g8637fd1418_0_15) 
+ Starting Google Slides for [Storyboard](https://docs.google.com/presentation/d/1Hb3z-RGZLof6P-a4ixLqQX8gBp3ay2EoK5fEBRXFfFk/edit#slide=id.g89a106cc94_0_230)
+ Starting Tableau for [Interactive Map](https://public.tableau.com/shared/4KZ5BGWT8?:display_count=y&:origin=viz_share_link)

**Machine Learning**
+ Different techniques for filling NAs and replacing zeroes
+ Different levels for bucketing
+ Merge supplemental population/GPS data into the dataset
+ Try oversampling and imbalanced algorithms
+ More tuning of a deep learning model
+ Need to fix column data types for the SQLite
