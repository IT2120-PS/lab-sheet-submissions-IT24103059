setwd("C:\\Users\\IT24103059\\Desktop\\IT24103059")
getwd()



data <- read.table("Data.txt",header=TRUE,sep = ",")


fix(data)


attach (data)


names (data) <- c("x1","x2")


attach (data)


hist (x2,main="Histogram for Number of Shareholders")


histogram <- hist(x2,main="Histogram for Number of Shareholders",breaks = seq(130, 270, length = 8), right = FALSE)


?hist


breaks <- round(histogram$breaks)

freq <- histogram$counts

mids <- histogram$mids


classes <- c()


for(i in 1:length(breaks)-1){
  classes [i] <- paste0("[", breaks [i], ",", breaks [i+1], ")")
}
  

  cbind(Classes = classes, Frequency = freq)

 
  lines (mids, freq)
  
 .
  plot(mids, freq, type = '1', main = "Frequency Polygon for Shareholders",xlab = "Shareholders", ylab = "Frequency", ylim = c(0,max(freq)))  

  
  
  cum.freq <- cumsum(freq)
  
 
  new <- c()
  
  for(i in 1:length (breaks)){
    if(i == 1){
      new[i]= 0
      }else{
        new[i]= cum.freq[i-1]
      }
  }
       
        plot(breaks, new, type = '1', main = "Cumalative Frequency Polygon for Shareholders",xlab = "Shareholders", ylab = "Cumulative Frequency", ylim = c(0,max(cum.freq)))
       
        cbind(Upper = breaks, CumFreq = new)

Delivery_Times<- read.table("Exercise - Lab 05.txt",header=TRUE,sep = ",")      
fix(Delivery_Times)
attach(Delivery_Times)
histogram <- hist(Delivery_Time_.minutes.,main="Histogram for Number of Deliever Times",
                  breaks = seq(20,70,length = 10), right = TRUE)

#The historgram has bimodal shape which is have two peak points

breaks1<-round(histogram$breaks)
freq1<-histogram$counts
cum.freq1<-cumsum(freq1)

new1 <- c()

for(i in 1:length (breaks1)){
  if(i == 1){
    new1[i]= 0
  }else{
    new1[i]= cum.freq1[i-1]
  }
}


plot(breaks1, new1, type = 'l', main = "Cumulative Frequency Polygon for Delivery_Times",
     xlab = "Delivery_Times", ylab = "Cumulative Frequency",
     ylim = c(0, max(cum.freq1)))
