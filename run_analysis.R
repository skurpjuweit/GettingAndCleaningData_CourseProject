# Script 0
# file: run_analysis.R
# This script calls all other scripts required for performing the data transformations.

# Result: When all scripts have been executed, two data frames and two corresponding files have been created:
# Data frame "data.1.df" / file "DataSet1.txt": full data set with 10299 observations of 68 variables (result of steps 1-4 of the Course Project)
# Data frame "data.2.df" / file "DataSet2.txt": data set with average of each variable for each activity and each subject, 180 observations of 68 variables (result of step 5 of the Course Project)
# The 68 observations include 66 measurement variables plus the activity label and the subject ID
# The 180 observations contain average measurement values for 30 subjects with 6 activities each (6 * 30 = 180)

# Assumption: Data has been downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# and has been unzipped into the working directory

# STEP 1
# Merges the training and the test sets to create one data set
# The activity label and the subject ID are added in separate columns
# The result is stored in a data frame: data.1.df
source("1_merge_data_sets.R")

# STEP 2
# Create a subset of the data frame to extract all measurements on the mean and standard deviation for each measurement
# Also the activity label and the subject ID are kept in the data frame
source("2_extract_mean_and_standard_deviation.R")

# STEP 3
# Use descriptive activity names to name the activities in the data set
source("3_use_descriptive_activity_names.R")

# STEP 4
# Label the data set with descriptive variable names
source("4_use_descriptive_variable_names.R")

# STEP 5
# Creates an independent tidy data set with the average of each variable for each activity and each subject
# The result is stored in a data frame: data.2.df
source("5_create_average_for_each_activity_and_subject.R")

# STEP 6
# Save the two data frames created before in two files in the directory "Results" (the directory will be created if it does not exist):
# data frame "data.1.df" ==> file name "DataSet1.txt"
# data frame "data.2.df" ==> file name "DataSet2.txt"
source("6_save_results.R")
