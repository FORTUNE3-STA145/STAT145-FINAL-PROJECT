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

#####################Table 1: DESCRIPTIVE STATISTICS#########################################
# Governor salary
table(data$gov_salary)

# Governor educated
table(data$gov_education

####################Figure 1: Contigency Table###############################################
table(data$gov_salary, data$gov_education)

chisq.test(table(data$gov_salary, data$gov_education))
