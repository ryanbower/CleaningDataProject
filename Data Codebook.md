Course Project Data Dictionary
=================

  The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

  Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

  Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

  These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

<li>tBodyAcc-XYZ</li>
<li>tGravityAcc-XYZ</li>
<li>tBodyAccJerk-XYZ</li>
<li>tBodyGyro-XYZ</li>
<li>tBodyGyroJerk-XYZ</li>
<li>tBodyAccMag</li>
<li>tGravityAccMag</li>
<li>tBodyAccJerkMag</li>
<li>tBodyGyroMag</li>
<li>tBodyGyroJerkMag</li>
<li>fBodyAcc-XYZ</li>
<li>fBodyAccJerk-XYZ</li>
<li>fBodyGyro-XYZ</li>
<li>fBodyAccMag</li>
<li>fBodyAccJerkMag</li>
<li>fBodyGyroMag</li>
<li>fBodyGyroJerkMag</li>

  The set of variables that were estimated from these signals are: 
  <ul>
<li>mean(): Mean value </li>
<li>std(): Standard deviation </li>
</ul>

  Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

<ul>
<li>gravityMean</li>
<li>tBodyAccMean</li>
<li>tBodyAccJerkMean</li>
<li>tBodyGyroMean</li>
<li>tBodyGyroJerkMean</li>
</ul>


  Each of these variables was then averaged and the standard deviation was taken for each subject and each activity, yielding the following variable list, with descriptions:

<li>av_tBodyAcc-mean()-X   -  the mean of the mean of the the body acceleration separation of the the acceleration signal in a single dimesnsion, -X</li>
<li>av_tBodyAcc-mean()-Y   -  the mean of the mean of the the body acceleration separation of the the acceleration signal in a single dimesnsion, -Y</li>
<li>av_tBodyAcc-mean()-Z   -  the mean of the mean of the the body acceleration separation of the the acceleration signal in a single dimesnsion, -Z</li>
<li>av_tGravityAcc-mean()-X   -  the mean of the mean of the the gravity acceleration separation of the the acceleration signal in a single dimesnsion, -X</li>
<li>av_tGravityAcc-mean()-Y   -  the mean of the mean of the the gravity acceleration separation of the the acceleration signal in a single dimesnsion, -Y</li>
<li>av_tGravityAcc-mean()-Z   -  the mean of the mean of the the gravity acceleration separation of the the acceleration signal in a single dimesnsion, -Z</li>
<li>av_tBodyAccJerk-mean()-X   -  the mean of the mean of the the derived linear acceleration (or jerk) signal in a single dimension, -X</li>
<li>av_tBodyAccJerk-mean()-Y   -  the mean of the mean of the the derived linear acceleration (or jerk) signal in a single dimension, -Y</li>
<li>av_tBodyAccJerk-mean()-Z   -  the mean of the mean of the the derived linear acceleration (or jerk) signal in a single dimension, -Z</li>
<li>av_tBodyGyro-mean()-X   -  the mean of the mean of the the angular velocity signal in a single dimension, -X</li>
<li>av_tBodyGyro-mean()-Y   -  the mean of the mean of the the angular velocity signal in a single dimension, -Y</li>
<li>av_tBodyGyro-mean()-Z   -  the mean of the mean of the the angular velocity signal in a single dimension, -Z</li>
<li>av_tBodyGyroJerk-mean()-X   -  the mean of the mean of the the derived angular velocity (or jerk) signal in a single dimension, -X</li>
<li>av_tBodyGyroJerk-mean()-Y   -  the mean of the mean of the the derived angular velocity (or jerk) signal in a single dimension, -Y</li>
<li>av_tBodyGyroJerk-mean()-Z   -  the mean of the mean of the the derived angular velocity (or jerk) signal in a single dimension, -Z</li>
<li>av_tBodyAccMag-mean()   -  the mean of the mean of the the magnitude of the linear acceleration</li>
<li>av_tGravityAccMag-mean()   -  the mean of the mean of the the magnitude of the gravity component of the linear acceleration</li>
<li>av_tBodyAccJerkMag-mean()   -  the mean of the mean of the the derived  linear acceleration of the signal</li>
<li>av_tBodyGyroMag-mean()   -  the mean of the mean of the the derived angular velocity of the signal</li>
<li>av_tBodyGyroJerkMag-mean()-X   -  the mean of the mean of the the angular velocity, derived in time to obtain Jerk signals in a single dimension, -X</li>
<li>av_tBodyGyroJerkMag-mean()-Y   -  the mean of the mean of the the angular velocity, derived in time to obtain Jerk signals in a single dimension, -Y</li>
<li>av_tBodyGyroJerkMag-mean()-Z   -  the mean of the mean of the the angular velocity, derived in time to obtain Jerk signals in a single dimension, -Z</li>
<li>av_fBodyAcc-mean()-X   -  the mean of the mean of the the linear acceleration of the signal in a single dimension, -X</li>
<li>av_fBodyAcc-mean()-Y   -  the mean of the mean of the the linear acceleration of the signal in a single dimension, -Y</li>
<li>av_fBodyAcc-mean()-Z   -  the mean of the mean of the the linear acceleration of the signal in a single dimension, -Z</li>
<li>av_fBodyAccJerk-mean()-X   -  the mean of the mean of the angular velocity were derived in time to obtain Jerk signal in a single dimension, -X</li>
<li>av_fBodyAccJerk-mean()-Y   -  the mean of the mean of the angular velocity were derived in time to obtain Jerk signal in a single dimension, -Y</li>
<li>av_fBodyAccJerk-mean()-Z   -  the mean of the mean of the angular velocity were derived in time to obtain Jerk signal in a single dimension, -Z</li>
<li>av_fBodyGyro-mean()-X   -  the mean of the mean of the the angular velocity of the signal in a single dimension, -X</li>
<li>av_fBodyGyro-mean()-Y   -  the mean of the mean of the the angular velocity of the signal in a single dimension, -Y</li>
<li>av_fBodyGyro-mean()-Z   -  the mean of the mean of the the angular velocity of the signal in a single dimension, -Z</li>
<li>av_fBodyAccMag-mean()   -  the mean of the mean of the the magnitude of the linear acceleration</li>
<li>av_fBodyAccJerkMag-mean()   -  the mean of the mean of the the derived magnitude of the linear acceleration</li>
<li>av_fBodyGyroMag-mean()   -  the mean of the mean of the the magnitude of the angular velocity</li>
<li>av_fBodyGyroJerkMag-mean()   -  the mean of the mean of the the derived magnitude of the angular velocity</li>
<li>av_tBodyAcc-std()-X   -  the mean of the standard deviation of the the body acceleration separation of the the acceleration signal in a single dimesnsion, -X</li>
<li>av_tBodyAcc-std()-Y   -  the mean of the standard deviation of the the body acceleration separation of the the acceleration signal in a single dimesnsion, -Y</li>
<li>av_tBodyAcc-std()-Z   -  the mean of the standard deviation of the the body acceleration separation of the the acceleration signal in a single dimesnsion, -Z</li>
<li>av_tGravityAcc-std()-X   -  the mean of the standard deviation of the the gravity acceleration separation of the the acceleration signal in a single dimesnsion, -X</li>
<li>av_tGravityAcc-std()-Y   -  the mean of the standard deviation of the the gravity acceleration separation of the the acceleration signal in a single dimesnsion, -Y</li>
<li>av_tGravityAcc-std()-Z   -  the mean of the standard deviation of the the gravity acceleration separation of the the acceleration signal in a single dimesnsion, -Z</li>
<li>av_tBodyAccJerk-std()-X   -  the mean of the standard deviation of the the derived linear acceleration (or jerk) signal in a single dimension, -X</li>
<li>av_tBodyAccJerk-std()-Y   -  the mean of the standard deviation of the the derived linear acceleration (or jerk) signal in a single dimension, -Y</li>
<li>av_tBodyAccJerk-std()-Z   -  the mean of the standard deviation of the the derived linear acceleration (or jerk) signal in a single dimension, -Z</li>
<li>av_tBodyGyro-std()-X   -  the mean of the standard deviation of the the angular velocity signal in a single dimension, -X</li>
<li>av_tBodyGyro-std()-Y   -  the mean of the standard deviation of the the angular velocity signal in a single dimension, -Y</li>
<li>av_tBodyGyro-std()-Z   -  the mean of the standard deviation of the the angular velocity signal in a single dimension, -Z</li>
<li>av_tBodyGyroJerk-std()-X   -  the mean of the standard deviation of the the derived angular velocity (or jerk) signal in a single dimension, -X</li>
<li>av_tBodyGyroJerk-std()-Y   -  the mean of the standard deviation of the the derived angular velocity (or jerk) signal in a single dimension, -Y</li>
<li>av_tBodyGyroJerk-std()-Z   -  the mean of the standard deviation of the the derived angular velocity (or jerk) signal in a single dimension, -Z</li>
<li>av_tBodyAccMag-std()   -  the mean of the standard deviation of the the magnitude of the linear acceleration</li>
<li>av_tGravityAccMag-std()   -  the mean of the standard deviation of the the magnitude of the gravity component of the linear acceleration</li>
<li>av_tBodyAccJerkMag-std()   -  the mean of the standard deviation of the the derived  linear acceleration of the signal</li>
<li>av_tBodyGyroMag-std()   -  the mean of the standard deviation of the the derived angular velocity of the signal</li>
<li>av_tBodyGyroJerkMag-std()-X   -  the mean of the standard deviation of the the angular velocity, derived in time to obtain Jerk signals in a single dimension, -X</li>
<li>av_tBodyGyroJerkMag-std()-Y   -  the mean of the standard deviation of the the angular velocity, derived in time to obtain Jerk signals in a single dimension, -Y</li>
<li>av_tBodyGyroJerkMag-std()-Z   -  the mean of the standard deviation of the the angular velocity, derived in time to obtain Jerk signals in a single dimension, -Z</li>
<li>av_fBodyAcc-std()-X   -  the mean of the standard deviation of the the linear acceleration of the signal in a single dimension, -X</li>
<li>av_fBodyAcc-std()-Y   -  the mean of the standard deviation of the the linear acceleration of the signal in a single dimension, -Y</li>
<li>av_fBodyAcc-std()-Z   -  the mean of the standard deviation of the the linear acceleration of the signal in a single dimension, -Z</li>
<li>av_fBodyAccJerk-std()-X   -  the mean of the standard deviation of the angular velocity were derived in time to obtain Jerk signal in a single dimension, -X</li>
<li>av_fBodyAccJerk-std()-Y   -  the mean of the standard deviation of the angular velocity were derived in time to obtain Jerk signal in a single dimension, -Y</li>
<li>av_fBodyAccJerk-std()-Z   -  the mean of the standard deviation of the angular velocity were derived in time to obtain Jerk signal in a single dimension, -Z</li>
<li>av_fBodyGyro-std()-X   -  the mean of the standard deviation of the the angular velocity of the signal in a single dimension, -X</li>
<li>av_fBodyGyro-std()-Y   -  the mean of the standard deviation of the the angular velocity of the signal in a single dimension, -Y</li>
<li>av_fBodyGyro-std()-Z   -  the mean of the standard deviation of the the angular velocity of the signal in a single dimension, -Z</li>
<li>av_fBodyAccMag-std()   -  the mean of the standard deviation of the the magnitude of the linear acceleration</li>
<li>av_fBodyAccJerkMag-std()   -  the mean of the standard deviation of the the derived magnitude of the linear acceleration</li>
<li>av_fBodyGyroMag-std()   -  the mean of the standard deviation of the the magnitude of the angular velocity</li>
<li>av_fBodyGyroJerkMag-std()   -  the mean of the standard deviation of the the derived magnitude of the angular velocity</li>
<li>sd_tBodyAcc-mean()-X   -  the standard deviation of the mean of the the body acceleration separation of the the acceleration signal in a single dimesnsion, -X</li>
<li>sd_tBodyAcc-mean()-Y   -  the standard deviation of the mean of the the body acceleration separation of the the acceleration signal in a single dimesnsion, -Y</li>
<li>sd_tBodyAcc-mean()-Z   -  the standard deviation of the mean of the the body acceleration separation of the the acceleration signal in a single dimesnsion, -Z</li>
<li>sd_tGravityAcc-mean()-X   -  the standard deviation of the mean of the the gravity acceleration separation of the the acceleration signal in a single dimesnsion, -X</li>
<li>sd_tGravityAcc-mean()-Y   -  the standard deviation of the mean of the the gravity acceleration separation of the the acceleration signal in a single dimesnsion, -Y</li>
<li>sd_tGravityAcc-mean()-Z   -  the standard deviation of the mean of the the gravity acceleration separation of the the acceleration signal in a single dimesnsion, -Z</li>
<li>sd_tBodyAccJerk-mean()-X   -  the standard deviation of the mean of the the derived linear acceleration (or jerk) signal in a single dimension, -X</li>
<li>sd_tBodyAccJerk-mean()-Y   -  the standard deviation of the mean of the the derived linear acceleration (or jerk) signal in a single dimension, -Y</li>
<li>sd_tBodyAccJerk-mean()-Z   -  the standard deviation of the mean of the the derived linear acceleration (or jerk) signal in a single dimension, -Z</li>
<li>sd_tBodyGyro-mean()-X   -  the standard deviation of the mean of the the angular velocity signal in a single dimension, -X</li>
<li>sd_tBodyGyro-mean()-Y   -  the standard deviation of the mean of the the angular velocity signal in a single dimension, -Y</li>
<li>sd_tBodyGyro-mean()-Z   -  the standard deviation of the mean of the the angular velocity signal in a single dimension, -Z</li>
<li>sd_tBodyGyroJerk-mean()-X   -  the standard deviation of the mean of the the derived angular velocity (or jerk) signal in a single dimension, -X</li>
<li>sd_tBodyGyroJerk-mean()-Y   -  the standard deviation of the mean of the the derived angular velocity (or jerk) signal in a single dimension, -Y</li>
<li>sd_tBodyGyroJerk-mean()-Z   -  the standard deviation of the mean of the the derived angular velocity (or jerk) signal in a single dimension, -Z</li>
<li>sd_tBodyAccMag-mean()   -  the standard deviation of the mean of the the magnitude of the linear acceleration</li>
<li>sd_tGravityAccMag-mean()   -  the standard deviation of the mean of the the magnitude of the gravity component of the linear acceleration</li>
<li>sd_tBodyAccJerkMag-mean()   -  the standard deviation of the mean of the the derived  linear acceleration of the signal</li>
<li>sd_tBodyGyroMag-mean()   -  the standard deviation of the mean of the the derived angular velocity of the signal</li>
<li>sd_tBodyGyroJerkMag-mean()-X   -  the standard deviation of the mean of the the angular velocity, derived in time to obtain Jerk signals in a single dimension, -X</li>
<li>sd_tBodyGyroJerkMag-mean()-Y   -  the standard deviation of the mean of the the angular velocity, derived in time to obtain Jerk signals in a single dimension, -Y</li>
<li>sd_tBodyGyroJerkMag-mean()-Z   -  the standard deviation of the mean of the the angular velocity, derived in time to obtain Jerk signals in a single dimension, -Z</li>
<li>sd_fBodyAcc-mean()-X   -  the standard deviation of the mean of the the linear acceleration of the signal in a single dimension, -X</li>
<li>sd_fBodyAcc-mean()-Y   -  the standard deviation of the mean of the the linear acceleration of the signal in a single dimension, -Y</li>
<li>sd_fBodyAcc-mean()-Z   -  the standard deviation of the mean of the the linear acceleration of the signal in a single dimension, -Z</li>
<li>sd_fBodyAccJerk-mean()-X   -  the standard deviation of the mean of the angular velocity were derived in time to obtain Jerk signal in a single dimension, -X</li>
<li>sd_fBodyAccJerk-mean()-Y   -  the standard deviation of the mean of the angular velocity were derived in time to obtain Jerk signal in a single dimension, -Y</li>
<li>sd_fBodyAccJerk-mean()-Z   -  the standard deviation of the mean of the angular velocity were derived in time to obtain Jerk signal in a single dimension, -Z</li>
<li>sd_fBodyGyro-mean()-X   -  the standard deviation of the mean of the the angular velocity of the signal in a single dimension, -X</li>
<li>sd_fBodyGyro-mean()-Y   -  the standard deviation of the mean of the the angular velocity of the signal in a single dimension, -Y</li>
<li>sd_fBodyGyro-mean()-Z   -  the standard deviation of the mean of the the angular velocity of the signal in a single dimension, -Z</li>
<li>sd_fBodyAccMag-mean()   -  the standard deviation of the mean of the the magnitude of the linear acceleration</li>
<li>sd_fBodyAccJerkMag-mean()   -  the standard deviation of the mean of the the derived magnitude of the linear acceleration</li>
<li>sd_fBodyGyroMag-mean()   -  the standard deviation of the mean of the the magnitude of the angular velocity</li>
<li>sd_fBodyGyroJerkMag-mean()   -  the standard deviation of the mean of the the derived magnitude of the angular velocity</li>
<li>sd_tBodyAcc-std()-X   -  the standard deviation of the standard deviation of the the body acceleration separation of the the acceleration signal in a single dimesnsion, -X</li>
<li>sd_tBodyAcc-std()-Y   -  the standard deviation of the standard deviation of the the body acceleration separation of the the acceleration signal in a single dimesnsion, -Y</li>
<li>sd_tBodyAcc-std()-Z   -  the standard deviation of the standard deviation of the the body acceleration separation of the the acceleration signal in a single dimesnsion, -Z</li>
<li>sd_tGravityAcc-std()-X   -  the standard deviation of the standard deviation of the the gravity acceleration separation of the the acceleration signal in a single dimesnsion, -X</li>
<li>sd_tGravityAcc-std()-Y   -  the standard deviation of the standard deviation of the the gravity acceleration separation of the the acceleration signal in a single dimesnsion, -Y</li>
<li>sd_tGravityAcc-std()-Z   -  the standard deviation of the standard deviation of the the gravity acceleration separation of the the acceleration signal in a single dimesnsion, -Z</li>
<li>sd_tBodyAccJerk-std()-X   -  the standard deviation of the standard deviation of the the derived linear acceleration (or jerk) signal in a single dimension, -X</li>
<li>sd_tBodyAccJerk-std()-Y   -  the standard deviation of the standard deviation of the the derived linear acceleration (or jerk) signal in a single dimension, -Y</li>
<li>sd_tBodyAccJerk-std()-Z   -  the standard deviation of the standard deviation of the the derived linear acceleration (or jerk) signal in a single dimension, -Z</li>
<li>sd_tBodyGyro-std()-X   -  the standard deviation of the standard deviation of the the angular velocity signal in a single dimension, -X</li>
<li>sd_tBodyGyro-std()-Y   -  the standard deviation of the standard deviation of the the angular velocity signal in a single dimension, -Y</li>
<li>sd_tBodyGyro-std()-Z   -  the standard deviation of the standard deviation of the the angular velocity signal in a single dimension, -Z</li>
<li>sd_tBodyGyroJerk-std()-X   -  the standard deviation of the standard deviation of the the derived angular velocity (or jerk) signal in a single dimension, -X</li>
<li>sd_tBodyGyroJerk-std()-Y   -  the standard deviation of the standard deviation of the the derived angular velocity (or jerk) signal in a single dimension, -Y</li>
<li>sd_tBodyGyroJerk-std()-Z   -  the standard deviation of the standard deviation of the the derived angular velocity (or jerk) signal in a single dimension, -Z</li>
<li>sd_tBodyAccMag-std()   -  the standard deviation of the standard deviation of the the magnitude of the linear acceleration</li>
<li>sd_tGravityAccMag-std()   -  the standard deviation of the standard deviation of the the magnitude of the gravity component of the linear acceleration</li>
<li>sd_tBodyAccJerkMag-std()   -  the standard deviation of the standard deviation of the the derived  linear acceleration of the signal</li>
<li>sd_tBodyGyroMag-std()   -  the standard deviation of the standard deviation of the the derived angular velocity of the signal</li>
<li>sd_tBodyGyroJerkMag-std()-X   -  the standard deviation of the standard deviation of the the angular velocity, derived in time to obtain Jerk signals in a single dimension, -X</li>
<li>sd_tBodyGyroJerkMag-std()-Y   -  the standard deviation of the standard deviation of the the angular velocity, derived in time to obtain Jerk signals in a single dimension, -Y</li>
<li>sd_tBodyGyroJerkMag-std()-Z   -  the standard deviation of the standard deviation of the the angular velocity, derived in time to obtain Jerk signals in a single dimension, -Z</li>
<li>sd_fBodyAcc-std()-X   -  the standard deviation of the standard deviation of the the linear acceleration of the signal in a single dimension, -X</li>
<li>sd_fBodyAcc-std()-Y   -  the standard deviation of the standard deviation of the the linear acceleration of the signal in a single dimension, -Y</li>
<li>sd_fBodyAcc-std()-Z   -  the standard deviation of the standard deviation of the the linear acceleration of the signal in a single dimension, -Z</li>
<li>sd_fBodyAccJerk-std()-X   -  the standard deviation of the standard deviation of the angular velocity were derived in time to obtain Jerk signal in a single dimension, -X</li>
<li>sd_fBodyAccJerk-std()-Y   -  the standard deviation of the standard deviation of the angular velocity were derived in time to obtain Jerk signal in a single dimension, -Y</li>
<li>sd_fBodyAccJerk-std()-Z   -  the standard deviation of the standard deviation of the angular velocity were derived in time to obtain Jerk signal in a single dimension, -Z</li>
<li>sd_fBodyGyro-std()-X   -  the standard deviation of the standard deviation of the the angular velocity of the signal in a single dimension, -X</li>
<li>sd_fBodyGyro-std()-Y   -  the standard deviation of the standard deviation of the the angular velocity of the signal in a single dimension, -Y</li>
<li>sd_fBodyGyro-std()-Z   -  the standard deviation of the standard deviation of the the angular velocity of the signal in a single dimension, -Z</li>
<li>sd_fBodyAccMag-std()   -  the standard deviation of the standard deviation of the the magnitude of the linear acceleration</li>
<li>sd_fBodyAccJerkMag-std()   -  the standard deviation of the standard deviation of the the derived magnitude of the linear acceleration</li>
<li>sd_fBodyGyroMag-std()   -  the standard deviation of the standard deviation of the the magnitude of the angular velocity</li>
<li>sd_fBodyGyroJerkMag-std()   -  the standard deviation of the standard deviation of the the derived magnitude of the angular velocity</li>
