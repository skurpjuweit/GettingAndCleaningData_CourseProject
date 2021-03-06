# Script 4
# file: 4_use_descriptive_variable_names.R
# Label the data set with descriptive variable names

# Assumption: Data has been stored in a data frame data.1.df

library(dplyr)

# The rename function (dplyr package) is used to rename all numbered variables in the data frame.
# The variables "Activity.Label" and "Subject.ID" are also contained in the data frame, but will not be renamed.
data.1.df <- rename(data.1.df, 
  tBodyAcc.mean.X = V1,
  tBodyAcc.mean.Y = V2,
  tBodyAcc.mean.Z = V3,
  tBodyAcc.std.X = V4,
  tBodyAcc.std.Y = V5,
  tBodyAcc.std.Z = V6,
  tGravityAcc.mean.X = V41,
  tGravityAcc.mean.Y = V42,
  tGravityAcc.mean.Z = V43,
  tGravityAcc.std.X = V44,
  tGravityAcc.std.Y = V45,
  tGravityAcc.std.Z = V46,
  tBodyAccJerk.mean.X = V81,
  tBodyAccJerk.mean.Y = V82,
  tBodyAccJerk.mean.Z = V83,
  tBodyAccJerk.std.X = V84,
  tBodyAccJerk.std.Y = V85,
  tBodyAccJerk.std.Z = V86,
  tBodyGyro.mean.X = V121,
  tBodyGyro.mean.Y = V122,
  tBodyGyro.mean.Z = V123,
  tBodyGyro.std.X = V124,
  tBodyGyro.std.Y = V125,
  tBodyGyro.std.Z = V126,
  tBodyGyroJerk.mean.X = V161,
  tBodyGyroJerk.mean.Y = V162,
  tBodyGyroJerk.mean.Z = V163,
  tBodyGyroJerk.std.X = V164,
  tBodyGyroJerk.std.Y = V165,
  tBodyGyroJerk.std.Z = V166,
  tBodyAccMag.mean = V201,
  tBodyAccMag.std = V202,
  tGravityAccMag.mean = V214,
  tGravityAccMag.std = V215,
  tBodyAccJerkMag.mean = V227,
  tBodyAccJerkMag.std = V228,
  tBodyGyroMag.mean = V240,
  tBodyGyroMag.std = V241,
  tBodyGyroJerkMag.mean = V253,
  tBodyGyroJerkMag.std = V254,
  fBodyAcc.mean.X = V266,
  fBodyAcc.mean.Y = V267,
  fBodyAcc.mean.Z = V268,
  fBodyAcc.std.X = V269,
  fBodyAcc.std.Y = V270,
  fBodyAcc.std.Z = V271,
  fBodyAccJerk.mean.X = V345,
  fBodyAccJerk.mean.Y = V346,
  fBodyAccJerk.mean.Z = V347,
  fBodyAccJerk.std.X = V348,
  fBodyAccJerk.std.Y = V349,
  fBodyAccJerk.std.Z = V350,
  fBodyGyro.mean.X = V424,
  fBodyGyro.mean.Y = V425,
  fBodyGyro.mean.Z = V426,
  fBodyGyro.std.X = V427,
  fBodyGyro.std.Y = V428,
  fBodyGyro.std.Z = V429,
  fBodyAccMag.mean = V503,
  fBodyAccMag.std = V504,
  fBodyBodyAccJerkMag.mean = V516,
  fBodyBodyAccJerkMag.std = V517,
  fBodyBodyGyroMag.mean = V529,
  fBodyBodyGyroMag.std = V530,
  fBodyBodyGyroJerkMag.mean = V542,
  fBodyBodyGyroJerkMag.std = V543
)
