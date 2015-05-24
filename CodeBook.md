---
title: 'Getting & Cleaning Data project: Codebook'
author: "James Longman"
date: "Wednesday, May 13, 2015"
output: html_document
---

### Values
The values in this data set are mean averages calculated from all available observations for the variables involved grouped by the Activity type and subject undertaking the activity.

### Variable description
| variable naming construct | description |
|---|---|
|activity|Label of the activity being undertaken when the reading was taken|
|subject|Numeric identifier for the subject|
|\*Acc\*|accelerometer readings|
|\*Gyro\*|gyroscope readings|
|time* |time readings captured @ 50Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.|
|time\*Acc|Acceleration signal was then separated into body and gravity acceleration signals  using another low pass Butterworth filter with a corner frequency of 0.3 Hz|
|time\*Jerk|body linear acceleration and angular velocity were derived in time to obtain Jerk signals.|
|time\*Mag|Magnitude of these three-dimensional signals were calculated using the Euclidean norm.|
|frequency\*|A Fast Fourier Transform was applied to some of the variable signals|
|\*\_mean\*|Mean average values| 
|\*\_std\*|Standard deviation values|
|\*\_XYZ|Axis of measurement|


|full variable list|
|---|
|activity|
|subject|
|timeBodyAcc_mean_X|
|timeBodyAcc_mean_Y|
|timeBodyAcc_mean_Z|
|timeBodyAcc_std_X|
|timeBodyAcc_std_Y|
|timeBodyAcc_std_Z|
|timeGravityAcc_mean_X|
|timeGravityAcc_mean_Y|
|timeGravityAcc_mean_Z|
|timeGravityAcc_std_X|
|timeGravityAcc_std_Y|
|timeGravityAcc_std_Z|
|timeBodyAccJerk_mean_X|
|timeBodyAccJerk_mean_Y|
|timeBodyAccJerk_mean_Z|
|timeBodyAccJerk_std_X|
|timeBodyAccJerk_std_Y|
|timeBodyAccJerk_std_Z|
|timeBodyGyro_mean_X|
|timeBodyGyro_mean_Y|
|timeBodyGyro_mean_Z|
|timeBodyGyro_std_X|
|timeBodyGyro_std_Y|
|timeBodyGyro_std_Z|
|timeBodyGyroJerk_mean_X|
|timeBodyGyroJerk_mean_Y|
|timeBodyGyroJerk_mean_Z|
|timeBodyGyroJerk_std_X|
|timeBodyGyroJerk_std_Y|
|timeBodyGyroJerk_std_Z|
|timeBodyAccMag_mean|
|timeBodyAccMag_std|
|timeGravityAccMag_mean|
|timeGravityAccMag_std|
|timeBodyAccJerkMag_mean|
|timeBodyAccJerkMag_std|
|timeBodyGyroMag_mean|
|timeBodyGyroMag_std|
|timeBodyGyroJerkMag_mean|
|timeBodyGyroJerkMag_std|
|frequencyBodyAcc_mean_X|
|frequencyBodyAcc_mean_Y|
|frequencyBodyAcc_mean_Z|
|frequencyBodyAcc_std_X|
|frequencyBodyAcc_std_Y|
|frequencyBodyAcc_std_Z|
|frequencyBodyAccJerk_mean_X|
|frequencyBodyAccJerk_mean_Y|
|frequencyBodyAccJerk_mean_Z|
|frequencyBodyAccJerk_std_X|
|frequencyBodyAccJerk_std_Y|
|frequencyBodyAccJerk_std_Z|
|frequencyBodyGyro_mean_X|
|frequencyBodyGyro_mean_Y|
|frequencyBodyGyro_mean_Z|
|frequencyBodyGyro_std_X|
|frequencyBodyGyro_std_Y|
|frequencyBodyGyro_std_Z|
|frequencyBodyAccMag_mean|
|frequencyBodyAccMag_std|
|frequencyBodyBodyAccJerkMag_mean|
|frequencyBodyBodyAccJerkMag_std|
|frequencyBodyBodyGyroMag_mean|
|frequencyBodyBodyGyroMag_std|
|frequencyBodyBodyGyroJerkMag_mean|
|frequencyBodyBodyGyroJerkMag_std|
