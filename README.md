# Assignment for Course Getting and Cleaning Data

Author: Karin Kolbe <br />
Date: October 2020

## Purpose of the Assignment
To demonstrate producing Tidy Data, along with its code and relevant documentation, starting with this file. 


## Files in this repo

File | Purpose
--- | ---
README.md | this document
CodeBook | Codebook for the final data 
run_analysis.R | R program to download the data and create the file activityDataMeans.txt
activityDataMeans.txt | result of run_analysis.R
	


## Data Processing

This section describes how the raw rata was transformed. 


##### 1. Merge the training and the test sets together. 
All files are downloaded, and then built into one with rbind and bind statements.

##### 2. Extract only the measurements on the mean and standard deviation for each measurement.
I took an expansive view and included all variables with the letters "mean", "Mean" or "std" in their name, regardless of where these strings occurred. 
Thus none of the files in the "Inertial Signals" folder of the original data were needed. Of the 561 features only 86 met this criteria. 
	
##### 3. Use descriptive activity names to name the activities in the data set.
The activity code of 1-6 are replaced by their names ie  "WALKING" etc.

##### 4. Appropriately labels the data set with descriptive variable names. <br />
+ I used camel case ie the first letter is lower case, but then subsequent words are capitalised
+ Shortened words  like "t" is expanded to "time", "acc" to "acceleration", etc
+ Abbreviations like "FFT" and "STD" are capitalised
+ For the angles the word "To" is between the two measurements e.g. angleXTo <br />

The data is Tidy as each row represents one observation of a person/activity, and every column is a separate variable.


##### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 	
The file produced here is called activityDataMeans.txt


R Code to read the file

```
	data <- read.table("activityDataMeans.txt", header = TRUE) 	View(data)
```
	

