# Codebook  For Get & Clean Project, John Hopkins University

Author: Karin Kolbe
Date:	15 October 2020  


See README for overview information, and the files.



## Study Design

As an assignment for Get & Cleaning data, the following data is used.

The UCI Human Activity Recognition data is available at ttps://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
(The R program downloads from this link).

In this Zip file there is 
	README.rtf which explains the project and how the data was collected 
	features_info.txt elaborates on the data
	features.txt which lists the 561 variables pf the features vector
	activity_labels.txt which lists the 6 activities "WALKING", etc.

	For both Test and Training (detailed in their README.rtf)
		subject	- the person
		X	- all the data
		y	- the activity 

	Additionally for both Test and Training there are 9 Inertial Signals files, but these were excluded from the Tidy Data as they were not required by the assignment (see step 2 in Data Processing, below).


## Data Processing

This section describes how the raw rata was transformed. 


1. Merges the training and the test sets together
	All files are downloaded, and then built into one with rbind and bind statements.

2. Extracts only the measurements on the mean and standard deviation for each measurement.
	I took an expansive view and included all variables with the letters "mean", "Mean" or "std" in their name, regardless of where these strings occurred. 
	Thus none of the files in the "Inertial Signals" folder of the original data were needed.
	Of the 561 features only 86 met this criteria. 

	
3. Uses descriptive activity names to name the activities in the data set.
	The activity code of 1-6 are replaced by their names ie  "WALKING" etc.

4. Appropriately labels the data set with descriptive variable names.
	I used camel case ie the first letter is lower case, but then subsequent words are capitalised
	Shortened words  like "t" is expanded to "time", "acc" to "acceleration", etc
	Abbreviations like "FFT" and "STD" are capitalised
	For the angles the word "To" is between the two measurements 
			eg angleXTo

   The data is Tidy as each row represents one observation of a person/activity, and every column is a separate variable.


5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 	
	The file produced here is called activityDataMeans.txt




## CodeBook for the final datafile.

__Identifiers__

person		integer - id of the person, 1-30.
activity	factor with 6 levels, "WALKING", "SITTING", etc
	
__Further Columns__
From the original data, only those for Means or STDs were selected. 
(Further information about each variable is described in the features_info.txt).

There is one row per person and activity, so the data is the mean across all original observations

timeBodyAccelerationMeanX                           timeBodyAccelerationMeanY                               
timeBodyAccelerationMeanZ                               
timeBodyAccelerationSTDX                            timeBodyAccelerationSTDY                                
timeBodyAccelerationSTDZ                                
timeGravityAccelerationMeanX                        timeGravityAccelerationMeanY                            
timeGravityAccelerationMeanZ                            
timeGravityAccelerationSTDX                         timeGravityAccelerationSTDY                             
timeGravityAccelerationSTDZ                             
timeBodyAccelerationJerkMeanX                       timeBodyAccelerationJerkMeanY                           
timeBodyAccelerationJerkMeanZ                           
timeBodyAccelerationJerkSTDX                        timeBodyAccelerationJerkSTDY                            
timeBodyAccelerationJerkSTDZ                            
timeBodyGyroMeanX                                   timeBodyGyroMeanY                                       
timeBodyGyroMeanZ                                       
timeBodyGyroSTDX                                    timeBodyGyroSTDY                                        
timeBodyGyroSTDZ                                        
timeBodyGyroJerkMeanX                               timeBodyGyroJerkMeanY                                   
timeBodyGyroJerkMeanZ                                   
timeBodyGyroJerkSTDX                                timeBodyGyroJerkSTDY                                    
timeBodyGyroJerkSTDZ                                    
timeBodyAccelerationMagnitudeMean                   timeBodyAccelerationMagnitudeSTD                        
timeGravityAccelerationMagnitudeMean                    
timeGravityAccelerationMagnitudeSTD                 timeBodyAccelerationJerkMagnitudeMean                   
timeBodyAccelerationJerkMagnitudeSTD                    
timeBodyGyroMagnitudeMean                           timeBodyGyroMagnitudeSTD                                
timeBodyGyroJerkMagnitudeMean                           
timeBodyGyroJerkMagnitudeSTD                        FFTBodyAccelerationMeanX                                
FFTBodyAccelerationMeanY                                
FFTBodyAccelerationMeanZ                            FFTBodyAccelerationSTDX                                 
FFTBodyAccelerationSTDY                                 
FFTBodyAccelerationSTDZ                             FFTBodyAccelerationMeanFrequencyX                       
FFTBodyAccelerationMeanFrequencyY                       
FFTBodyAccelerationMeanFrequencyZ                   FFTBodyAccelerationJerkMeanX                            
FFTBodyAccelerationJerkMeanY                            
FFTBodyAccelerationJerkMeanZ                        FFTBodyAccelerationJerkSTDX                             
FFTBodyAccelerationJerkSTDY                             
FFTBodyAccelerationJerkSTDZ                         FFTBodyAccelerationJerkMeanFrequencyX                   
FFTBodyAccelerationJerkMeanFrequencyY                   
FFTBodyAccelerationJerkMeanFrequencyZ               FFTBodyGyroMeanX                                        
FFTBodyGyroMeanY                                        
FFTBodyGyroMeanZ                                    FFTBodyGyroSTDX                                         
FFTBodyGyroSTDY                                         
FFTBodyGyroSTDZ                                     FFTBodyGyroMeanFrequencyX                               
FFTBodyGyroMeanFrequencyY                               
FFTBodyGyroMeanFrequencyZ                           FFTBodyAccelerationMagnitudeMean                        
FFTBodyAccelerationMagnitudeSTD                         
FFTBodyAccelerationMagnitudeMeanFrequency           FFTBodyAccelerationJerkMagnitudeMean                    
FFTBodyAccelerationJerkMagnitudeSTD                     
FFTBodyAccelerationJerkMagnitudeMeanFrequency FFTBodyGyroMagnitudeMean                                
FFTBodyGyroMagnitudeSTD                                 
FFTBodyGyroMagnitudeMeanFrequency                   FFTBodyGyroJerkMagnitudeMean                            
FFTBodyGyroJerkMagnitudeSTD                             
FFTBodyGyroJerkMagnitudeMeanFrequency               angleTimeBodyAccelerationMeanToGravity                  
angleTimeBodyAccelerationJerkMeanToGravityMean          
angleTimeBodyGyroMeanToGravityMean                  angleTimeBodyGyroJerkMeanToGravityMean                  
angleXToGravityMean                                     
angleYToGravityMean                                 angleZToGravityMean                                 

