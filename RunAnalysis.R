library(plyr)
library(Hmisc)
library(reshape2)


#read all of data; commented here since not part of assignment; see README.md
test<-read.table("./test/X_test.txt")
subjects_test<-read.table("./test/subject_test.txt")
labels_test<-read.table("./test/y_test.txt")

train<-read.table("./train/X_train.txt")
subjects_train<-read.table("./train/subject_train.txt")
labels_train<-read.table("./train/y_train.txt")
names_vars<-read.table("./features.txt")
#put together data and labels etc
test_complete<-cbind(subjects_test,labels_test,test)
train_complete<-cbind(subjects_train,labels_train,train)
#handle variable names
names_vars<-read.table("./features.txt")
names_vars<-as.character(names_vars$V2)
names_vars<-rbind("subject","labels",names_vars)
#add varnames to columns
names(test_complete)<-names_vars
names(train_complete)<-names_vars
#put together test and train
Full_dataset<-rbind(train_complete,test_complete)
#cleanup
rm(labels_test,labels_train,test,test_complete,train,train_complete,subjects_test,subjects_train)
#make labels readable
Full_dataset$labels<-factor(Full_dataset$labels,labels=c("Walking","Walking_upstairs","Walking_downstairs","Sitting","Standing","Laying"))
#keep only means and sds
x<-names(Full_dataset)
y<-grep("mean()",x)
z<-grep("std()",x)
varstoretain<-sort(c(1,2,y,z))
MeansSDs<-Full_dataset[,varstoretain]
#create a new dataset, with the means of these stds and means by subject and activity
DataMelt<-melt(MeansSDs,id=c("subject","label"),measure.vars(.))
DataMelt<-melt(MeansSDs,id=c("subject","labels"))
subjectactivity<-dcast(DataMelt,subject+labels~variable,mean)

write.table(subjectactivity,file="MeanBySubjAndAct.txt",row.names=FALSE)


