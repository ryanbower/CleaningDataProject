#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# File:     run_analysis.R
# Author:   Ryan Bower
# Date:     2014-07-14
# Purpose:  
#   A. Downloads the data
#   1. Merges the training and the test sets to create one data set.
#   2. Extracts only the measurements on the mean and standard deviation for 
#       each measurement. 
#   3. Uses descriptive activity names to name the activities in the data set
#   4. Appropriately labels the data set with descriptive variable names. 
#   5. Creates a second, independent tidy data set with the average of each 
#       variable for each activity and each subject.
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# A. Download the data

# A description of the data is located here:
#   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

# The data is located here:
#   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

setwd("~/Documents/Ryan Docs/Coursera/Data Cleaning")
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile="project-file.zip", method="curl")
unzip("project-file.zip", exdir="UCI HAR Dataset")

# First, load the training data:
train_labels <- read.table("./UCI Har Dataset/train/y_train.txt")
train_subjects <- read.table("./UCI Har Dataset/train/subject_train.txt")
x_train <- read.table("./UCI Har Dataset/train/X_train.txt")

# Now, load the test data:
test_labels <- read.table("./UCI Har Dataset/test/y_test.txt")
test_subjects <- read.table("./UCI Har Dataset/test/subject_test.txt")
x_test <- read.table("./UCI Har Dataset/test/X_test.txt")


# Before we merge, let's take a side-trip to finish task 4:
#   4. Appropriately labels the data set with descriptive variable names. 
# first, read the features:
features <- read.table("./UCI Har Dataset/features.txt")
# use regex to replace the () in the feature names...
#features$V2 <- gsub('(\\d\\d)','0\\1', df$Assay)
for (iter_features in 1:length(features$V2)) {
  colnames(x_test)[iter_features] <- toString(features$V2[iter_features])
  colnames(x_train)[iter_features] <- toString(features$V2[iter_features])
}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#   1. Merges the training and the test sets to create one data set.

colnames(test_labels)[1] <- "activity"
colnames(test_subjects)[1] <- "subject"
x_test <- cbind(test_labels, test_subjects, x_test)

colnames(train_labels)[1] <- "activity"
colnames(train_subjects)[1] <- "subject"
x_train <- cbind(train_labels, train_subjects, x_train)


# Now merge the datasets together
x_full <- rbind(x_train, x_test)


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#   2. Extracts only the measurements on the mean and standard deviation for 
#       each measurement. 

# We'll use one nasty step to retain the first to columns, then anything 
#    thereafter that includes "mean(" or "std("
full_filtered <- cbind(x_full[,1:2], x_full[,grep("*-mean\\(|-std\\(*", colnames(x_full))])

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#   3. Uses descriptive activity names to name the activities in the data set
# append names to activities from the dataset....
full_filtered$activity <- ifelse(full_filtered$activity == 1, "WALKING",
                          ifelse(full_filtered$activity == 2, "WALKING_UPSTAIRS",
                          ifelse(full_filtered$activity == 3, "WALKING_DOWNSTAIRS",
                          ifelse(full_filtered$activity == 4, "SITTING",
                          ifelse(full_filtered$activity == 5, "STANDING",
                          ifelse(full_filtered$activity == 6, "LAYING", "ERROR"))))))
table(full_filtered$activity)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#   5. Creates a second, independent tidy data set with the average of each 
#       variable for each activity and each subject.
length(full_filtered)
dplyr::glimpse(full_filtered)
full_filtered$activity <- as.factor(full_filtered$activity)
full_filtered$subject <- as.factor(full_filtered$subject)

library(reshape)
ff.melt <- melt(full_filtered, id.var = c("subject", "activity"))
ff.melt<-as.numeric(ff.melt$value)
dplyr::glimpse(ff.melt)
colnames(subj_stdevs)[1]
subj_means <- cast(ff.melt, subject+activity~variable, mean)
subj_stdevs <- cast(ff.melt,subject+activity~variable, sd)
dplyr::glimpse(subj_means)
dplyr::glimpse(subj_stdevs)

for (iterator in 3:length(subj_stdevs)) {
  colnames(subj_means)[iterator] <- paste("av_", colnames(subj_stdevs)[iterator], sep="")
  colnames(subj_stdevs)[iterator] <- paste("sd_", colnames(subj_stdevs)[iterator], sep="")
}

final_set <- merge(subj_means, subj_stdevs)
dplyr::glimpse(final_set)


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Finally, write the output:
write.table(final_set, "final_results.txt", quote=FALSE)


