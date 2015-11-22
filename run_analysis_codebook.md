## run_analysis.R Codebook

(This codebook may be easier to read in raw mode.)

This codebook describes the four columns that comprise the output when run_analysis is run.  

While this function was written for the purpose of creating tidy data from the Smartphone Dataset
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip),
the function can be adapted to other datasets with identical file structure.

The four columns in the tidy data set (tidy_set) are 
subject - ID number of subject who was measured
activity - physical action subject performed
variable - measurement for which the mean value was computed
mean - average value of all measurements of a given variable for a specific action for a specific subject

# Variables in the Smartphone Dataset

In the context of the Smartphone Dataset, the following variables are presented in tidy_set:

activity - one of six activities
			"WALKING"
			"WALKING_UPSTAIRS"
			"WALKING_DOWNSTAIRS"
			"SITTING"
			"STANDING"
			"LAYING"

variable - There are 79 variables, each is either the mean or standard deviation of normalized multiple measurements taken during each
instance a subject was performing a specific activity.  In addition, the mean frequency of accelerometer and gyroscope measurements
are also included.  Please review the features_info.txt file of the Smartphone Dataset for the complete definition of each measurement:
			tBodyAcc-mean()-X
			tBodyAcc-mean()-Y
			tBodyAcc-mean()-Z
			tBodyAcc-std()-X
			tBodyAcc-std()-Y
			tBodyAcc-std()-Z
			tGravityAcc-mean()-X
			tGravityAcc-mean()-Y
			tGravityAcc-mean()-Z
			tGravityAcc-std()-X
			tGravityAcc-std()-Y
			tGravityAcc-std()-Z
			tBodyAccJerk-mean()-X
			tBodyAccJerk-mean()-Y
			tBodyAccJerk-mean()-Z
			tBodyAccJerk-std()-X
			tBodyAccJerk-std()-Y
			tBodyAccJerk-std()-Z
			tBodyGyro-mean()-X
			tBodyGyro-mean()-Y
			tBodyGyro-mean()-Z
			tBodyGyro-std()-X
			tBodyGyro-std()-Y
			tBodyGyro-std()-Z
			tBodyGyroJerk-mean()-X
			tBodyGyroJerk-mean()-Y
			tBodyGyroJerk-mean()-Z
			tBodyGyroJerk-std()-X
			tBodyGyroJerk-std()-Y
			tBodyGyroJerk-std()-Z
			tBodyAccMag-mean()
			tBodyAccMag-std()
			tGravityAccMag-mean()
			tGravityAccMag-std()
			tBodyAccJerkMag-mean()
			tBodyAccJerkMag-std()
			tBodyGyroMag-mean()
			tBodyGyroMag-std()
			tBodyGyroJerkMag-mean()
			tBodyGyroJerkMag-std()
			fBodyAcc-mean()-X
			fBodyAcc-mean()-Y
			fBodyAcc-mean()-Z
			fBodyAcc-std()-X
			fBodyAcc-std()-Y
			fBodyAcc-std()-Z
			fBodyAcc-meanFreq()-X
			fBodyAcc-meanFreq()-Y
			fBodyAcc-meanFreq()-Z
			fBodyAccJerk-mean()-X
			fBodyAccJerk-mean()-Y
			fBodyAccJerk-mean()-Z
			fBodyAccJerk-std()-X
			fBodyAccJerk-std()-Y
			fBodyAccJerk-std()-Z
			fBodyAccJerk-meanFreq()-X
			fBodyAccJerk-meanFreq()-Y
			fBodyAccJerk-meanFreq()-Z
			fBodyGyro-mean()-X
			fBodyGyro-mean()-Y
			fBodyGyro-mean()-Z
			fBodyGyro-std()-X
			fBodyGyro-std()-Y
			fBodyGyro-std()-Z
			fBodyGyro-meanFreq()-X
			fBodyGyro-meanFreq()-Y
			fBodyGyro-meanFreq()-Z
			fBodyAccMag-mean()
			fBodyAccMag-std()
			fBodyAccMag-meanFreq()
			fBodyBodyAccJerkMag-mean()
			fBodyBodyAccJerkMag-std()
			fBodyBodyAccJerkMag-meanFreq()
			fBodyBodyGyroMag-mean()
			fBodyBodyGyroMag-std()
			fBodyBodyGyroMag-meanFreq()
			fBodyBodyGyroJerkMag-mean()
			fBodyBodyGyroJerkMag-std()
			fBodyBodyGyroJerkMag-meanFreq()

mean - as the Smartphone Dataset contained normalized data, the units for the mean value (which is essentially the mean of all instances
for a given activity), will be dimensionless.


  
