# PART 1: Importing data

# In this project code scaffolding will only be given for functions that were not 
# explained in the prerequisite courses. Look at the hints if you need help.

# Load the packages
# .... YOUR CODE FOR TASK 1 ....
library(readr)
library(dplyr)
# Read in the data from the datasets folder
# .... YOUR CODE FOR TASK 1 ....
wwc_raw <- read_csv("datasets/2019_WWCFIFA_summary.csv")
# Check the dimensions and structure of the data
# .... YOUR CODE FOR TASK 1 ....
dim(wwc_raw)
class(wwc_raw)
glimpse(wwc_raw)
str(wwc_raw)
summary(wwc_raw)

# PART 2:  Importing data

# Read in the data specifying column types
library(readr)
library(dplyr)
wwc_raw <- read_csv("datasets/2019_WWCFIFA_summary.csv",
                  col_types = cols(
                                  Round = col_factor(),
                                  Date = col_date(format = "%m/%d/%y"),
                                  Venue = col_factor()
                                  )
                 )

# Look at the summary and structure of the data
# .... YOUR CODE FOR TASK 2 ....
glimpse(wwc_raw)
summary(wwc_raw)
# Print the dataset
# .... YOUR CODE FOR TASK 2 ....
wwc_raw

# PART 3: Removing rows of NA

# load the package
# .... YOUR CODE FOR TASK 2 ....
library(tidyr)

# Remove rows of NA
wwc_1  <- wwc_raw  %>% 
 rename_all(tolower)  %>% 
 filter(!is.na(round))
 # .... YOUR CODE FOR TASK 2 ....

# Get the dimensions and inspect the first 10 and last 10 rows
 # .... YOUR CODE FOR TASK 2 ....
dim(wwc_1)
head(wwc_1, 10)
tail(wwc_1, 10)
