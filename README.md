#Read Me File for the Course Project of Andreas#

Author/student: Andreas von Ballmoos
Course: Getting and Cleaning Data, December 2014

##Assignment##
- The assignement is as follows
	"You should create one R script called run_analysis.R that does the following. 
    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names. 
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."
- The course project is based on these data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
- My solution contains these files
	- ReadMe
	- Code book
	- R Script

##Prerequisits##
- Create a directory on the local harddisk for the course project
- Download the test data, unzip them and there will we a directory "UCI HAR Dataset". This is the working directory for the script.
- Create an empty file "run_analysis.R" in "UCI HAR Dataset" 
- Create an empty file README.md and codebook.md
- Analyze the given data
	- Read the ReadMe file
	- Overview of the data sets provided, explored in Notepad++
		- features.txt: A table of IDs and the features, [561,2], no header line
		- features_info.txt: Information on the features, no data 
		- activity_labels.txt: A table of IDs and the activities, [6,2], no header line
		- /test/subject_test.txt: A list of the subjects' ID, [2946,1], no header line
		- /test/X_test.txt: Measurements made, [2946,561], no header line
		- /test/y_test.txt: activities with values 1 to 6,  [2946,1], no header line
		- /train/subject_test.txt: A list of the subjects' ID, [7352,1], no header line
		- /train/X_train.txt: Measurements made, [7352,561], no header line
		- /train/y_train.txt: activities with values 1 to 6,  [7352,1], no header line
		
##Step 1: Merge the data sets##
- test: I create a table of 2947 lines, no header line, column 1 is subject ID (1 to 30), column 2 is activity ID (1 to 6), columns 3 - 563 are measurements
- train: I create a table of 7352 lines, no header line, column 1 is subject ID (1 to 30), column 2 is activity ID (1 to 6), columns 3 - 563 are measurements
- after merging, I will have a table of 10299 lines and 564 columns, no header line
	
##Step 2: Extract the measurements on the mean and standard deviation##
- Now I need to look at the features!
- Get a logical vector of the columns that contain "mean" or "std" caseinsensitively, not regarding at their specific meaning. I know there are different opinions from the discussion forums, but as we say here "Better one too much than one too few".
- Apply the logical vector to the columns to get only the wanted columns, should be [10299, 2 + #matching columns]
	
##Step 3: Add activity names to name the activities in the data set##
- We are to change the values of the activity column (column 2, merged_total2$V1.1) based on the activity_labels.txt mapping
- There's an approach mentioned in the discussion forum to "adjusting factor levels" (there are just 6). To learn this technique and because it sounds more straightforward than to build apply/loops constructions, I will try this.
- I found an instruction how to do it on http://www.cookbook-r.com/Manipulating_data/Renaming_levels_of_a_factor/
	
##Step 4: Label the data set with descriptive variable names##
- We are to change the columns names from V1, V1.1, V1.2, V2,... to something that describes what the variable is.
- I know that the first columns are subjectid and activity. They are followed by the 86 columns I found before.
- While trying out the regexpr function in step 2 I actually had the list of variable names, now I can re-use this command
- So I am going to create a vector of column names and apply it to merged_total2
- To avoid any potential problems, I changed the variables based on ideas from discussion forums: I converted them to lower case and removed special characters
- Check if the variable names are unique. Compare the length of the vectors features2 and unique(features2). Both are 86. OK
- To have the last version of the variables' names available for the code book, I write them to a text file

##Step 5: Create data set with the average of each variable for each activity and each subject##
- We need to calculate the mean in each column for the combinations of subjectid and activity. This will result in a data frame of 30*6=180 lines and the original 86 variables (and the 2 leading columns)
- Write the data to a file using write.table() with row.name=FALSE. This script creates a filed called "course_project_result.txt".

##How to run the script##
To run the script
- make sure the directory "UCI HAR Dataset" is your working directory
- the package "reshape2" needs to be installed and loaded
- source the run_analysis.R script
- start it by callling the function run_analysis()
	
