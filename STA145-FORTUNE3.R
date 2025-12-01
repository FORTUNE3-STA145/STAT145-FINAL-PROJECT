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
# Governor educated
table(data$gov_education

# Governor salary
table(data$gov_salary)

#######################Figure 1: Box Plot############################################

# Plot the box plot 
ggplot(data, aes (x = gov_education, y = gov_salary, fill = gov_education)) + geom_boxplot() + 
lab(title = "Salary Distribution by Education Level)
x = "Education Level"
y = "Annual Income in Thousands (1,000$)")

theme_minimal () +
theme(legend.position = "none")

####################Table 2: Contigency Table########################################
table(data$gov_education, data$gov_salary)

chisq.test(table(data$gov_education, data$gov_salary))
