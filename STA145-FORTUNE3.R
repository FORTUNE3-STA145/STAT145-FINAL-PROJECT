## Project:  STA 145, Fall 2025, Final Project
# Located:   TCNJ Google Drive
# File Name: template
# Date:      2025_11_23
# Who:       Elise Fortuna

## Load packages
# NOTES: Install packages if these commands return an error!
library(readr)
library(dplyr)
library(tidytext)
library(ggplot2)
library(haven)
library(forcats)
library(psych)

# set working directory
setwd("/courses/STA145/fortune3")


# Load data
data <-read_delim("data.csv")

describe("data")

data_complete <- data %>%
  filter(complete.cases(.))

#####################DESCRIPTIVE STATISTICS#########################################
# Governor education
table(data$gov_education

# Governor salary
table(data$gov_salary)

####################Contigency Table Results########################################
table(data$gov_education, data$gov_salary)

chisq.test(table(data$gov_education, data$gov_salary))
