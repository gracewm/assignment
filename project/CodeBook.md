## CodeBook for Getting and Cleaning Data Course Project

The original training and test data sets have 561 variables. After extracting the mean 
and standard deviation only for each measurement, 66 variables of 'features' data set
was formulated. The 66 variable names are as follows:

   tBodyAcc-mean-X,
   tBodyAcc-mean-Y,
   tBodyAcc-mean-Z,
   tBodyAcc-std-X,
   tBodyAcc-std-Y,
   tBodyAcc-std-Z,
   tGravityAcc-mean-X,
   tGravityAcc-mean-Y,
   tGravityAcc-mean-Z,
   tGravityAcc-std-X,
   tGravityAcc-std-Y,
   tGravityAcc-std-Z,
   tBodyAccJerk-mean-X,
   tBodyAccJerk-mean-Y,
   tBodyAccJerk-mean-Z,
   tBodyAccJerk-std-X,
   tBodyAccJerk-std-Y,
   tBodyAccJerk-std-Z,
   tBodyGyro-mean-X,
   tBodyGyro-mean-Y,
   tBodyGyro-mean-Z,
   tBodyGyro-std-X,
   tBodyGyro-std-Y,
   tBodyGyro-std-Z,
   tBodyGyroJerk-mean-X,
   tBodyGyroJerk-mean-Y,
   tBodyGyroJerk-mean-Z,
   tBodyGyroJerk-std-X,
   tBodyGyroJerk-std-Y,
   tBodyGyroJerk-std-Z,
   tBodyAccMag-mean,
   tBodyAccMag-std,
   tGravityAccMag-mean,
   tGravityAccMag-std,
   tBodyAccJerkMag-mean,
   tBodyAccJerkMag-std,
   tBodyGyroMag-mean,
   tBodyGyroMag-std,
   tBodyGyroJerkMag-mean,
   tBodyGyroJerkMag-std,
   fBodyAcc-mean-X,
   fBodyAcc-mean-Y,
   fBodyAcc-mean-Z,
   fBodyAcc-std-X,
   fBodyAcc-std-Y,
   fBodyAcc-std-Z,
   fBodyAccJerk-mean-X,
   fBodyAccJerk-mean-Y,
   fBodyAccJerk-mean-Z,
   fBodyAccJerk-std-X,
   fBodyAccJerk-std-Y,
   fBodyAccJerk-std-Z,
   fBodyGyro-mean-X,
   fBodyGyro-mean-Y,
   fBodyGyro-mean-Z,
   fBodyGyro-std-X,
   fBodyGyro-std-Y,
   fBodyGyro-std-Z,
   fBodyAccMag-mean,
   fBodyAccMag-std,
   fBodyAccJerkMag-mean,
   fBodyAccJerkMag-std,
   fBodyGyroMag-mean,
   fBodyGyroMag-std,
   fBodyGyroJerkMag-mean,
   fBodyGyroJerkMag-std

After merging subject, activity, and features data sets, a new data set, allData was
formulated with 68 variables. The 68 variable names are added as column names to
the data set.  The tidy data set (finalData) was formulated from allData with the
average of each variable for each activity and each subject.

allData has 10299 obs. of  68 variables, while finalData has 180 obs. of 68 variables.
 



