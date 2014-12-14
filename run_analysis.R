## This is the R script for the Course Project of
## Getting and Cleaning Data on Coursera, December 2014

# set my local path: setwd("C:\\Users\\Andreas\\Google Drive\\temp\\GettingCleaningData\\CourseProject\\UCI HAR Dataset")
run_analysis <- function() {
	# step 1: read in the data and merge them
	test_subjects <- read.csv("./test/subject_test.txt", header=F) # OK [2947,1]
	test_x_test <- read.csv("./test/X_test.txt", header=F, sep="", strip.white = T) # OK [2947,561]
	test_y_test <- read.csv("./test/y_test.txt", header=F) # OK [2947,1]
	merged_test <- cbind(test_subjects, test_y_test, test_x_test) # OK [2947,563]

	train_subjects <- read.csv("./train/subject_train.txt", header=F) # OK [7352,1]	
	train_x_train <- read.csv("./train/X_train.txt", header=F, sep="", strip.white = T) # OK [7352,561]	
	train_y_train <- read.csv("./train/y_train.txt", header=F) # OK [7352,1]
	merged_train <- cbind(train_subjects, train_y_train, train_x_train) # OK [7352,563]

	merged_total <- rbind(merged_test, merged_train) # OK [10299,563]

	# step 2: extract the wanted columns based on their labels
	features <- read.csv("./features.txt", sep=" ", header=F, stringsAsFactors=F) # OK [561,2]
	toMatch <- c("mean","std") 
	matches <- regexpr('mean|std',features[[2]], ignore.case=TRUE)!=-1 # 86 matches found. http://r.789695.n4.nabble.com/R-simple-q-returning-a-logical-vector-of-substring-matches-td816397.html
	merged_total2 <- merged_total[,matches] # [10299,88]

	# step 3: Replace activity ID's by activity names
	merged_total2$V1.1 <- factor(merged_total2$V1.1)
	levels(merged_total2$V1.1)[levels(merged_total2$V1.1)=="1"] <- "WALKING"
	levels(merged_total2$V1.1)[levels(merged_total2$V1.1)=="2"] <- "WALKING_UPSTAIRS"
	levels(merged_total2$V1.1)[levels(merged_total2$V1.1)=="3"] <- "WALKING_DOWNSTAIRS"
	levels(merged_total2$V1.1)[levels(merged_total2$V1.1)=="4"] <- "SITTING"
	levels(merged_total2$V1.1)[levels(merged_total2$V1.1)=="5"] <- "STANDING"
	levels(merged_total2$V1.1)[levels(merged_total2$V1.1)=="6"] <- "LAYING"

	# step 4: Label the data set with descriptive variable names after replacing special characters
	features2 <- as.character(features[matches,2])
	write.table(c("subjectid", "activity", features2), "course_project_variables_orig.txt", quote = FALSE, sep=",", row.names=FALSE, col.names = FALSE) # for the code book
	features2 <- tolower(features2)
	features2 <- gsub("[^a-z]", "", features2)
	colnames_new <- c("subjectid", "activity", features2)
	write.table(colnames_new, "course_project_variables.txt", quote = FALSE, sep=",", row.names=FALSE, col.names = FALSE) # for the code book
	colnames(merged_total2) <- colnames_new

	# step 5: Create data set with the average (mean) of each variable for each activity/subject combination and write it to a file
	melt <- melt(merged_total2, id.vars=c("subjectid", "activity"))
	df5 <- dcast(melt, subjectid+activity ~ variable, mean)
	write.table(df5, "course_project_result.txt", quote = FALSE, sep=",", row.names=FALSE)
	print("Script completed - Happy holidays and a great 2015 to all of you!")
}