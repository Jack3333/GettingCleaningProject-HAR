# GettingCleaningProject-HAR
Course project to practise downloading and tidying a dataset

The initial zipped dataset came from the Machine Learning Repository at the University of California, Irvine and was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
to a Windows 8.1 computer. The file was downloaded on April 11, 2015 at 8:43 PM, EDT.  The files were unzipped as text files using 7-Zip 9.20 for Windows.  

A description of the experiment:

*The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.*

*The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.* `(2)`

`run_analysis.R` converted the following text files into R objects using RStudio Version 0.98.1091 with R Version 3.1.2:  
(my modification of list appearing in ref. `(2)` below)

   - 'features.txt': List of all features.

    - 'activity_labels.txt': Links the class labels with their activity name.

    - 'train/X_train.txt': Training set.

    - 'train/y_train.txt': Training labels.
	
    - 'train/subject_train.txt': Subject IDs for the 7,352 rows.

    - 'test/X_test.txt': Test set.

    - 'test/y_test.txt': Test labels.    
    
    - 'test/subject_test.txt': Subject IDs for the 2,947 rows.
	
The data for a random 21 of the subjects were used as a machine learning training set.  The data for the remaining 
9 subjects were used to test the machine-learned algorithm.  

The script merges objects to attach activity and subject identifiers to the test data.  It then merges objects to attach activity and subject identifiers to the train data. The test and train data are then merged.

Task 2 of the assignment: "Extracts only the measurements on the mean and standard deviation for each measurement."
I interpreted measurement on the mean as requiring `mean()` in the name although there were 
an additional 23 variables such as `angle(tBodyAccMean,gravity)` where the name contains the word `mean `
but the value is not itself a mean.  The `activity` designation column, the `subject` ID column, the 33 variables with`mean()` in their names and the 33 columns with `st()` in the names are extracted as a data frame of 
10,299 observations on 2 key columns and 66 variables from the original 10,299 by 563 data frame.

Descriptive activity names replace the activity codes in the `act` column.

Separately for each of the 180 activity-subject groups, 66 averages are taken, one for each 
extracted signal variable.  The arithmetic mean of the number of observations being averaged for each
of the 180 activity-subject group was 57.2.  It is not clear to me from the available documentation 
what these multiple observations are.

I have pushed the text version of the final data set, averages.txt`, to my repository despite the fact
that the reviewers presumably have access to the file from my having attached it on the project submission
page.  I have taken this extra precaution because of past course projects where files did not transmit as
intended.

Normally, one would discuss the units of measurement in the code book and/or readme file.  
I have reviewed rather closely all the accessible documentation but I unfortunately can't
figure out what the units are. We learn that in the "Inertial Signals" data set one variable is measured
in radians/second but that may not be the case by the time we get to our data set.`(2.`)  It is clear that the signals were processed through various filters, Fast Fourier Transforms were applied `(3)` and "Features are normalized and bounded within [-1,1]." `(2)`  Perhaps the measures with which we are working are in a sense unit-free.

`1.` http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

`2.` http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names

`3.` https://www.elen.ucl.ac.be/Proceedings/esann/esannpdf/es2013-84.pdf

`4.` features_info.txt is contained in the zip file https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

