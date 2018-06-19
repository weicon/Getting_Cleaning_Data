Peer Graded Assignment: Getting and Cleaning Data Course Project
This script requires dplyr package to be installed and loaded into R session

"run_analysis.R" performs the following 7 main steps:

1. Read in all the data files
2. Merged train and test data files together
3. Extract the mean and standard deviation features
4. Uses descriptive activity names to name the activities in the data set
5. Labels the data set with descriptive variable names
6. Combine all variables data together
7. Create a tidy data set with the average of each variable for each activity and each subject.

The original source data files used in this project:

features.txt: List of all features.
activity_labels.txt: Links the class labels with their activity name.
X_train.txt: Training set.
y_train.txt: Training labels.
X_test.txt: Test set.
y_test.txt: Test labels.
subject_train.txt: Subject of the train set
subject_test.txt: Subject of the test set  

Loaded data source tables:

x_train
y_train
x_test
y_test
s_train
s_test 

Merged data source tables:

merged_x is the result of merging train datasets
merged_y is the result of merging test datasets
merged_s is the result of merging subject datasets

features_list is a dataframe from features.txt file.
mean_std_features - is a new dataset, which has only average and standard deviation
activity_names contains the following six types of activity:
 
WALKING, 
WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, 
SITTING, 
STANDING, 
LAYING

These types of activity are mapped to merged_y data table

"mean_std_x" is the updated merged_x table with mean and standard deviation

"all_data" combines merged_x, merged_y and merged_s into one dataset using comlumn bind function.

"tidy_data_gby" and "tidy_data_sum" contain average data, grouped by "Subject" and "Activity".

The "tidy_data_sum" table is then used to generate the tidy final output data called "tidy_data.txt"

All selected mean and standard deviation features:
     "Subject"
     "Activity"
 [1] "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
 [3] "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"           
 [5] "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
 [7] "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"       
 [9] "tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"        
[11] "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"        
[13] "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
[15] "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"       
[17] "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
[19] "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"         
[21] "tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"          
[23] "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
[25] "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
[27] "tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"      
[29] "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
[31] "tBodyAccMag-mean()"          "tBodyAccMag-std()"          
[33] "tGravityAccMag-mean()"       "tGravityAccMag-std()"       
[35] "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"      
[37] "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"         
[39] "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"     
[41] "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[43] "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"           
[45] "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
[47] "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
[49] "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"       
[51] "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"       
[53] "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[55] "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"          
[57] "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
[59] "fBodyAccMag-mean()"          "fBodyAccMag-std()"          
[61] "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"  
[63] "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"     
[65] "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()" 

