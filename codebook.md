#Code Book for Andreas's Course Project#

Author/student: Andreas von Ballmoos
Course: Getting and Cleaning Data, Coursera December 2014

##Notes##
- This analysis is based on the data https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip that are from a study you find on http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
- The course project was mainly to prove knowledge on getting, manipulating and cleaning data. The students do NOT have any further insight into the original study.
- The result of our course project is a data table that calculates the mean on the measurements for every subject/activity combination.

##Variables##
- subject_id: The ID of the subject (range from 1 to 30) that were in the original study
- activity: The activity that was carried out during the study is a factor of 6 levels
- Further variables: They are a subset of the original data set. The variable names have been modified (removed special characters) to avoid processing risks, but are still clearly mappable to the original names. For further information on what a particular variable means, please refer to the original study. The measurements are normalized and bounded within [-1,1]
- For the sake of completeness I list the "further variables" names: 

ORIGINAL NAME - MODIFIED NAME
subjectid - subjectid
activity - activity
tBodyAcc-mean()-X - tbodyaccmeanx
tBodyAcc-mean()-Y - tbodyaccmeany
tBodyAcc-mean()-Z - tbodyaccmeanz
tBodyAcc-std()-X - tbodyaccstdx
tBodyAcc-std()-Y - tbodyaccstdy
tBodyAcc-std()-Z - tbodyaccstdz
tGravityAcc-mean()-X - tgravityaccmeanx
tGravityAcc-mean()-Y - tgravityaccmeany
tGravityAcc-mean()-Z - tgravityaccmeanz
tGravityAcc-std()-X - tgravityaccstdx
tGravityAcc-std()-Y - tgravityaccstdy
tGravityAcc-std()-Z - tgravityaccstdz
tBodyAccJerk-mean()-X - tbodyaccjerkmeanx
tBodyAccJerk-mean()-Y - tbodyaccjerkmeany
tBodyAccJerk-mean()-Z - tbodyaccjerkmeanz
tBodyAccJerk-std()-X - tbodyaccjerkstdx
tBodyAccJerk-std()-Y - tbodyaccjerkstdy
tBodyAccJerk-std()-Z - tbodyaccjerkstdz
tBodyGyro-mean()-X - tbodygyromeanx
tBodyGyro-mean()-Y - tbodygyromeany
tBodyGyro-mean()-Z - tbodygyromeanz
tBodyGyro-std()-X - tbodygyrostdx
tBodyGyro-std()-Y - tbodygyrostdy
tBodyGyro-std()-Z - tbodygyrostdz
tBodyGyroJerk-mean()-X - tbodygyrojerkmeanx
tBodyGyroJerk-mean()-Y - tbodygyrojerkmeany
tBodyGyroJerk-mean()-Z - tbodygyrojerkmeanz
tBodyGyroJerk-std()-X - tbodygyrojerkstdx
tBodyGyroJerk-std()-Y - tbodygyrojerkstdy
tBodyGyroJerk-std()-Z - tbodygyrojerkstdz
tBodyAccMag-mean() - tbodyaccmagmean
tBodyAccMag-std() - tbodyaccmagstd
tGravityAccMag-mean() - tgravityaccmagmean
tGravityAccMag-std() - tgravityaccmagstd
tBodyAccJerkMag-mean() - tbodyaccjerkmagmean
tBodyAccJerkMag-std() - tbodyaccjerkmagstd
tBodyGyroMag-mean() - tbodygyromagmean
tBodyGyroMag-std() - tbodygyromagstd
tBodyGyroJerkMag-mean() - tbodygyrojerkmagmean
tBodyGyroJerkMag-std() - tbodygyrojerkmagstd
fBodyAcc-mean()-X - fbodyaccmeanx
fBodyAcc-mean()-Y - fbodyaccmeany
fBodyAcc-mean()-Z - fbodyaccmeanz
fBodyAcc-std()-X - fbodyaccstdx
fBodyAcc-std()-Y - fbodyaccstdy
fBodyAcc-std()-Z - fbodyaccstdz
fBodyAcc-meanFreq()-X - fbodyaccmeanfreqx
fBodyAcc-meanFreq()-Y - fbodyaccmeanfreqy
fBodyAcc-meanFreq()-Z - fbodyaccmeanfreqz
fBodyAccJerk-mean()-X - fbodyaccjerkmeanx
fBodyAccJerk-mean()-Y - fbodyaccjerkmeany
fBodyAccJerk-mean()-Z - fbodyaccjerkmeanz
fBodyAccJerk-std()-X - fbodyaccjerkstdx
fBodyAccJerk-std()-Y - fbodyaccjerkstdy
fBodyAccJerk-std()-Z - fbodyaccjerkstdz
fBodyAccJerk-meanFreq()-X - fbodyaccjerkmeanfreqx
fBodyAccJerk-meanFreq()-Y - fbodyaccjerkmeanfreqy
fBodyAccJerk-meanFreq()-Z - fbodyaccjerkmeanfreqz
fBodyGyro-mean()-X - fbodygyromeanx
fBodyGyro-mean()-Y - fbodygyromeany
fBodyGyro-mean()-Z - fbodygyromeanz
fBodyGyro-std()-X - fbodygyrostdx
fBodyGyro-std()-Y - fbodygyrostdy
fBodyGyro-std()-Z - fbodygyrostdz
fBodyGyro-meanFreq()-X - fbodygyromeanfreqx
fBodyGyro-meanFreq()-Y - fbodygyromeanfreqy
fBodyGyro-meanFreq()-Z - fbodygyromeanfreqz
fBodyAccMag-mean() - fbodyaccmagmean
fBodyAccMag-std() - fbodyaccmagstd
fBodyAccMag-meanFreq() - fbodyaccmagmeanfreq
fBodyBodyAccJerkMag-mean() - fbodybodyaccjerkmagmean
fBodyBodyAccJerkMag-std() - fbodybodyaccjerkmagstd
fBodyBodyAccJerkMag-meanFreq() - fbodybodyaccjerkmagmeanfreq
fBodyBodyGyroMag-mean() - fbodybodygyromagmean
fBodyBodyGyroMag-std() - fbodybodygyromagstd
fBodyBodyGyroMag-meanFreq() - fbodybodygyromagmeanfreq
fBodyBodyGyroJerkMag-mean() - fbodybodygyrojerkmagmean
fBodyBodyGyroJerkMag-std() - fbodybodygyrojerkmagstd
fBodyBodyGyroJerkMag-meanFreq() - fbodybodygyrojerkmagmeanfreq
angle(tBodyAccMean,gravity) - angletbodyaccmeangravity
angle(tBodyAccJerkMean),gravityMean) - angletbodyaccjerkmeangravitymean
angle(tBodyGyroMean,gravityMean) - angletbodygyromeangravitymean
angle(tBodyGyroJerkMean,gravityMean) - angletbodygyrojerkmeangravitymean
angle(X,gravityMean) - anglexgravitymean
angle(Y,gravityMean) - angleygravitymean
angle(Z,gravityMean) - anglezgravitymean
