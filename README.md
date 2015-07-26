# This projects contains the solution to the Getting and Cleaning Data Course Project.

The solution consists of 7 R scripts. Entry point for executing the data transformation is the script "run_analysis.R". It calls all other scripts.

Precondition: Data has to be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and has been unzipped into the working directory.

## Script 0: run_analysis.R
This script calls all other scripts required for performing the data transformation.

## Script 1: 1_merge_data_sets.R
This script merges the training and the test sets to create one combined data set. The activity label and the subject ID are added in separate columns. The result is stored in a data frame: data.1.df.

## Script 2: 2_extract_mean_and_standard_deviation.R
This script creates a subset of the data frame. The subset contains all mean and standard deviation variables for each measurement. Also the activity label and the subject ID are kept in the data frame.

## Script 3: 3_use_descriptive_activity_names.R
This script introduces descriptive activity labels to name the activities in the data set.

## Script 4: 4_use_descriptive_variable_names.R 
This script introduces descriptive variable names to label the data set.

## Script 5: 5_create_average_for_each_activity_and_subject.R
This script creates an independent tidy data set with the average of each variable for each activity and each subject. The result is stored in a separate data frame: data.2.df.

## Script 6: 6_save_results.R
This script saves the two data frames created before in two files in the directory "Results". (The directory is created if it does not exist):
- data frame "data.1.df" ==> file name "DataSet1.txt"
- data frame "data.2.df" ==> file name "DataSet2.txt"

## Result
When all scripts are executed, two data frames and two corresponding files are created:
- Data frame "data.1.df" / file "DataSet1.txt": full data set with 10299 observations of 68 variables (result of steps 1-4 of the Course Project)
- Data frame "data.2.df" / file "DataSet2.txt": data set with average of each variable for each activity and each subject, 180 observations of 68 variables (result of step 5 of the Course Project)

The 68 observations include 66 measurement variables plus the activity label and the subject ID.
The 180 observations contain average measurement values for 30 subjects with 6 activities each (6 * 30 = 180).

