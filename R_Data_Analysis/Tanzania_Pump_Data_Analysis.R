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


