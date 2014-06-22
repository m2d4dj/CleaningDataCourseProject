## Firstly, we unzip the file.  
unzip("getdata-projectfiles-UCI HAR Dataset.zip")

## Secondly, we download the training data and combine the three data sets into one. 
train<-read.table("./UCI HAR Dataset/train/X_train.txt")
train_label<-read.table("./UCI HAR Dataset/train/y_train.txt")
train_ID<-read.table("./UCI HAR Dataset/train/subject_train.txt")

train_total<-cbind(train_ID, train_label, train)

## Next, we download the testing data and combine the three data sets into one. 

test<-read.table("./UCI HAR Dataset/test/X_test.txt")
test_ID<-read.table("./UCI HAR Dataset/test/subject_test.txt")
test_label<-read.table("./UCI HAR Dataset/test/y_test.txt")

test_total<-cbind(test_ID, test_label, test)

## Next, we combine the training and testing data.  

total<-rbind(train_total, test_total)

## Here we are providing the data table "total" with descriptive names.  
column_label<-read.table("./UCI HAR Dataset/features.txt", colClasses=c("integer", "character"))
names(total)<-c("volunteer_ID", "activity", column_label$V2)

## Here we are finding all variable names with "mean" or "std" in them and 
## taking the corresponding subset of the data table "total".  
## This will include the variables such as angle(tBodyGyroJerkMean,gravityMean)
## and fBodyGyro-meanFreq()-Y.

mean_col<-grep("mean", names(total), ignore.case=TRUE)
std_col<-grep("std", names(total))

keep<-union(mean_col, std_col)

total<-cbind(total$volunteer_ID, total$activity, total[,keep])
colnames(total)[1]<-"volunteer_ID"
colnames(total)[2]<-"activity"

## Here we are replacing the activities with their corresponding description. 
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
total<-merge(total, activity_labels, by.x="activity", by.y="V1")
total$activity<-NULL
total<-total[order(total$volunteer_ID),]
n<-length(total)
colnames(total)[n]<-"activity"
total<-total[, c(1, n, 2:(n-1))]

## The data.table "total" now contains the volunteer IDs, activities and 
## any measurements involving means or standard deviations.  

## Lastly, we produce our tidy dataset "average" that contains the volunteer IDs,
## activities and the mean of any measurement from the table "total".  

library(plyr)
average<-ddply(total, .(volunteer_ID, activity), numcolwise(mean))

# Adjust the names of the variables to highlight that these are average values. 
foo<-sapply(names(average[,c(3:length(average))]), function(x) paste("Average Of",x))
colnames(average)[c(3:length(average))]<-foo
rm(foo)

## Write the table "average" to the directory "UCI HAR Dataset" 
write.table(average, "./UCI HAR Dataset/average.txt")
