

The file dataset.txt is the outcome of script named run_analysis.R
Variables in dataset.txt :

subject 
activity
time-BodyAcc-mean-X
time-BodyAcc-mean-Y
time-BodyAcc-mean-Z
time-BodyAcc-std-X
time-BodyAcc-std-Y
time-BodyAcc-std-Z
time-GravityAcc-mean-X
time-GravityAcc-mean-Y
time-GravityAcc-mean-Z
time-GravityAcc-std-X
time-GravityAcc-std-Y
time-GravityAcc-std-Z
time-BodyAccJerk-mean-X
time-BodyAccJerk-mean-Y           
time-BodyAccJerk-mean-Z
time-BodyAccJerk-std-X
time-BodyAccJerk-std-Y
time-BodyAccJerk-std-Z
time-BodyGyro-mean-X
time-BodyGyro-mean-Y
time-BodyGyro-mean-Z
time-BodyGyro-std-X               
time-BodyGyro-std-Y
time-BodyGyro-std-Z
time-BodyGyroJerk-mean-X
time-BodyGyroJerk-mean-Y          
time-BodyGyroJerk-mean-Z
time-BodyGyroJerk-std-X
time-BodyGyroJerk-std-Y
time-BodyGyroJerk-std-Z           
time-BodyAccMag-mean
time-BodyAccMag-std
time-GravityAccMag-mean
time-GravityAccMag-std            
time-BodyAccJerkMag-mean
time-BodyAccJerkMag-std
time-BodyGyroMag-mean
time-BodyGyroMag-std              
time-BodyGyroJerkMag-mean
time-BodyGyroJerkMag-std
frequency-BodyAcc-mean-X
frequency-BodyAcc-mean-Y          
frequency-BodyAcc-mean-Z
frequency-BodyAcc-std-X
frequency-BodyAcc-std-Y
frequency-BodyAcc-std-Z           
frequency-BodyAccJerk-mean-X
frequency-BodyAccJerk-mean-Y
frequency-BodyAccJerk-mean-Z
frequency-BodyAccJerk-std-X       
frequency-BodyAccJerk-std-Y
frequency-BodyAccJerk-std-Z
frequency-BodyGyro-mean-X
frequency-BodyGyro-mean-Y         
frequency-BodyGyro-mean-Z
frequency-BodyGyro-std-X
frequency-BodyGyro-std-Y
frequency-BodyGyro-std-Z          
frequency-BodyAccMag-mean
frequency-BodyAccMag-std
frequency-BodyBodyAccJerkMag-mean
frequency-BodyBodyAccJerkMag-std  
frequency-BodyBodyGyroMag-mean
frequency-BodyBodyGyroMag-std
frequency-BodyBodyGyroJerkMag-mean
frequency-BodyBodyGyroJerkMag-std

Notes:
- subject is an integer between 1 and 30
- activity is a string that describes movement performed during measurement process
- other variables store a number that represents the mean calculation
- To clean raw data variables names were transformed in this way:
  1) replacing initial t and f letters with more descriptive words like time and frequency;
  2) deleting () from words
- To reproduce the file named "dataset.txt" unzip files stored in   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip into a folder named ucihar 
