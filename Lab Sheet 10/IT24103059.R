setwd("C:\\Users\\VICTUS\\Desktop\\Lab8")
getwd()
observed<-c(55,62,43,46,50)
prob<-c(.2,.2,.2,.2,.2)
chisq.test(x=observed,p=prob)





##Q2

file_path <-  "http://www.sthda.com/sthda/RDoc/data/housetasks.txt" 

housetasks <- read.delim(file_path, row.names =  1)
housetasks

chisq <- chisq.test(housetasks)
chisq

##Q3
#Consider 25% level of significant for the class
#Rejection Region: if the p value for the test is less than 0.25,
#Reject the null hypothesis at 25%  level of significant
#P value for the test got as 2.2e-16


#Excercise
#Q1
observed <- c(120, 95, 85, 100)
prob <- c(.25, .25, .25, .25)
chisq.test(x=observed, p=prob)

#Part 2
#Consider 5% level of significance for the test.
#Rejection Region: If the p-value for the test is less than 0.05,
#reject the null hypothesis at 5% level of significance.
#P value for the test got as 0.08966.
#Conclusion: Since the p-value (0.08966) is greater than 0.05,
#do not reject the null hypothesis at 5% level of significance.
#Therefore, we can conclude that the probability that customers
#choose each snack type (A, B, C, and D) is the same, i.e., 0.25.

