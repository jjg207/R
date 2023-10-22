##### 1. Exercises 3.1,b
x <- matrix(c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5),nrow=4,ncol=2)
print(x)
x <- x[-4,]
dim(x)
print(x)

##### 2. Exercises 13.1a and 13.1b

##13.1a(i) numeric-discrete variable
##13.1a(ii) categorical-ordinal variable
##13.1a(iii) numeric-continuous variable
##13.1a(iv) categorical-ordinal variable
##13.1a(v) categorical-nominal variable
##13.1a(vi) numeric-continuous variable

##13.1b(i) sample statistic
##13.1b(ii) sample statistic
##13.1b(iii) population parameter (domestic cats that wear a collar in the U.S.)
##13.1b(iv) population parameter (vending machines that are used)
##13.1b(v) sample statistic

##### 3. Exercises 13.3 b (i) and (ii) 

## 13.3b(i)
IQR(quakes$depth)

## 13.3b(ii)
summary(quakes$mag[quakes$depth>400])
# I noticed that the seismic events that occur at a depth of 400 km or less
# have a greater magnitude compared to the seismic events that occur at a depth 
# of 400 km or deeper

##### 4. Exercises 14.1 a,b

## 14.1a
hist(InsectSprays$count, breaks=seq(0,30,5), ylab = "Total Number of Insects", 
     xlab = "Count" , col="gray" , main = "Histogram of the counts of insects")

## 14.1b
x <- tapply(InsectSprays$count, INDEX=InsectSprays$spray, FUN=sum)
print(x)

barplot(x, col = c("blue", "red" , "orange" , "green" ,"purple" , "yellow"), 
        xlab = "Spray type", ylab="Number of insects",
        main = "Total number of insects found according to each spray type" , 
        cex.main=1 )

pie(x, labels = c("Type A" , "Type B" , "Type C" ,"Type D" , "Type E" , 
                  "Type F"), col = c("blue", "red" , "orange" , "green" ,
                                           "purple" , "yellow"),
    main = "Total number of insects found according to each spray type", 
    cex.main = 1)


