#########################
# Week 1: quiz 1 
#########################

getwd()
setwd("/Users/gusahu/Google Drive/Online_courses/r_programming/rprogramming_coursera/week_1")

library(readr)
library(data.table)


x <- 4
class(x)

# What is the class of the object defined by the expression x <- c(4, "a", TRUE)?
x <- c(4, "a", TRUE)
class(x)  

# Question 6 If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression rbind(x, y)?
x <- c(1,3, 5)
y <- c(3, 2, 10)
z <-  rbind(x,y)
class(z)

# Suppose I have a list defined as x <- list(2, "a", "b", TRUE). What does x[[1]] give me? Select all that apply.
x <- list(2, "a", "b", TRUE)
x[[1]]

# Suppose I have a vector x <- 1:4 and a vector y <- 2. What is produced by the expression x + y?
x <- 1:4
y <- 2
z <- x + y
z

# Suppose I have a vector x <- c(17, 14, 4, 5, 13, 12, 10) and I want to set all elements of this vector that are greater than 10 to be equal to 4. What R code achieves this? Select all that apply.
x <- c(17, 14, 4, 5, 13, 12, 10)
x[x >= 11] <- 4
x

# Use the Week 1 Quiz Data Set to answer questions 11-20.
# In the dataset provided for this Quiz, 
# what are the column names of the dataset?

hw1 <- read_csv("hw1_data.csv")
names(hw1)

# Extract the first 2 rows of the data frame and print them to
# the console. What does the output look like?
head(hw1, 2)

# How many observations (i.e. rows) are in this data frame?
nrow(hw1)

# Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
tail(hw1, 2)

# What is the value of Ozone in the 47th row?

hw1[47, "Ozone"]

# How many missing values are in the Ozone column of this data frame?

subhw1 <- subset(hw1, is.na(Ozone))
nrow(subhw1)

# What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.

mean(hw1$Ozone, na.rm=TRUE) # returns 2

# also 
subhw1 <- subset(hw1, !is.na(Ozone), select = Ozone)
apply(subhw1, 2, mean) 

# Extract the subset of rows of the data frame where Ozone 
# values are above 31 and Temp values are above 90. 
# What is the mean of Solar.R in this subset?

subhw1 <- subset(hw1, hw1$Ozone > 31 & hw1$Temp > 90)
mean(subhw1$Solar.R)

# What is the mean of "Temp" when "Month" is equal to 6?
subhw1 <- subset(hw1, hw1$Month == 6)
mean(subhw1$Temp)

# What was the maximum ozone value in the month of May 
# (i.e. Month is equal to 5)?
subhw1 <- subset(hw1, hw1$Month == 5 & !is.na(Ozone))
max(subhw1$Ozone)









