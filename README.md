## GettingAndCleaningDataProject
Project from Getting and Cleaning Data course

#What does run_analysis actually do?
The run_analysis script uses the plyr, plyr, and reshape2 packages to perform the following functions:

    a) reads files from the Smartphone Dataset and creates tables.
    b) uses tables to assign names to columns of measurements and identify ID numbers to their 
       corresponding physical activity.
    c) merges training and test measurement sets into a master set.
    d) creates a subset of the master set that contains only the mean and standard devation of each measurement.
    e) reshapes the subset to create a tidy data set that contains the average mean and average standard deviation
       of each variable for each subject and physical activity performed.

run_analysis WILL NOT DO the following:

    -Install the required packages needed to function (install.packages())
    -Call the required packages (library())
    -Download any files to your computer (download.file())
    -Unzip the dataset

The output of run_analysis is the tidy data set.       

The Smartphone Dataset is as follows:

Human Activity Recognition Using Smartphones Dataset, Version 1.0 
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

However, this function may be modified to accommodate other datasets with identical
file structure.

Please see the README.txt file for this Dataset for details of each file.  
The Inertial Signals files ARE NOT USED by run_analysis.R.

#How to use run_analysis
1. Install the plyr, dplyr, and reshape2 packages using install.packages() in R if you have not done so.
2. Download and unzip the Smartphones Dataset.
3. Set your working directory in R using setwd() to the folder that contains the unzipped Smartphones Dataset.
4. Call plyr using library(plyr)
5. Call dplyr using library(dplyr)
6. Call reshape2 using library(reshape2)
7. Call the run_analysis function using source()
8. tidy_data<-run_analysis()

See the code book or the README.txt file for the Smartphone Dataset for information on variables
in the tidy data set.
