
## Overview 

In this document, we describe the script "run_analysis.R" that creates a tidy data set from data collected in experiments performed by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto (see License information below).  

For more information on the experiments see: 

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The raw data are located: 

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


## Description of process

Assuming that the zipped file above is located in your current working directory, the run_analysis.R script produces two tables called total and average.  It writes the table "average" to the directory "UCI HAR Dataset" under the name "average.txt".  


### Preliminaries: 

The script was written and tested using R version 3.1.0 on OS X Version 10.8.4 on June 21, 2014.  The script assumes that you have the "plyr" package, but does not assume that you have loaded its library.  

### The script performs the following steps: 

* Unzips the file. 
* Loads the data sets associated to the training and testing data. 
* Combines the training and testing data sets into one data set called "total". 
* Transforms the variable names to more descriptive names. 
* Keeps only those variables whose names have one of the following substrings: "mean", "Mean" or "std".  
* Provides descriptive names for each activity. 
* Creates a tidy data set called "average" that contains the average of each measurement for each distinct (volunteer_ID, activity) pair.  
* Writes the table "average" to the directory "UCI HAR Dataset" with the name "average.txt".  



License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
=======
datasciencecoursera
===================

This is a repository for work related to the Coursera courses on data science.  
>>>>>>> 24f502cfde392fe98e7078d804b100596b5149bd
