# README.md

##Assignment for Course Get and Clean Data

__Purpose of the Assignment__
To demonstrate producing Tidy Data, along with its code and relevant documentation, starting with this file. 


__Files are__

	README.md 		- this document
	CodeBook	- how the data was produced, how it was analysed and the codebook for the final data 
	run_analysis.R	- R program to download the data and create the file activityDataMeans.txt
	activityDataMeans.txt  - the file of the Means for the activity data.
	

__R Code to read the file__

	data <- read.table("activityDataMeans.txt", header = TRUE) 	View(data)

	



Assignment Instructions

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.




