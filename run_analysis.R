# Get & Clean Data Project
# Karin Kolbe, 1st October 2020. 

#Libraries
library(dplyr)    

#Step 1: Download and Combine the Training & Test data
#=====================================================
myfile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(myfile,destfile="zipfile.zip",method="curl")
unzip("zipfile.zip")

# Read in all the data files to R. 
# --Activity labels and Features 
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)

# -- Data for the test & training subjects 
subject_test      <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test            <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test            <- read.table("./UCI HAR Dataset/test/y_test.txt")

subject_train     <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train           <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train           <- read.table("./UCI HAR Dataset/train/y_train.txt")

#Combine all together
data1 <- cbind( rbind(subject_test, subject_train), 
                   rbind(y_test, y_train), 
                   rbind(X_test, X_train)) 

#Create a vector of the column names & attach it (names are fixed in Step4)
names(data1) <- c("person","activityid",pull(features,V2))


#Step 2: Extract variables with "mean", "Mean" or "std" anywhere in their name
#=============================================================================
# not forgetting first 2 columns, namely "person" and "activity"

data2 <- data1[,grepl("person|activityid|std|mean|Mean",names(data1))]


#Step 3 Translate activityid (1-6) to their names ("WALKING" etc)
#=================================================================
# do a join to translate the ids to  words  
data3 <-left_join(data2,activity_labels,
            by=c("activityid"="V1"))

#Fix the columns: drop activityid, move the activity label to the 2nd column,
# and rename V2 as "activity"

data3B <- data3 %>%
      select(-matches("activityid")) %>%
      select(person,V2,everything())  %>%
      rename("activity"="V2")


# Step 4 Fix the column names
#=============================
#For the text manipulation, put the names in a vector, do the changes, 
# and then attach the new names

#Get the names of the data columns 
dataNames <- names(data3B)

dataNames<-gsub("^t","time",dataNames)
dataNames<-gsub("^f","FFT",dataNames)  
dataNames<-gsub("Acc","Acceleration",dataNames)
dataNames<-gsub("Mag","Magnitude",dataNames)
dataNames<-gsub("Freq","Frequency",dataNames)
dataNames<-gsub("()","",dataNames, fixed =TRUE)
dataNames<-gsub("std","STD",dataNames, fixed =TRUE)
dataNames<-gsub("mean","Mean",dataNames, fixed =TRUE)

#Fix the ones "angle" ones
dataNames<-gsub("angle\\(tBody","angleTimeBody",dataNames)
dataNames<-gsub("angle\\(","angle",dataNames)
dataNames<-gsub(",gravity","ToGravity",dataNames)
dataNames<-gsub(")","",dataNames, fixed =TRUE)
dataNames<-gsub("JerkMean\\)","JerkMean",dataNames)

dataNames<-gsub("\\-","",dataNames)
dataNames<-gsub("BodyBody","Body",dataNames, fixed =TRUE)

# And finally, reattach the names
data4 <- data3B
names(data4) <- dataNames


# Step 5 agreggate and summarise by the mean
#===========================================
data5 <- data4 %>%
      group_by(person,activity) %>%
      summarise_all(mean)

# Write this final dataset to a file
write.table(data5, file="activityDataMeans.txt", append=FALSE, row.names=FALSE, 
            col.names = TRUE, sep = "\t", quote = FALSE)

