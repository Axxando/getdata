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