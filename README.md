Peer-graded Assignment: Getting and Cleaning Data Course Project

This project produces the following four files:

(1) "README.md" is the document you are reading now.

(2) "CodeBook.md" is a code book that describes the variables, the data, and any transformations or work that are performed to clean up the data.

(3) "tidy_data.txt" is the generated tidy data set with the average of each variable for each activity and each subject.

(4) "run_analysis.R" contains all 5 steps, which were described in Peer-graded Assignment:

Merges the training and the test sets to create one data set.

This project creates an R script called "run_analysis.R" that performs the following steps:

(1) Merges the training and the test sets to create one data set.

(2) Extracts only the measurements on the mean and standard deviation for each measurement.

(3) Uses descriptive activity names to name the activities in the data set

(4) Labels the data set with descriptive variable names.

(5) Creates a tidy data set, called tidy_data.txt, with the average of each variable for each activity and each subject.

The following source data files are to be placed in the working directory where the "run_analysis.R" is being run:

features.txt: List of all features.
activity_labels.txt: Links the class labels with their activity name.
X_train.txt: Training set.
y_train.txt: Training labels.
X_test.txt: Test set.
y_test.txt: Test labels.
subject_train.txt: Subject of the train set
subject_test.txt: Subject of the test set  