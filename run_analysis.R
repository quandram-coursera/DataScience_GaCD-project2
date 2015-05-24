setwd("c:\\_cloud-sync\\Dropbox\\coursera\\datascience\\3. Getting and Cleaning Data\\p2")
library(dplyr)

testX <- read.delim("./UCI HAR Dataset/test/X_test.txt",sep="", header=FALSE)
testY <- read.delim("./UCI HAR Dataset/test/y_test.txt",sep="", header=FALSE)
testSubjectTest <- read.delim("./UCI HAR Dataset/test/subject_test.txt",sep="", header=FALSE)

trainX <- read.delim("./UCI HAR Dataset/train/X_train.txt",sep="", header=FALSE)
trainY <- read.delim("./UCI HAR Dataset/train/y_train.txt",sep="", header=FALSE)
trainSubjecttrain <- read.delim("./UCI HAR Dataset/train/subject_train.txt",sep="", header=FALSE)

features <- read.delim("./UCI HAR Dataset/features.txt",sep="", header=FALSE)
activitylab <- read.delim("./UCI HAR Dataset/activity_labels.txt",sep="", header=FALSE)

#improve column names
features2 <- gsub("\\(\\)","",features[,2])
features2 <- gsub("-","_",features2)
features2 <- gsub("^t","time",features2)
features2 <- gsub("^f","frequency",features2)


#assign column names to the data and sanatise
names(testX) <- features2
names(trainX) <- features2

#add descriptive activiy label column
testX$activity <- activitylab[testY[,1],2]
trainX$activity <- activitylab[trainY[,1],2]

#add subject column
testX$subject <- testSubjectTest[,1]
trainX$subject <- trainSubjecttrain[,1]

#concatenate the two data.frames
fulldata <- rbind(testX, trainX)

#reduced dataframe containing just the mean, std, activity and subject labels
data <- fulldata[,grep("((mean|std)(_)?(X|Y|Z)?$|activity|subject)",names(fulldata))]

gData <- group_by(data, activity, subject)
summaryData <- summarise_each(gData, funs(mean))
write.table(summaryData, file="GaCD_project2.txt", row.names=FALSE)
