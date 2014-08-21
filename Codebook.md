The original data, dispersed in various textiles, has been grouped together. \
Two variables have been added, \'ab\'a0subject\'a0\'bb and \'ab\'a0labels\'a0\'bb (which labels the activities. \
Also, both training and test sets have been grouped together. \
\
Then only std() and mean() variables have been retained. \
indeed, in the beginning, various other descriptors were available, and these have been removed. So, in the final clean dataset, there are 81 variables. \
all of these are means, by subject and activity, of the original variables, and the descriptions of these are below. \
\
The first is the subject number (integer), the second the activity (Walking, Walking upstairs etc, a factor), then 6 variables, describing mean and standard deviation in X, Y and Z directions of the Body acceleration, the same descriptors for Gravity acceleration, Body linear acceleration (\'ab\'a0accJerk) and angular velocity(Gyro and GyroJerk).\
Next, the mean and std of the magnitude of these three-dimensional signals are given, (calculated using the Euclidean norm);  (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).\
The application of a fast fourier transform produces further variables: preceded by an \'91f\'92, for the Body acceleration (X, y, Z, mean and std), and mean Frequency (X, Y, Z, and mean and std each), the Body acceleration Jerk bothe original and mean Frequency, (X, Y, Z, mean and std each time),  fBody Gyro and Freq, (XYZ, mean and std), fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag ((and - meanFreq) for the last 6 variables, all three directions and mean and std are again given. \
\
}