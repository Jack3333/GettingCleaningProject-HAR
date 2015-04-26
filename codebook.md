# CODE BOOK

**Three distinct data frames:**

1. The initial data frame designated as`combasd` in `run_analysis.R`.  
	10,299 observations for 563 variables.
	
2. The data frame of extracted mean() and std() variables designated as 
   `setA` in `run_analysis.`. 
	10,299 observations for 68 variables. Two of the 68 variables are 
	key columns and 66 are value columns.
	
3. The data frame of values averaged for each activity-subject combination, 
   designated as `avgset` in `run_analysis.R`.  This is the `averages` data set
   submitted in text format as part of the current project.
   180 observations for 68 variables. There were 6 activities and 30 subjects 
   resulting in 180 activity-subject pairs.  The arithmetic mean number of 
   replications per activity-subject pair was 57.2, resulting in the 10,299
   observations in the raw dataset.
   
**This code book pertains to the third data frame, `avgset`.**

 
 
| column number  |  variable name          |  values                     |
| :-------------:| :-----------------------|  :--------------------------| 
|       1        |  **act**                | walking                     |
|		         |                 | walking upstairs            |
|                |                 | walking downstairs          | 
|                |                 | sitting                     |                 
|                |                 | standing                    |
|                |                 | lying                       |
|                |                 |                             ||       2        |  **sub**        | integers 1:30               |
|                |                 |                             |
|       3        |**Avg-tBodyAcc-mean()-X**|  range: 0.2215982 *to* 0.301461 |            
|                   
|      4         |**Avg-tBodyAcc-mean()-Y**|  range:  -0.04051395 *to* -0.001308288 |
|                |                 |                             |
|       5        |**Avg-tBodyAcc-mean()-Z**|   range:  -0.1525139 *to*  -0.07537847 ||                |                 |                             |
 colnames(avgset) shows the variable names for columns 1-68.

 [1] "act"                             "sub"                            
 [3] "Avg-tBodyAcc-mean()-X"           "Avg-tBodyAcc-mean()-Y"          
 [5] "Avg-tBodyAcc-mean()-Z"           "Avg-tGravityAcc-mean()-X"       
 [7] "Avg-tGravityAcc-mean()-Y"        "Avg-tGravityAcc-mean()-Z"       
 [9] "Avg-tBodyAccJerk-mean()-X"       "Avg-tBodyAccJerk-mean()-Y"      
[11] "Avg-tBodyAccJerk-mean()-Z"       "Avg-tBodyGyro-mean()-X"         
[13] "Avg-tBodyGyro-mean()-Y"          "Avg-tBodyGyro-mean()-Z"         
[15] "Avg-tBodyGyroJerk-mean()-X"      "Avg-tBodyGyroJerk-mean()-Y"     
[17] "Avg-tBodyGyroJerk-mean()-Z"      "Avg-tBodyAccMag-mean()"         
[19] "Avg-tGravityAccMag-mean()"       "Avg-tBodyAccJerkMag-mean()"     
[21] "Avg-tBodyGyroMag-mean()"         "Avg-tBodyGyroJerkMag-mean()"    
[23] "Avg-fBodyAcc-mean()-X"           "Avg-fBodyAcc-mean()-Y"          
[25] "Avg-fBodyAcc-mean()-Z"           "Avg-fBodyAccJerk-mean()-X"      
[27] "Avg-fBodyAccJerk-mean()-Y"       "Avg-fBodyAccJerk-mean()-Z"      
[29] "Avg-fBodyGyro-mean()-X"          "Avg-fBodyGyro-mean()-Y"         
[31] "Avg-fBodyGyro-mean()-Z"          "Avg-fBodyAccMag-mean()"         
[33] "Avg-fBodyBodyAccJerkMag-mean()"  "Avg-fBodyBodyGyroMag-mean()"    
[35] "Avg-fBodyBodyGyroJerkMag-mean()" "Avg-tBodyAcc-std()-X"           
[37] "Avg-tBodyAcc-std()-Y"            "Avg-tBodyAcc-std()-Z"           
[39] "Avg-tGravityAcc-std()-X"         "Avg-tGravityAcc-std()-Y"        
[41] "Avg-tGravityAcc-std()-Z"         "Avg-tBodyAccJerk-std()-X"       
[43] "Avg-tBodyAccJerk-std()-Y"        "Avg-tBodyAccJerk-std()-Z"       
[45] "Avg-tBodyGyro-std()-X"           "Avg-tBodyGyro-std()-Y"          
[47] "Avg-tBodyGyro-std()-Z"           "Avg-tBodyGyroJerk-std()-X"      
[49] "Avg-tBodyGyroJerk-std()-Y"       "Avg-tBodyGyroJerk-std()-Z"      
[51] "Avg-tBodyAccMag-std()"           "Avg-tGravityAccMag-std()"       
[53] "Avg-tBodyAccJerkMag-std()"       "Avg-tBodyGyroMag-std()"         
[55] "Avg-tBodyGyroJerkMag-std()"      "Avg-fBodyAcc-std()-X"           
[57] "Avg-fBodyAcc-std()-Y"            "Avg-fBodyAcc-std()-Z"           
[59] "Avg-fBodyAccJerk-std()-X"        "Avg-fBodyAccJerk-std()-Y"       
[61] "Avg-fBodyAccJerk-std()-Z"        "Avg-fBodyGyro-std()-X"          
[63] "Avg-fBodyGyro-std()-Y"           "Avg-fBodyGyro-std()-Z"          
[65] "Avg-fBodyAccMag-std()"           "Avg-fBodyBodyAccJerkMag-std()"  
[67] "Avg-fBodyBodyGyroMag-std()"      "Avg-fBodyBodyGyroJerkMag-std()"
 
The following is copied directly from my README file since it appears relevant here:
 
Normally, one would discuss the units of measurement in the code book and/or readme file.  
I have reviewed rather closely all the accessible documentation but I unfortunately can't
figure out what the units are. We learn that in the "Inertial Signals" data set one variable is measured
in radians/second but that may not be the case by the time we get to our data set.`(2.`)  It is clear that the signals were processed through various filters, Fast Fourier Transforms were applied `(3)` and "Features are normalized and bounded within [-1,1]." `(2)`  Perhaps the measures with which we are working are in a sense unit-free.

`1.` http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

`2.` http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names

`3.` https://www.elen.ucl.ac.be/Proceedings/esann/esannpdf/es2013-84.pdf

`4.` features_info.txt is contained in the zip file https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
