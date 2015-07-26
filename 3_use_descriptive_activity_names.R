# Script 3
# file: 3_use_descriptive_activity_names.R
# Use descriptive activity names to name the activities in the data set

# Assumption: Data has been stored in a data frame data.1.df

# Replace each label with a descritive activity name
data.1.df$Activity.Label[data.1.df$Activity.Label == 1] <- "WALKING"
data.1.df$Activity.Label[data.1.df$Activity.Label == 2] <- "WALKING_UPSTAIRS"
data.1.df$Activity.Label[data.1.df$Activity.Label == 3] <- "WALKING_DOWNSTAIRS"
data.1.df$Activity.Label[data.1.df$Activity.Label == 4] <- "SITTING"
data.1.df$Activity.Label[data.1.df$Activity.Label == 5] <- "STANDING"
data.1.df$Activity.Label[data.1.df$Activity.Label == 6] <- "LAYING"
