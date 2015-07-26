# Script 5
# file: 5_create_average_for_each_activity_and_subject.R
# Creates an independent tidy data set with the average of each variable for each activity and each subject
# The result is stored in a data frame: data.2.df

# Create the empty result data set
data.2.df <- data.frame()

# Create two empty columns, which will be filled during the for loops below
subject.column <- vector()
activity.column <- vector()

# Create a set of subject IDs and a set of activity labels to be looped over
# To extract all unique values, the columns are transleted into a factor, from which all labels are extracted
subject.list = levels(factor(tmp.df$Subject.ID))
activity.list = levels(factor(tmp.df$Activity.Label))

# Two nested for loops to loop over all subject IDs (outer loop) and all activity labels (inner loop)
for (this.subject in subject.list) {
  for (this.activity in activity.list) {
    
    # A subset of the original data frame is created. It contains all rows for the current subject ID and the currentr activity label
    # Only the numeric rows are extracted (columns 1-66) - exclusing the subject ID and the activity label
    this.df <- data.1.df[(data.1.df$Activity.Label == this.activity & data.1.df$Subject.ID == this.subject), 1:66]
    
    # Calculate the mean values of all columns
    new.row = colMeans(this.df)
    
    # Add the mean values of the current subject ID and activity label to the result data frame
    data.2.df <- rbind(data.2.df, new.row)
    
    # Build up a column of subject IDs and activity labels. These column will be added to the data frame after the for loops
    subject.column <- c(subject.column, this.subject)
    activity.column <- c(activity.column, this.activity)
  }
}

# Assign meaningful column names to the new data frame. The column names can be taken from the original data frame.
colnames(data.2.df) <- names(data.1.df)[1:66]

# Add the two columns for activity label and subject ID to the new data frame
data.2.df$Activity.Label <- activity.column
data.2.df$Subject.ID <- subject.column
