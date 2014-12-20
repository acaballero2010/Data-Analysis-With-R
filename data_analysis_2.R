# Learning R Basics
# Data Manipulation
# Retrieving Contents from Data Frames
# Credit: Gaston Sanchez

attach(airquality)
View(airquality)

## Quick inspection of data frame
# structure
str(airquality)

# First n rows
head(airquality, n=10)

# Last n rows
tail(airquality, n=10)

## Retriving elements via Index Values
airquality[1,1]
airquality[1:5, 4:6]

# Various adjacent cells (permuted order)
airquality[5:1, 6:4]

# Non-ajacent cells
airquality[c(1,50,100), c(3,5)]

## Retrieving cells (excluding indices)
# Sample
df[-2,-2]

airquality[-c(1,50,100), -c(3,5)]

## Retrieving rows via Index Values
airquality[1, ]

# rows 1, 3, 5, 7
airquality[c(1,3,5,7), ]

## Retrieving columns via Index Values
# first column
airquality[ ,1]

# columns from 1 to 3
airquality[ ,1:3]

# columns 2, 4, 6
airquality[ ,c(2,4,6)]

## Retrieving Columns via names
# columns Ozone
airquality[ ,"Ozone"]

# columns Wind and Temp
airquality[ ,c("Wind", "Temp")]

## Selecting one column using $ (dollar symbol)
# df$name

# getting column Ozone
airquality$Ozone

## Selecting one column using list's syntax
# df[[j]]

# getting first column
airquality[[1]]

# column Wind
airquality[["Wind"]]

## Accesing columns with list syntax
airquality["Ozone"]

## Argument drop when selecting one column
# df[i,j,drop=T/F]

# Sample
airquality[ ,1,drop = FALSE]


## Retieving rows via Logical indexing
# getting records with month 5
airquality[airquality$Month == 5, ]

# records of 1st May of Month
airquality[airquality$Day == 1, ]

# vector matching odd numbers
odds = rep(c(TRUE, FALSE), length = nrow(airquality))

# odd rows
airquality[odds, ]

airquality[!odds, ]

# look for these names
these = c('Day', 'Wind', 'Rain', 'Temp', 'XY', 'Snow')
these

# query logical selection
Q = names(airquality) %in% these

# selecting corresponding columns
airquality[ ,Q]

# logical vector
cols3 = c(rep(TRUE, 3), rep(FALSE, 3))

# first 3 columns
airquality[ ,cols3]

# last 3 columns
airquality[ ,!cols3]

## SELECTING ELEMENTS THROUGH SUBSETTING
## function subset()
## syntax: 
## subset(df, subset, select, drop=FALSE)

# Retrieving subsets
# rows with month 5
subset(airquality, Month == 5)

# high ozone records
subset(airquality, Ozone > 100)

# multiple conditions
subset(airquality, Month == 8 & Ozone > 100)

# missing ozone records in month 7
subset(airquality, is.na(Ozone) & Month == 7)

## Subsetting with specific columns
# selecting Wind and Temp
subset(airquality, Month == 5, select = c(Wind, Temp))

## Subsetting with multiple conditions and columns
# complex conditions excluding Wind
subset(airquality, 
       (Month == 5 | Month == 7) & (Temp > 70 & Temp <= 80),
       select = -c(Wind))

# exluding Wind and Temp
subset(airquality, 
       Month != 8 & Ozone < 10,
       select = -c(Wind, Temp))

# selecting from Wind to Day
subset(airquality,
       Month != 8 & Ozone < 10,
       select = Wind:Day)

##  SPLITTING ROWS
# function split()
# split(df, group, drop = FALSE)

# splitting rows by Month
split(airquality, Month)






