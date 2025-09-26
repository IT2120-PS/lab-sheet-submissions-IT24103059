setwd("C:\\Users\\IT24103059\\Desktop\\IT24103059")
getwd()
data<- read.table("Data - Lab 8.txt",header=TRUE)
fix(data)
attach(data)
popmn<-mean(Nicotine)
popvar<-var(Nicotine)

samples<-c()
n<-c()


for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
 s.means<-apply(samples,2,mean)
 s.means
 s.vars<-apply(samples,2,var)
 s.vars
 
 samplemean<-mean(s.means)
 samplevars<-var(s.means)
 
 popmn
 samplemean
 
 truevar=popvar/5
 samplevars
 
 
#Exercise
 
 data2<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
 fix(data2)
 attach(data2)
 #Q1

 popmn<- mean(Weight.kg.)
 popsd<-sd(Weight.kg.)
 
 
 #Q2
 samples<-c()
 sampleN<-c()
 
 for(i in 1:30){
   s<-sample(Weight.kg.,6,replace=TRUE)
   samples<-cbind(samples,s)
   sampleN<-c(sampleN,paste('S',i))
 }
 
 colnames(samples)<-sampleN
 
 #Q3
 samplemn<-apply(samples,2,mean)
 samplesd<-apply(samples,2,sd)

 
 totmean<-mean(samplemn)
 totsd<-sd(samplemn)
 
 
 
 popmn
 popsd
 totmean
 totsd
 