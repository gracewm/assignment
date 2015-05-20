# Read and merge the feature acitivities data sets
feature1 <- read.table("./HAR/test/x_test.txt")
feature2 <- read.table("./HAR/train/x_train.txt")
mdata <- rbind(feature1, feature2)

# Extract the mean and standard deviation for each measurement
# A total of 66 columns of data were extracted and combined.
     
    mdata <-  c(mdata[,1], mdata[,2], mdata[,3], mdata[,4], mdata[,5], mdata[,6], mdata[,41], mdata[,42], mdata[,43],
        	      mdata[,44], mdata[,45], mdata[,46], mdata[,81], mdata[,82], mdata[,83], mdata[,84], mdata[,85], mdata[,86], mdata[,121],
                   mdata[,122], mdata[,123], mdata[,124], mdata[,125], mdata[,126], mdata[,161], mdata[,162], mdata[,163], mdata[,164],
                   mdata[,165], mdata[,166], mdata[,201], mdata[,202], mdata[,214], mdata[,215], mdata[,227], mdata[,228], mdata[,240], 
                   mdata[,241], mdata[,253], mdata[,254], mdata[,266], mdata[,267], mdata[,268], mdata[,269], mdata[,270], mdata[,271],
                   mdata[,345], mdata[,346], mdata[,347], mdata[,348], mdata[,349], mdata[,350], mdata[,424], mdata[,425], mdata[,426], 
                   mdata[,427], mdata[,428], mdata[,429], mdata[,503], mdata[,504], mdata[,516], mdata[,517], mdata[,529], mdata[,530], 
                   mdata[,542], mdata[,543])

# convert mdata to a matrix for adding column names
   mdata <- matrix(mdata, ncol = 66)
   
# Add column names
   colnames(mdata) <- c("tBodyAcc-mean-X", "tBodyAcc-mean-Y", "tBodyAcc-mean-Z", "tBodyAcc-std-X", "tBodyAcc-std-Y", "tBodyAcc-std-Z",
                                 "tGravityAcc-mean-X", "tGravityAcc-mean-Y", "tGravityAcc-mean-Z", "tGravityAcc-std-X", "tGravityAcc-std-Y",
		       "tGravityAcc-std-Z", "tBodyAccJerk-mean-X", "tBodyAccJerk-mean-Y", "tBodyAccJerk-mean-Z",
		       "tBodyAccJerk-std-X", "tBodyAccJerk-std-Y", "tBodyAccJerk-std-Z", "tBodyGyro-mean-X",
		       "tBodyGyro-mean-Y", "tBodyGyro-mean-Z", "tBodyGyro-std-X", "tBodyGyro-std-Y", "tBodyGyro-std-Z", 
		       "tBodyGyroJerk-mean-X", "tBodyGyroJerk-mean-Y", "tBodyGyroJerk-mean-Z", "tBodyGyroJerk-std-X", "tBodyGyroJerk-std-Y",
		       "tBodyGyroJerk-std-Z", "tBodyAccMag-mean", "tBodyAccMag-std", "tGravityAccMag-mean", "tGravityAccMag-std",
		       "tBodyAccJerkMag-mean", "tBodyAccJerkMag-std", "tBodyGyroMag-mean", "tBodyGyroMag-std", "tBodyGyroJerkMag-mean",
		       "tBodyGyroJerkMag-std", "fBodyAcc-mean-X", "fBodyAcc-mean-Y", "fBodyAcc-mean-Z", "fBodyAcc-std-X", "fBodyAcc-std-Y",
		       "fBodyAcc-std-Z", "fBodyAccJerk-mean-X", "fBodyAccJerk-mean-Y", "fBodyAccJerk-mean-Z", "fBodyAccJerk-std-X",
		       "fBodyAccJerk-std-Y", "fBodyAccJerk-std-Z", "fBodyGyro-mean-X", "fBodyGyro-mean-Y", "fBodyGyro-mean-Z",
		       "fBodyGyro-std-X", "fBodyGyro-std-Y", "fBodyGyro-std-Z", "fBodyAccMag-mean", "fBodyAccMag-std", 
		       "fBodyAccJerkMag-mean", "fBodyAccJerkMag-std", "fBodyGyroMag-mean", "fBodyGyroMag-std", "fBodyGyroJerkMag-mean",
		       "fBodyGyroJerkMag-std")

# rename mdata to features
features <- mdata

#read and merge the subject data sets
subject1 <- read.table("./HAR/test/subject_test.txt")
subject2 <- read.table("./HAR/train/subject_train.txt")
subject <- rbind(subject1, subject2)

# Add column name
colnames(subject) <- "subject"

# read and merge the activity data sets
activity1 <- read.table("./HAR/test/y_test.txt")
activity2 <- read.table("./HAR/train/y_train.txt")
activity <- rbind(activity1, activity2)

# Add column name
colnames(activity) <- "activity"

# Merge all data sets 
# Result: 10299 obs. of  68 variables
allData <- cbind(subject, activity, features)

# Load plyr package 
# Get the mean for each activity and each subject by using ddply() function
# Result: 180 obs. of  68 variables
library(plyr)
finalData <- ddply(allData, c(.(subject), .(activity)), numcolwise(mean))

# Write a txt file
write.table(finalData, file = "./HAR/finalData.txt", sep = " ",  row.names=FALSE)








