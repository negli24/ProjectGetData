Personal project in the coursera datascience course on Getting Data\
the raw data is from the following project:\
\
==================================================================
\
Human Activity Recognition Using Smartphones Dataset
\
Version 1.0
\
==================================================================
\
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
\
Smartlab - Non Linear Complex Systems Laboratory
\
DITEN - Universit\'87 degli Studi di Genova.
\
Via Opera Pia 11A, I-16145, Genoa, Italy.
\
activityrecognition@smartlab.ws
\
www.smartlab.ws
\
==================================================================\
\
downloaded from {\field{\*\fldinst{HYPERLINK "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"}}{\fldrslt 
\f1\fs28 \cf2 \cb3 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip}}
\f1\fs28 \cf2 \cb3 \
\
\
these data have been read into R, creating 6 variables: \
test,subjects_test,labels_test, train, subjects_train, labels_train\
issued from a training and a test set, where train and test are the data, and subjects and labels designate the subjects and activities for each of the observations in the data. \
\
the script RunAnalysis.R will first of all create a data frame including all 6 of these sources, as well as a supplementary variable, train_test, indicating whether a given observation originates from the training or the test set. \
\
Also, variable names are added from the original fil features.txt\
\
Finally, the Script (only one script to run) will write a textile, MeansBySubjAndAct.txt to the working directory. See relevant explanations of this textile in the Codebook.md. \
\
\
\
}