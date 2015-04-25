library(dplyr)

# reading test subsample dataset into R
testdat<-read.table("./test/X_test.txt")
testsub<-read.table("./test/subject_test.txt")
testact<-read.table("./test/y_test.txt")
testasd<-cbind(testact,testsub, testdat)

# reading train subsample dataset into R
traindat<-read.table("./train/X_train.txt")
trainsub<-read.table("./train/subject_train.txt")
trainact<-read.table("./train/y_train.txt")
trainasd<-cbind(trainact,trainsub, traindat)

# merging test and train datasets (task #1 of assignment)
combasd<-rbind(trainasd, testasd)

# changing column names 
feat<-as.character(read.table("./features.txt")$V2)
feat<-append(feat, c ("act", "sub"), 0)
colnames(combasd)<-feat

# extracting mean and standard deviation measurements (task #2 of assignment)
# interpteted instructions as pertaining to series means ("mean()") (33 variables)
# rather than simply having the word "mean" in label (56 variables). Variables
# such as "angle(tBodyAccMean,gravity)" appear to be angles rather than means.
logm<-grepl("-mean()", feat, fixed = TRUE)
logm[1:2]<-TRUE
combselm<-combasd[,logm]
logs<-grepl("-std()", feat, fixed = TRUE)
combsels<-combasd[,logs]
combms<-cbind(combselm, combsels)

# Adding descriptive activity names (task #3 of assignment)
setA<-arrange(combms, act, sub )
setA$act[setA$act== 1]<- "walking"
setA$act[setA$act== 2]<- "walking upstairs"
setA$act[setA$act== 3]<- "walking downstairs"
setA$act[setA$act== 4]<- "sitting"
setA$act[setA$act== 5]<- "standing"
setA$act[setA$act== 6]<- "lying"
write.table(setA, "./data1.txt",sep = "\t", row.name = FALSE )

# Calculate means over replicatins (task #5 of assignment)
avgrp<-group_by(setA, act,sub)
avgset<-summarise_each(avgrp, funs(mean))

# attach appropriate variable names (task #4 of assignment)
colnames(avgset)[-c(1:2)]<-paste("Avg", colnames(avgset)[-c(1:2)], sep="-")
write.table(avgset, "./averages2.txt", sep = "\t", row.name = FALSE)



                           
                          