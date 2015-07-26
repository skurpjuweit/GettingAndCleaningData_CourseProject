# Original Data Set
The original data set is downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. A description of the original data set can be found at Descriptions of variables in the original data set can be found in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

# Transformations
## Data Set 1
The following transformations are performed to clean the original data set:
- The test data set is loaded (X_test.txt).
- The activity labels (Y_test.txt) are added in a separate column (Activity.Label).
- The subject IDs (subject_test.txt) are loaded and added as a separae column (Subject.ID).
- The train data set is loaded (X_train.txt).
- The activity labels (Y_train.txt) are added in a separate column (Activity.Label).
- The subject IDs (subject_train.txt) are loaded and added as a separae column (Subject.ID).
- The test data set and the train data set are concatenated.
- Subset of the combined data set is created by selecting all columns containing mean and standard deviation variables (66 variables). Also the activitly labels and subject IDs are kept in the data set.
- The original activity labels (1-6) are replaces as follows:
  - 1 <- "WALKING"
  - 2 <- "WALKING_UPSTAIRS"
  - 3 <- "WALKING_DOWNSTAIRS"
  - 4 <- "SITTING"
  - 5 <- "STANDING"
  - 6 <- "LAYING"
- The variable names are replaced. Please see sections "Variables" below for a detailed overview of all variables.
## Data Set 2
Starting from data set 1 one the following transformations are performed:
- For each subject and each activity, the average values of all measurements (variables 1-66) are created.

# Variables
Descriptions of variables in the original data set can be found in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
- 1) tBodyAcc.mean.X: Corresponds to tBodyAcc-mean()-X in the original data set.
- 2) tBodyAcc.mean.Y: Corresponds to tBodyAcc-mean()-Y in the original data set.
- 3) tBodyAcc.mean.Z: Corresponds to tBodyAcc-mean()-Z in the original data set.
- 4) tBodyAcc.std.X: Corresponds to tBodyAcc-std()-X in the original data set.
- 5) tBodyAcc.std.Y: Corresponds to tBodyAcc-std()-Y in the original data set.
- 6) tBodyAcc.std.Z: Corresponds to tBodyAcc-std()-Z in the original data set.
- 7) tGravityAcc.mean.X: Corresponds to tGravityAcc-mean()-X in the original data set.
- 8) tGravityAcc.mean.Y: Corresponds to tGravityAcc-mean()-Y in the original data set.
- 9) tGravityAcc.mean.Z: Corresponds to tGravityAcc-mean()-Z in the original data set.
- 10) tGravityAcc.std.X: Corresponds to tGravityAcc-std()-X in the original data set.
- 11) tGravityAcc.std.Y: Corresponds to tGravityAcc-std()-Y in the original data set.
- 12) tGravityAcc.std.Z: Corresponds to tGravityAcc-std()-Z in the original data set.
- 13) tBodyAccJerk.mean.X: Corresponds to tBodyAccJerk-mean()-X in the original data set.
- 14) tBodyAccJerk.mean.Y: Corresponds to tBodyAccJerk-mean()-Y in the original data set.
- 15) tBodyAccJerk.mean.Z: Corresponds to tBodyAccJerk-mean()-Z in the original data set.
- 16) tBodyAccJerk.std.X: Corresponds to tBodyAccJerk-std()-X in the original data set.
- 17) tBodyAccJerk.std.Y: Corresponds to tBodyAccJerk-std()-Y in the original data set.
- 18) tBodyAccJerk.std.Z: Corresponds to tBodyAccJerk-std()-Z in the original data set.
- 19) tBodyGyro.mean.X: Corresponds to tBodyGyro-mean()-X in the original data set.
- 20) tBodyGyro.mean.Y: Corresponds to tBodyGyro-mean()-Y in the original data set.
- 21) tBodyGyro.mean.Z: Corresponds to tBodyGyro-mean()-Z in the original data set.
- 22) tBodyGyro.std.X: Corresponds to tBodyGyro-std()-X in the original data set.
- 23) tBodyGyro.std.Y: Corresponds to tBodyGyro-std()-Y in the original data set.
- 24) tBodyGyro.std.Z: Corresponds to tBodyGyro-std()-Z in the original data set.
- 25) tBodyGyroJerk.mean.X: Corresponds to tBodyGyroJerk-mean()-X in the original data set.
- 26) tBodyGyroJerk.mean.Y: Corresponds to tBodyGyroJerk-mean()-Y in the original data set.
- 27) tBodyGyroJerk.mean.Z: Corresponds to tBodyGyroJerk-mean()-Z in the original data set.
- 28) tBodyGyroJerk.std.X: Corresponds to tBodyGyroJerk-std()-X in the original data set.
- 29) tBodyGyroJerk.std.Y: Corresponds to tBodyGyroJerk-std()-Y in the original data set.
- 30) tBodyGyroJerk.std.Z: Corresponds to tBodyGyroJerk-std()-Z in the original data set.
- 31) tBodyAccMag.mean: Corresponds to tBodyAccMag-mean() in the original data set.
- 32) tBodyAccMag.std: Corresponds to tBodyAccMag-std() in the original data set.
- 33) tGravityAccMag.mean: Corresponds to tGravityAccMag-mean() in the original data set.
- 34) tGravityAccMag.std: Corresponds to tGravityAccMag-std() in the original data set.
- 35) tBodyAccJerkMag.mean: Corresponds to tBodyAccJerkMag-mean() in the original data set.
- 36) tBodyAccJerkMag.std: Corresponds to tBodyAccJerkMag-std() in the original data set.
- 37) tBodyGyroMag.mean: Corresponds to tBodyGyroMag-mean() in the original data set.
- 38) tBodyGyroMag.std: Corresponds to tBodyGyroMag-std() in the original data set.
- 39) tBodyGyroJerkMag.mean: Corresponds to tBodyGyroJerkMag-mean() in the original data set.
- 40) tBodyGyroJerkMag.std: Corresponds to tBodyGyroJerkMag-std() in the original data set.
- 41) fBodyAcc.mean.X: Corresponds to fBodyAcc-mean()-Y in the original data set.
- 42) fBodyAcc.mean.Y: Corresponds to fBodyAcc-mean()-Z in the original data set.
- 43) fBodyAcc.mean.Z: Corresponds to fBodyAcc-std()-X in the original data set.
- 44) fBodyAcc.std.X: Corresponds to fBodyAcc-std()-Y in the original data set.
- 45) fBodyAcc.std.Y: Corresponds to fBodyAcc-std()-Z in the original data set.
- 46) fBodyAcc.std.Z: Corresponds to fBodyAccJerk-mean()-X in the original data set.
- 47) fBodyAccJerk.mean.X: Corresponds to fBodyAccJerk-mean()-Y in the original data set.
- 48) fBodyAccJerk.mean.Y: Corresponds to fBodyAccJerk-mean()-Z in the original data set.
- 49) fBodyAccJerk.mean.Z: Corresponds to fBodyAccJerk-std()-X in the original data set.
- 50) fBodyAccJerk.std.X: Corresponds to fBodyAccJerk-std()-Y in the original data set.
- 51) fBodyAccJerk.std.Y: Corresponds to fBodyAccJerk-std()-Z in the original data set.
- 52) fBodyAccJerk.std.Z: Corresponds to fBodyGyro-mean()-X in the original data set.
- 53) fBodyGyro.mean.X: Corresponds to  in the original data set.
- 54) fBodyGyro.mean.Y: Corresponds to fBodyGyro-mean()-Y in the original data set.
- 55) fBodyGyro.mean.Z: Corresponds to fBodyGyro-mean()-Z in the original data set.
- 56) fBodyGyro.std.X: Corresponds to fBodyGyro-std()-X in the original data set.
- 57) fBodyGyro.std.Y: Corresponds to fBodyGyro-std()-Y in the original data set.
- 58) fBodyGyro.std.Z: Corresponds to fBodyGyro-std()-Z in the original data set.
- 59) fBodyAccMag.mean: Corresponds to fBodyAccMag-mean() in the original data set.
- 60) fBodyAccMag.std: Corresponds to fBodyAccMag-std() in the original data set.
- 61) fBodyBodyAccJerkMag.mean: Corresponds to fBodyBodyAccJerkMag-mean() in the original data set.
- 62) fBodyBodyAccJerkMag.std: Corresponds to fBodyBodyAccJerkMag-std() in the original data set.
- 63) fBodyBodyGyroMag.mean: Corresponds to fBodyBodyGyroMag-mean() in the original data set.
- 64) fBodyBodyGyroMag.std: Corresponds to fBodyBodyGyroMag-std() in the original data set.
- 65) fBodyBodyGyroJerkMag.mean: Corresponds to fBodyBodyGyroJerkMag-mean() in the original data set.
- 66) fBodyBodyGyroJerkMag.std: Corresponds to fBodyBodyGyroJerkMag-std() in the original data set.
- 67) Activity.Label:
  -- 1 <- "WALKING"
  -- 2 <- "WALKING_UPSTAIRS"
  -- 3 <- "WALKING_DOWNSTAIRS"
  -- 4 <- "SITTING"
  -- 5 <- "STANDING"
  -- 6 <- "LAYING"
- 68) Subject.ID: Number between 1 and 40 identifying the subject.

# Clean Data Set
Two data frames and two corresponding files are created:
- Data frame "data.1.df" / file "DataSet1.txt": full data set with 10299 observations of 68 variables (result of steps 1-4 of the Course Project)
- Data frame "data.2.df" / file "DataSet2.txt": data set with average of each variable for each activity and each subject, 180 observations of 68 variables (result of step 5 of the Course Project)

The 68 observations include 66 measurement variables plus the activity label and the subject ID.
The 180 observations contain average measurement values for 30 subjects with 6 activities each (6 * 30 = 180).
