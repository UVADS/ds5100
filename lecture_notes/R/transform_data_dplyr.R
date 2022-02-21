###############################################
# R4DS Ch3: Transform data with dplyr
###############################################
# install/load packages
library(tidyverse)

install.packages("nycflights13")
library(nycflights13)
# flights departing NYC in 2013

# show schema
str(flights)

# open a window and view full dataset
View(flights)

# the "verbs" of dplyr:
# - filter()
# - arrange()
# - select()
# - mutate()
# - summarize()

# For each of these functions, args are:
# - data frame
# - what action to take, using variable names

## filter()
filter(flights, month == 1, day == 5)

# how many records meeting condition? using comparisons
# use nrow()
nrow(filter(flights, month == 1, day == 5))

# this breaks, with helpful error msg:
filter(flights, month = 1, day = 5)

# filtering on air_time: logical operator: or
filter(flights, air_time < 700 | air_time > 1500)

## TRY FOR YOURSELF ##
# 1) Filter the flights data using multiple conditions
#    Print the results to verify they make sense

# does the output make sense?
filter(flights, air_time < 700 & air_time > 1500)

# where day matches value in a list
filter(flights, day %in% c(4,5))

# Quick reminder that array-based indexing starts at position 1
# can pull out this object to study:
lst <- c(4,5)

# what happens when you do this?
lst[0]

# now try:
lst[1]

## arrange(): used to order 
arrange(flights, arr_time, sched_arr_time)

## select(): used to select columns
select(flights, year, month, arr_time, sched_arr_time)

# try selecting on a column that doesn't exist! you get a helpful error msg
select(flights, yr, month, arr_time, sched_arr_time)

## mutate(): used to add new variables
# let's assign result to new df

df_hours <- mutate(flights, hours = air_time / 60)
View(df_hours)

## TRY FOR YOURSELF ##
# 2) Write an example using each of: arrange(), select(), mutate()
#    Print the results to verify they make sense


## summarize(): used to summarize by group
# useful when paired with group_by() to form groups within df

# compute mean departure delay by year, month
# NOTE:  na.rm = TRUE removes missings (NA)

by_month <- group_by(flights, year, month)
summarize(by_month, delay = mean(dep_delay, na.rm = TRUE))

## chaining operations with Pipe %>%

# given df, select columns and filter rows on criterion
flights %>%
  select(year, month, day, dep_delay) %>%
  filter(day %in% c(4,5))

# compute mean departure delay by year, month
flights %>%
  group_by(year, month) %>%
  summarize(mean_delay = mean(dep_delay, na.rm = T))

## TRY FOR YOURSELF ##
# 3) Rewrite your own chained operation using group_by() with summarize()
#    Print the results to verify they make sense

