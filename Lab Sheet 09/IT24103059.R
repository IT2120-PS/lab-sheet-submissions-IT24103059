setwd("C:\\Users\\VICTUS\\Desktop\\IT24103059")
getwd()

x<-c(3,7,11,0,7,0,4,5,6,2)
t.test(x,mu=3)

weight<-c(17.6,20.6,22.2,15.3,20.9,21.0,18.9,18.9,18.9,18.2)
t.test(weight,mu=25,alternative="less")

res<- t.test(weight,mu=25,alternative="less")
res$statistic
res$p.value
res$conf.int

y<-rnorm(30,mean=9.8,sd=0.05)
t.test(y,mu=10,alternative="greater")




#Excerice
#Q1
bkt<-rnorm(25,mean=45,sd=2)
bkt

#Q2
#Null hypothesis H0: mu = 46
#Alternative hypothesis H1: mu < 46
#So, ------  Hypothesis: H0: mu >= 46 vs H1: mu < 46
t.test(bkt,mu=46,alternative="less")

