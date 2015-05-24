## CodeBook for Getting and Cleaning Data Course Project

The original training and test data sets have 561 variables. After extracting the mean 
and standard deviation only for each measurement, 66 variables of 'features' data set
was formulated. The 66 variable names are as follows:

 tBodyAcc-mean-X</br>
 tBodyAcc-mean-Y</br>
 tBodyAcc-mean-Z</br>
 tBodyAcc-std-X</br>
 tBodyAcc-std-Y</br>
 tBodyAcc-std-Z</br>
 tGravityAcc-mean-X</br>
 tGravityAcc-mean-Y</br>
 tGravityAcc-mean-Z</br>
 tGravityAcc-std-X</br>
 tGravityAcc-std-Y</br>
 tGravityAcc-std-Z</br>
 tBodyAccJerk-mean-X</br>
 tBodyAccJerk-mean-Y</br>
 tBodyAccJerk-mean-Z</br>
 tBodyAccJerk-std-X</br>
 tBodyAccJerk-std-Y</br>
 tBodyAccJerk-std-Z</br>
 tBodyGyro-mean-X</br>
 tBodyGyro-mean-Y</br>
 tBodyGyro-mean-Z</br>
 tBodyGyro-std-X</br>
 tBodyGyro-std-Y</br>
 tBodyGyro-std-Z</br>
 tBodyGyroJerk-mean-X</br>
 tBodyGyroJerk-mean-Y</br>
 tBodyGyroJerk-mean-Z</br>
 tBodyGyroJerk-std-X</br>
 tBodyGyroJerk-std-Y</br>
 tBodyGyroJerk-std-Z</br>
 tBodyAccMag-mean</br>
 tBodyAccMag-std</br>
 tGravityAccMag-mean</br>
 tGravityAccMag-std</br>
 tBodyAccJerkMag-mean</br>
 tBodyAccJerkMag-std</br>
 tBodyGyroMag-mean</br>
 tBodyGyroMag-std</br>
 tBodyGyroJerkMag-mean</br>
 tBodyGyroJerkMag-std</br>
 fBodyAcc-mean-X</br>
 fBodyAcc-mean-Y</br>
 fBodyAcc-mean-Z</br>
 fBodyAcc-std-X</br>
 fBodyAcc-std-Y</br>
 fBodyAcc-std-Z</br>
 fBodyAccJerk-mean-X</br>
 fBodyAccJerk-mean-Y</br>
 fBodyAccJerk-mean-Z</br>
 fBodyAccJerk-std-X</br>
 fBodyAccJerk-std-Y</br>
 fBodyAccJerk-std-Z</br>
 fBodyGyro-mean-X</br>
 fBodyGyro-mean-Y</br>
 fBodyGyro-mean-Z</br>
 fBodyGyro-std-X</br>
 fBodyGyro-std-Y</br>
 fBodyGyro-std-Z</br>
 fBodyAccMag-mean</br>
 fBodyAccMag-std</br>
 fBodyAccJerkMag-mean</br>
 fBodyAccJerkMag-std</br>
 fBodyGyroMag-mean</br>
 fBodyGyroMag-std</br>
 fBodyGyroJerkMag-mean</br>
 fBodyGyroJerkMag-std

After merging subject, activity and features data sets, allData (a new data set) was
formulated with 68 variables.</br> The 68 variables, including the variables for the activity
and subject data sets, are added as column names to the allData.

finalData (the tidy data set) was formulated from allData with the average of each
variable for each activity and each subject.

allData has 10299 obs. of  68 variables, while finalData has 180 obs. of 68 variables.
