library(tidyverse)

# import datasets
pump_data <- read.csv(file='clean_pump.csv',check.names=T,stringsAsFactors = F)


# create Region summary table
summarize_region <- pump_data %>% group_by(region) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)))


# create Basin summary table
summarize_basin <- pump_data %>% group_by(basin) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create Scheme Management summary table
summarize_scheme_management <- pump_data %>% group_by(scheme_management) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create Permit summary table
summarize_permit <- pump_data %>% group_by(permit) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create Extraction Type summary table
summarize_extraction_type <- pump_data %>% group_by(extraction_type) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create Management summary table
summarize_management <- pump_data %>% group_by(management) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create Payment summary table
summarize_payment <- pump_data %>% group_by(payment) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create Water Quality summary table
summarize_water_quality <- pump_data %>% group_by(water_quality) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create Quantity summary table
summarize_quantity <- pump_data %>% group_by(quantity) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create Source summary table
summarize_source <- pump_data %>% group_by(source) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create Source Class summary table
summarize_source_class <- pump_data %>% group_by(source_class) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create Waterpoint Type summary table
summarize_waterpoint_type <- pump_data %>% group_by(waterpoint_type) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create quantity, region, source, waterpoint summary table
summarize_quantity_with_additional <- pump_data %>% group_by(quantity, region, source, waterpoint_type) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create quantity, region summary table
summarize_quantity_region <- pump_data %>% group_by(quantity, region) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create quantity, source summary table
summarize_quantity_source <- pump_data %>% group_by(quantity, source) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create quantity, waterpoint summary table
summarize_quantity_waterpoint <- pump_data %>% group_by(quantity, waterpoint_type) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# create quantity, extraction_type summary table
summarize_quantity_extraction_type <- pump_data %>% group_by(quantity, extraction_type) %>% summarize(
  Functional=sum(status_group_functional), 
  Functional_Needs_Repair=sum(status_group_functional.needs.repair), 
  NonFunctional=sum(status_group_non.functional), 
  Functional_Percentage=sum(status_group_functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  Needs_Repair_Percentage=sum(status_group_functional.needs.repair)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional)),
  NonFunctional_Percentage=sum(status_group_non.functional)/(sum(status_group_functional)+sum(status_group_functional.needs.repair)+sum(status_group_non.functional))) 


# Region chi-squared test
tbl <- table(pump_data$region,pump_data$status_group) #generate contingency table
chisq.test(tbl) #compare categorical distributions
# significant difference in pump functional distribution between regions: p-value < 2.2e-16


# Basin chi-squared test
tbl <- table(pump_data$basin,pump_data$status_group) #generate contingency table
chisq.test(tbl) #compare categorical distributions
# significant difference in pump functional distribution between basins: p-value < 2.2e-16


# Scheme Management chi-squared test
tbl <- table(pump_data$scheme_management,pump_data$status_group) #generate contingency table
chisq.test(tbl) #compare categorical distributions
# significant difference in pump functional distribution between scheme management: p-value < 2.2e-16


# Permit chi-squared test
tbl <- table(pump_data$permit,pump_data$status_group) #generate contingency table
chisq.test(tbl) #compare categorical distributions
# significant difference in pump functional distribution between permit: p-value = 1.542e-15


# Extration Type chi-squared test
tbl <- table(pump_data$extraction_type,pump_data$status_group) #generate contingency table
chisq.test(tbl) #compare categorical distributions
# significant difference in pump functional distribution between extraction type: p-value = 2.2e-16


# Management chi-squared test
tbl <- table(pump_data$management,pump_data$status_group) #generate contingency table
chisq.test(tbl) #compare categorical distributions
# significant difference in pump functional distribution between scheme management: p-value = 2.2e-16


# Payment chi-squared test
tbl <- table(pump_data$payment,pump_data$status_group) #generate contingency table
chisq.test(tbl) #compare categorical distributions
# significant difference in pump functional distribution between payment: p-value = 2.2e-16


# Water Quality chi-squared test
tbl <- table(pump_data$water_quality,pump_data$status_group) #generate contingency table
chisq.test(tbl) #compare categorical distributions
# significant difference in pump functional distribution between water quality: p-value = 2.2e-16


# Quantity chi-squared test
tbl <- table(pump_data$quantity,pump_data$status_group) #generate contingency table
chisq.test(tbl) #compare categorical distributions
# significant difference in pump functional distribution between quantity p-value = 2.2e-16


# Source chi-squared test
tbl <- table(pump_data$source,pump_data$status_group) #generate contingency table
chisq.test(tbl) #compare categorical distributions
# significant difference in pump functional distribution between source: p-value = 2.2e-16


# Source Class chi-squared test
tbl <- table(pump_data$source_class,pump_data$status_group) #generate contingency table
chisq.test(tbl) #compare categorical distributions
# significant difference in pump functional distribution between scheme management: p-value = 2.2e-16


# Waterpoint Type chi-squared test
tbl <- table(pump_data$waterpoint_type,pump_data$status_group) #generate contingency table
chisq.test(tbl) #compare categorical distributions
# significant difference in pump functional distribution between waterpoint: p-value = 2.2e-16


