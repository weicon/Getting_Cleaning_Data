# Peer Graded Assignment: Getting and Cleaning Data Course Project
# This script requires dplyr package
# 1. Read in all the data files
# 2. Merged train and test data files together
# 3. Extract the mean and standard deviation features
# 4. Uses descriptive activity names to name the activities in the data set
# 5. Labels the data set with descriptive variable names
# 6. Combine all variables data together
# 7. Create a tidy data set with the average of each variable for each activity and each subject.

# load dplyr package
library(dplyr)

x_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
s_train <- read.table("subject_train.txt")

x_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
s_test <- read.table("subject_test.txt")

# 1. Merges the training and the test sets to create one data set.
merged_x <- rbind(x_train, x_test)
merged_y <- rbind(y_train, y_test)
merged_s <- rbind(s_train, s_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# load the features
features_list <- read.table("features.txt")

# get mean and standard deviation features
mean_std_features <- grep("-(mean|std)\\(\\)", features_list[, "V2"])

mean_std_x <- select(merged_x, mean_std_features)
names(mean_std_x) <- features_list[mean_std_features, "V2"]

# 3. Uses descriptive activity names to name the activities in the data set
activity_names <- read.table("activity_labels.txt")
merged_y[,1] = activity_names[merged_y[,1], "V2"]

# 4. Appropriately labels the data set with descriptive variable names.
names(merged_y) = c("Activity")
names(merged_s) = c("Subject")

# Combine all variables data together
all_data <- cbind(merged_s, merged_y, mean_std_x)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy_data_gby <- group_by(all_data, Subject, Activity)
tidy_data_sum <- summarise_all(tidy_data_gby, funs(mean))

# Write out the resultant tidy data to a file
write.table(tidy_data_sum, "tidy_data.txt", row.name=FALSE)