# Codebook  For Get & Clean Project, John Hopkins University

Author: Karin Kolbe <br /> 
Date: October 2020  


See file README.md for an overview, a list of the files and the processing steps.


## Study Design and Raw Data

The UCI Human Activity Recognition data is available [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
The R program downloads from this link.<br />

In this Zip file there are several files:<br /> 

File | Purpose
--- | ---
README.rtf | Readme of the raw data, explains the project and how the data was collected 
features_info.txt | elaborates on the data
features.txt | lists the 561 variables pf the features vector
activity_labels.txt | lists the 6 activities "WALKING", etc.
X.txt | the raw data, (Test and Training (detailed in their README.rtf) 561 columns
subject.txt | person  (Test and Training (detailed in their README.rtf)
y | activity code (Test and Training (detailed in their README.rtf)
 

Additionally for both Test and Training there are 9 Inertial Signals files, but these were excluded from the Tidy Data as they were not required by the assignment 
(see step 2 of the Data Processing in README).


## CodeBook

#### Identifiers

person	 : integer, id of the person, 1-30<br /> 
activity : factor with 6 levels, "WALKING", "SITTING", etc
	
#### Mean data
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

