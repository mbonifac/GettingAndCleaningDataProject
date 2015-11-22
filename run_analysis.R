##File must be downloaded and unzipped in working directory
##This function only works if library(plyr), library(dplyr), and library(reshape2) have been called in order.
run_analysis<-function(){
    ## Create tables from the data in the unzipped file.
    test_data<-read.table("./UCI HAR Dataset/test/x_test.txt")
    test_act_labels<-read.table("./UCI HAR Dataset/test/y_test.txt")
    test_subject<-read.table("./UCI HAR Dataset/test/subject_test.txt")
    train_data<-read.table("./UCI HAR Dataset/train/x_train.txt")
    train_act_labels<-read.table("./UCI HAR Dataset/train/y_train.txt")
    train_subject<-read.table("./UCI HAR Dataset/train/subject_train.txt")
    feature_labels<-read.table("./UCI HAR Dataset/features.txt")
    activities<-read.table("./UCI HAR Dataset/activity_labels.txt")
    ## Assign names to columns of pre-existing tables.
    colnames(test_subject)<-c("subject")
    colnames(train_subject)<-c("subject")
    colnames(test_data)<-feature_labels$V2
    colnames(train_data)<-feature_labels$V2
    colnames(test_subject)<-c("subject")
    colnames(train_subject)<-c("subject")
    ## Associate numbers in activity labels with words using a VLOOKUP. 
    test_activity<-merge(test_act_labels,activities)
    train_activity<-merge(train_act_labels,activities)
    ## Merge the subject and activity columns to their corresponding test/train data tables.
    test_set<-cbind(test_subject,test_activity$V2,test_data)
    train_set<-cbind(train_subject,train_activity$V2,train_data)
    ## Change column names of test and training data sets so they match.
    colnames(test_set)[2]<-c("activity")
    colnames(train_set)[2]<-c("activity")
    ## Merge test and training data sets into one data set.  Save this master set as a text file.
    master_set<-rbind(test_set,train_set)
    ## Create a subset that contains only mean and standard deviation values for each measurement.
    stat_set<-master_set[,grepl("subject", colnames(master_set)) | grepl("activity", colnames(master_set)) | grepl("mean()", colnames(master_set)) | grepl("std()", colnames(master_set))]
    ## Sort stat_set by subject and activity.
    sorted_set<-stat_set[order(stat_set$subject,stat_set$activity),]
    ## Melt sorted_set.  library(reshape2) must be called in advance.
    melted_set<-melt(sorted_set,id=c("subject","activity"))
    ## Create the tidy data set that presents the average of each mean and std dev for each subject and activity.
    tidy_set<-ddply(melted_set, c("subject", "activity", "variable"), summarize, mean=mean(value))
    tidy_set
    }
    