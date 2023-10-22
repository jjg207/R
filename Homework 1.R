######### 1. Textbook Exercises

###### A)

#2.1 a)
a <- 2.3
(6*a+42)/(3^(4.2-3.62))

#2.1 b)
(-4)^2+2
## Choice i. would square negative 4 and add 2 to the result

#2.1 c)
sqrt(((25.2+15+16.44+15.3+18.6)/5)/2)

###### B)

#2.2 a)
b <- 3^(2)*4^(1/8)
print(b)

#2.2 b)
b <- b/2.33
print(b)

###### C)

#2.3 a)
d <- c(seq(from=5, to=-11, by=-0.3))
print(d)

#2.3 b)
d <- sort(d, decreasing = FALSE)
print(d)



######### 2. Working with square bracket notation []
x <- c(5,7,3,10,1)

#a) extract the 3rd element of x
print(x[3])

#b) extract all elements of x except the second element of x
print(x[-2])

#c) extract the 2nd , 3rd and 5th elements of x
print(x[c(2,3,5)])

#d) Add 17 as the 4th element of x
x[4] <- 17
print(x)

#e) Replace the 1st and 3rd elements of x with the number 4
x[c(1,3)] <- 4
print(x)



######### 3. Given the p <- c(2,3,4,6,6) and q<- c(7,2,4,3,2)
p <- c(2,3,4,6,6)
q <- c(7,2,4,3,2)

#a) What is the value of p+q
print(p+q)

#b) What is the value of sum(p+q)
print(sum(p+q))

#c) How do a) and b) differ?
## a) and b) differ in the aspect that in a) the corresponding elements of each  
## vector are added together that is the first element of vector p which is 2 
## and first element of vector q which is 7 are added together to form a new
## first element which adds up to 9 then the second elements 3 and 2 add up to
## 5 and so on. However, in b) all the elements are added together to the sum
## of 39 due to the use of sum() which breaks down the element aspect of the
## numbers in vectors p and q and allows all the numbers to be added together
## without the restriction of the elemental aspect of the vector.



######### 4. If x<-c(1:12) write code to find the length of x
x <- c(1:12)
print(length(x))