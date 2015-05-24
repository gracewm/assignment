## CodeBook for Getting and Cleaning Data Course Project

The original training and test data sets have 561 variables. After extracting the mean 
and standard deviation only for each measurement, 66 variables of 'features' data set
was formulated. The 66 variable names are as follows:

 1. tBodyAcc-mean-X</br>
 2. tBodyAcc-mean-Y</br>
 3. tBodyAcc-mean-Z</br>
 4. tBodyAcc-std-X</br>
 5. tBodyAcc-std-Y</br>
 6. tBodyAcc-std-Z</br>
 7. tGravityAcc-mean-X</br>
 8  tGravityAcc-mean-Y</br>
 9. tGravityAcc-mean-Z</br>
10. tGravityAcc-std-X</br>
11. tGravityAcc-std-Y</br>
12. tGravityAcc-std-Z</br>
13. tBodyAccJerk-mean-X</br>
14. tBodyAccJerk-mean-Y</br>
15. tBodyAccJerk-mean-Z</br>
16. tBodyAccJerk-std-X</br>
17. tBodyAccJerk-std-Y</br>
18. tBodyAccJerk-std-Z</br>
19. tBodyGyro-mean-X</br>
20. tBodyGyro-mean-Y</br>
21. tBodyGyro-mean-Z</br>
22. tBodyGyro-std-X</br>
23. tBodyGyro-std-Y</br>
24. tBodyGyro-std-Z</br>
25. tBodyGyroJerk-mean-X</br>
26. tBodyGyroJerk-mean-Y</br>
27. tBodyGyroJerk-mean-Z</br>
28. tBodyGyroJerk-std-X</br>
29. tBodyGyroJerk-std-Y</br>
30. tBodyGyroJerk-std-Z</br>
31. tBodyAccMag-mean</br>
32. tBodyAccMag-std</br>
33. tGravityAccMag-mean</br>
34. tGravityAccMag-std</br>
35. tBodyAccJerkMag-mean</br>
36. tBodyAccJerkMag-std</br>
37. tBodyGyroMag-mean</br>
38. tBodyGyroMag-std</br>
39. tBodyGyroJerkMag-mean</br>
40. tBodyGyroJerkMag-std</br>
41. fBodyAcc-mean-X</br>
42. fBodyAcc-mean-Y</br>
43. fBodyAcc-mean-Z</br>
44. fBodyAcc-std-X</br>
45. fBodyAcc-std-Y</br>
46. fBodyAcc-std-Z</br>
47. fBodyAccJerk-mean-X</br>
48. fBodyAccJerk-mean-Y</br>
49. fBodyAccJerk-mean-Z</br>
50. fBodyAccJerk-std-X</br>
51. fBodyAccJerk-std-Y</br>
52. fBodyAccJerk-std-Z</br>
53. fBodyGyro-mean-X</br>
54. fBodyGyro-mean-Y</br>
55. fBodyGyro-mean-Z</br>
56. fBodyGyro-std-X</br>
57. fBodyGyro-std-Y</br>
58. fBodyGyro-std-Z</br>
59. fBodyAccMag-mean</br>
60. fBodyAccMag-std</br>
61. fBodyAccJerkMag-mean</br>
62. fBodyAccJerkMag-std</br>
63. fBodyGyroMag-mean</br>
64. fBodyGyroMag-std</br>
65. fBodyGyroJerkMag-mean</br>
66. fBodyGyroJerkMag-std

After merging subject, activity and features data sets, allData (a new data set) was
formulated with 68 variables. The 68 variables, including the variables for the activity
and subject data sets, are added as column names to the allData.

finalData (the tidy data set) was formulated from allData with the average of each
variable for each activity and each subject.

allData has 10299 obs. of  68 variables, while finalData has 180 obs. of 68 variables.
