Author: Genevieve Dupuis

Data:	WearableData1_GD, WearableData2_GD

Original source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

----------------------------
Codebook for final data sets
----------------------------
----------------------------

Identification variables:
--------------------------------
- ID (integer)

	- Codes: 1-30
  - Description: Participant identification (30 participants - 21 originally in training data, 9 originally in test data)


- activity (character)
	- Codes: 	"walking", "walking upstairs", "walking downstairs", "sitting", "standing", "laying"
	- Description: Activity type being measured.

------------------------------------------------------------------------------------------------------------------------------
Remaining variables (see further description below from original data):
--------------------------------

All are type numeric.
WearableData1_GD contains these variables in their raw form.
WearableData2_GD contains these variables averaged over each ID/activity combination.

tBodyAcc.mean...X    
tBodyAcc.mean...Y    
tBodyAcc.mean...Z    
tGravityAcc.mean...X    
tGravityAcc.mean...Y    
tGravityAcc.mean...Z    
tBodyAccJerk.mean...X    
tBodyAccJerk.mean...Y    
tBodyAccJerk.mean...Z    
tBodyGyro.mean...X    
tBodyGyro.mean...Y    
tBodyGyro.mean...Z    
tBodyGyroJerk.mean...X    
tBodyGyroJerk.mean...Y    
tBodyGyroJerk.mean...Z    
tBodyAccMag.mean..    
tGravityAccMag.mean..    
tBodyAccJerkMag.mean..    
tBodyGyroMag.mean..    
tBodyGyroJerkMag.mean..    
fBodyAcc.mean...X    
fBodyAcc.mean...Y    
fBodyAcc.mean...Z    
fBodyAccJerk.mean...X    
fBodyAccJerk.mean...Y    
fBodyAccJerk.mean...Z    
fBodyGyro.mean...X    
fBodyGyro.mean...Y    
fBodyGyro.mean...Z    
fBodyAccMag.mean..    
fBodyBodyAccJerkMag.mean..    
fBodyBodyGyroMag.mean..    
fBodyBodyGyroJerkMag.mean..    

tBodyAcc.std...X    
tBodyAcc.std...Y    
tBodyAcc.std...Z    
tGravityAcc.std...X    
tGravityAcc.std...Y    
tGravityAcc.std...Z    
tBodyAccJerk.std...X    
tBodyAccJerk.std...Y    
tBodyAccJerk.std...Z    
tBodyGyro.std...X    
tBodyGyro.std...Y    
tBodyGyro.std...Z    
tBodyGyroJerk.std...X    
tBodyGyroJerk.std...Y    
tBodyGyroJerk.std...Z    
tBodyAccMag.std..    
tGravityAccMag.std..    
tBodyAccJerkMag.std..    
tBodyGyroMag.std..    
tBodyGyroJerkMag.std..    
fBodyAcc.std...X    
fBodyAcc.std...Y    
fBodyAcc.std...Z    
fBodyAccJerk.std...X    
fBodyAccJerk.std...Y    
fBodyAccJerk.std...Z    
fBodyGyro.std...X    
fBodyGyro.std...Y    
fBodyGyro.std...Z    
fBodyAccMag.std..    
fBodyBodyAccJerkMag.std..    
fBodyBodyGyroMag.std..    
fBodyBodyGyroJerkMag.std..    

--------------------------------------------------------------------------------------------------------------------------
Note! Steps for modifying data from original source to final data set for project are described clearly within run_analysis.R. 
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
End of GD modifications to codebook. Below is original codebook information.

--------------------------------------------------------------------------------------------------------------------------


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using 
a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the 
acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using 
another low pass Butterworth filter with a corner frequency of 0.3 Hz. 


Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the 
Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 


Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 


These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


tBodyAcc-XYZ;
tGravityAcc-XYZ;
tBodyAccJerk-XYZ;
tBodyGyro-XYZ;
tBodyGyroJerk-XYZ;
tBodyAccMag;
tGravityAccMag;
tBodyAccJerkMag;
tBodyGyroMag;
tBodyGyroJerkMag;
fBodyAcc-XYZ;
fBodyAccJerk-XYZ;
fBodyGyro-XYZ;
fBodyAccMag;
fBodyAccJerkMag;
fBodyGyroMag;
fBodyGyroJerkMag;


The set of variables that were estimated from these signals are: 


mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:


gravityMean;
tBodyAccMean;
tBodyAccJerkMean;
tBodyGyroMean;
tBodyGyroJerkMean;


The complete list of variables of each feature vector is available in 'features.txt'
