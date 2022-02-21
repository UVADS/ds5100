###############################################
# R Programming HW Assignment 1
###############################################

library(tidyverse)


# INSTRUCTIONS
# Perform the tasks below to write the necessary code and include all solutions

# Read about the abalone dataset:
# https://archive.ics.uci.edu/ml/datasets/Abalone

# TOTAL POINTS: 7

# Read in the abalone.data dataset from URL: 
# https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data
# NOTE1: you can pass the URL directly to read.csv(). 
# NOTE2: there is no header row

# 1. (1 POINT) Print the number of rows in the dataset.


# 2. (1 POINT) The rightmost column is the number of rings.
#    Print the maximum number of rings


# 3. (1 POINT) The leftmost column is the gender (M=male/F=female/I=infant)
#    Apply the filter() function from tidyverse to select only rows where gender is infant,
#    and print the number of records.


# 4. (1 POINT) Apply the filter() function from tidyverse to select only rows 
#    where gender is infant or male, and print the number of records.


# 5. (1 POINT) Call the table() function on the abalone genders to show how many
#    of each gender are present (M/F/I). Print the result.


# 6. (1 POINT) Compute the mean value of column 2 (V2) grouped by gender.
#     V2 is the longest shell measurement.
#     Requirements: use the %>% operator to chain commands, 
#                   and the group_by() and summarize() functions. 


# 7. (1 POINT) Compute the MEDIAN value of longest shell measurement for only the males.
#     Requirements: use the %>% operator to chain commands, 
#                   and the filter() and summarize() functions.
