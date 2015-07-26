# Script 6
# file: 6_save_results.R
# Save the two data frames created before in two files in the directory "Results" (the directory will be created if it does not exist):
# data frame "data.1.df" ==> file name "DataSet1.txt"
# data frame "data.2.df" ==> file name "DataSet2.txt"


if (!file.exists("Results")) {
  dir.create("Results")
}

filePath1 <- "Results/DataSet1.txt"
filePath2 <- "Results/DataSet2.txt"

write.table(data.1.df, filePath1, row.name=FALSE)
write.table(data.2.df, filePath2, row.name=FALSE)
