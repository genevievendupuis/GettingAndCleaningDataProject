## run_analysis.R
## Author: Genevieve Dupuis
## Getting and Cleaning Data 	
## Course Project


library(dplyr)
## This code assumes working directory contains two folders with raw data - test and train.

## Read in training data (assumes data is in working directory folders)
	id_train <- read.table( "./train/subject_train.txt", header = FALSE )
	x_train <- read.table( "./train/X_train.txt", header = FALSE )
	activity_train <- read.table( "./train/Y_train.txt", header = FALSE )

## Read in test data
	id_test <- read.table( "./test/subject_test.txt", header = FALSE )
	x_test <- read.table( "./test/X_test.txt", header = FALSE )
	activity_test <- read.table( "./test/Y_test.txt", header = FALSE )

## Read in labels for feature data
	features <- read.table( "./features.txt", header = FALSE )

## add labels to variables in all data sets
## Note that ID and activity labels must be the same in train/test for merging later
#### REQUIREMENT 4 ####
	names(id_train) <- "ID"
	names(id_test) <- "ID"
	names(x_train) <- make.names(features$V2) 	# making cloumn names valid
	names(x_test) <- make.names(features$V2)		# making cloumn names valid
	names(activity_train) <- "activity"
	names(activity_test) <- "activity"

## merge all data into one data set - first combining training/test data individually (cbind), 
## then combining trainind and test data (rbind)
#### REQUIREMENT 1 ####
	data_train <- cbind(id_train,activity_train,x_train)
	data_test <- cbind(id_test,activity_test,x_test)
	data_all <- rbind(data_train,data_test)
	data_all <- data_all[,!duplicated(colnames(data_all))] 	# removing duplicate column names (not needed here anyway)
	data_all <- arrange(data_all,ID,activity)	# sort data set by ID, then by activity - tidier!

## extract only the means and st. devs for each measurement (not including mean freqs)
#### REQUIREMENT 2 ####
	data <- select(data_all,ID,activity,contains(".mean."),contains(".std."))
	
## change activity values to descriptive names
## 1 - walking, 2 - walking_upstairs, 3 - walking_downstairs, 4 - sitting, 5 - standing, 6 - laying
#### REQUIREMENT 3 ####
	data$activity <- as.character(data$activity)
	data$activity[data$activity == "1"] <- "walking"
	data$activity[data$activity == "2"] <- "walking_upstairs"
	data$activity[data$activity == "3"] <- "walking_downstairs"
	data$activity[data$activity == "4"] <- "sitting"
	data$activity[data$activity == "5"] <- "standing"
	data$activity[data$activity == "6"] <- "laying"

## extract first data set
	write.table(data,"./WearableData1_GD.txt",row.names = FALSE)

## create data set with averages for each subject/activity
#### REQUIREMENT 5 ####
	data_summary <- data %>% group_by(ID,activity) %>% summarise_each(funs(mean),3:68)

## extract second data set
	write.table(data,"./WearableData2_GD.txt",row.names = FALSE)




