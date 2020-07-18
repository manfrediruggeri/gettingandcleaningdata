    # Cleaning and Getting Data Project
    
    library(dplyr)
    # Read downloaded files
    act1 <- read.table("ucihar/test/y_test.txt")
    act2 <- read.table("ucihar/train/y_train.txt")
    dat1 <- read.table("ucihar/test/X_test.txt")
    dat2 <- read.table("ucihar/train/X_train.txt")
    subj1 <- read.table("ucihar/test/subject_test.txt")
    subj2 <- read.table("ucihar/train/subject_train.txt")
    
    #merge subject sets
    subj <- rbind(subj1, subj2)
    names(subj) <- "subject"
    
    #merge activity sets
    act <- rbind(act1, act2)
    names(act) <- "activity"
    
    #descriptive activity name 
    actname <- read.table("ucihar/activity_labels.txt")
    for(i in 1:nrow(act)) {
        label <- act[i,1]
        act[i,1] <- actname[label,2]
    }
    
    #merge datasets
    dat <- rbind(dat1, dat2)
    datname <- read.table("ucihar/features.txt")
    names(dat) <- datname[,2]
    
    #subset columns where there is mean or std calculation
    subsetdat <- dat[,grep("mean\\(\\)|std\\(\\)", datname[,2])]
    
    #descriptive names in columns
    names(subsetdat) <- gsub("^t", "time-", names(subsetdat))
    names(subsetdat) <- gsub("^f", "frequency-", names(subsetdat))
    names(subsetdat) <- gsub("\\(\\)", "", names(subsetdat))
    
    #Clean dataset
    tidydata <- cbind(subj, act, subsetdat)
    
    #second dataset as requested
    grouped <- group_by(tidydata, subject, activity)
    secondtidydata <- summarise_each(grouped, funs(mean))
    write.table(secondtidydata, "dataset.txt", row.names=FALSE)
    