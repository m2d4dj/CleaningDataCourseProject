## Description of Data

The data set contains the average of certain measurements taken from 30 volunteers performing activities while wearing a smartphone on their waist.  The experiment was performed and the raw data was collected by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto.  A complete description of the experiment can be found at 

[here] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


## Description of the experiment and raw data
This description is taken from the information located on the website above.  

The experiments were performed by volunteers between 19-48 years, while performing six different activities wearing a Samsung Galaxy S II. Using its embedded accelerometer and gyroscope, the experimenters captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz to compute measurements on:


* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 

As further described by the authors above, the features for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern and '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


###Transformation to the raw data

In the dataset, "activity.txt", we have only used a subset of the raw data that had measurements involving means and standard deviations.  We computed the average value of each of these measurements for each distinct pair (volunteer, activity), and these are the values that appear in the "activity.txt" data set. In the list of variables below, we have omitted the phrase "Average of" that appears in the names of most of the columns.  Similarly, we have omitted the phrase "Average of" in the description of the variable.  For example, the variable tBodyAcc-mean()-X is described above as the mean of the body linear acceleration in the time domain in the X direction.  In the data set "average.txt" there is a column variable "Average of tBodyAcc-mean()-X", which is the average of the mean of the body linear acceleration in the time domain in the X direction.  (Note, although average and mean have the same definition, we use two different words to avoid saying phrases such as "the mean of the mean of".) 


## Variables: 


* volunteer_ID				An ID identifying the volunteer in the experiment. 
* activity					The activity performed during data collection 
* tBodyAcc-mean()-XYZ
* tGravityAcc-mean()-XYZ
* tBodyAccJerk-mean()-XYZ
* tBodyGyro-mean()-XYZ
* tBodyGyroJerk-mean()-XYZ
* tBodyAccMag-mean()
* tGravityAccMag-mean()
* tBodyAccJerkMag-mean()
* tBodyGyroMag-mean()
* tBodyGyroJerkMag-mean()
* fBodyAcc-mean()-XYZ
* fBodyAcc-meanFreq()-XYZ
* fBodyAccJerk-mean()-XYZ
* fBodyAccJerk-meanFreq()-XYZ
* fBodyGyro-mean()-XYZ
* fBodyGyro-meanFreq()-XYZ
* fBodyAccMag-mean()
* fBodyAccMag-meanFreq()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-meanFreq()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-meanFreq()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-meanFreq()
* angle(tBodyAccMean,gravity)
* angle(tBodyAccJerkMean),gravityMean)
* angle(tBodyGyroMean,gravityMean)
* angle(tBodyGyroJerkMean,gravityMean)
* angle(XYZ,gravityMean)
* tBodyAcc-std()-XYZ
* tGravityAcc-std()-XYZ
* tBodyAccJerk-std()-XYZ
* tBodyGyro-std()-XYZ
* tBodyGyroJerk-std()-XYZ
* tBodyAccMag-std()
* tGravityAccMag-std()
* tBodyAccJerkMag-std()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-std()
* fBodyAcc-std()-XYZ
* fBodyAccJerk-std()-XYZ
* fBodyGyro-std()-XYZ
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-std()
