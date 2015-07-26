# Script 1
# file: 1_merge_data_sets.R
# Merges the training and the test sets to create one data set
# The activity label and the subject ID are added in separate columns
# The result is stored in a data frame: data.1.df

# Assumption: Data has been downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# and has been unzipped into the working directory


# LOAD TEST DATA SET

# Read fixed width format. Each line contains 561 variables with 15 characters each
# Create a data frame containing the test data set
width <- rep(16, 561)
test.X.df <- read.fwf("UCI HAR Dataset/test/X_test.txt", width = width)
test.df <- test.X.df

# Read the file containing the activity label and add values in a new column "Activity.Label" to the test data frame
test.Y.df <- read.table("UCI HAR Dataset/test/Y_test.txt")
test.df$Activity.Label <- test.Y.df$V1

# Read the file containing the subject identifier and add values in a new column "Subject.ID" to the test data frame
subject.test.df <- read.table("UCI HAR Dataset/test/subject_test.txt")
test.df$Subject.ID <- subject.test.df$V1


# LOAD TRAIN DATA SET

# Read fixed width format. Each line contains 561 variables with 15 characters each
# Create a data frame containing the train data set
train.X.df <- read.fwf("UCI HAR Dataset/train/X_train.txt", width = width)
train.df <- train.X.df

# Read the file containing the activity label and add values in a new column "Activity.Label" to the train data frame
train.Y.df <- read.table("UCI HAR Dataset/train/Y_train.txt")
train.df$Activity.Label <- train.Y.df$V1

# Read the file containing the subject identifier and add values in a new column "Subject.ID" to the train data frame
subject.train.df <- read.table("UCI HAR Dataset/train/subject_train.txt")
train.df$Subject.ID <- subject.train.df$V1


# CONCATENATE THE TEST AND THE TRAIN DATA SET

data.1.df <- rbind(test.df, train.df)
