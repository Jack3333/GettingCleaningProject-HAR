## CODE BOOK

**Three distinct data frames:**

1. The initial data frame designated as *combasd* in *run_analysis.R*.  
	10,299 observations for 563 variables.
	
2. The data frame of extracted mean() and std() variables designated as 
   *setA* in *run_analysis.R*. 
	10,299 observations for 68 variables. Two of the 68 variables are 
	key columns and 66 are value columns.
	
3. The data frame of values averaged for each activity-subject combination, 
   designated as *avgset* in *run_analysis.R*.  This is the *averages* data set
   submitted in text format as part of the current project.
   180 observations for 68 variables. There were 6 activities and 30 subjects 
   resulting in 180 activity-subject pairs.  The arithmetic mean number of 
   replications per activity-subject pair was 57.2, resulting in the 10,299
   observations in the raw dataset.
   
**This code book pertains to the third data frame, *avgset*.**

 
 
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
|       3        |**Avg-tBodyAcc-mean()-X**|                             |
|                |                 |                             ||                |                 |                             |
|                |                 |                             |
|                |                 |                             |
|                |                 |                             ||                |                 |                             |
|                |                 |                             |
|                |                 |                             |
|                |                 |                             ||                |                 |                             |
|                |                 |                             |
|                |                 |                             |
|                |                 |                             ||                |                 |                             |
|                |                 |                             |
|                |                 |                             |
|                |                 |                             ||                |                 |                             |
|                |                 |                             |
|                |                 |                             |
|                |                 |                             ||                |                 |                             |
|                |
|                |
 
 