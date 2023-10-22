################# (1)
# 5.2a
(dframe <- data.frame(person = c("Stan","Francine","Steve","Roger","Haley",
                                "Klaus"), 
                      sex = factor(c("M","F","M","M","F","M")), 
                      funny = factor(c("High","Med","Low","High","Med","Med"))))
# 5.2b
agecolumn <- data.frame(age = c(41,41,15,1600,21,60))
(dframe <- cbind(dframe,agecolumn))

# 5.2c
(dframe <- dframe[c(1,4,2,3)])

################# (2)
# 13.3b(i)
IQR(quakes$depth)

# 13.3b(ii)
summary(quakes$mag[quakes$depth > 400])

# 14.1a
hist(InsectSprays$count, xlab = "Spray Count", 
     main = "Histogram of Spray Count", col = "lightblue")

################# (3)
# 15.1a
# Draw ace probability from deck
(ace <- (4/52))
# Draw 4 of spades probability from deck
(Fourofspades <- (1/52))

# 15.2a
# i. realization of a random variable
# ii. random variable
# iii. random variable
# iv.  random variable
# v. realization of a random variable
# vi. random variable

# 15.2b(i)
(s4 <- 1 - (0.10 + 0.13 + 0.21 + 0.15))

# 15.2b(ii)
(prob <- c(0.10, 0.13, 0.21, s4, 0.15))
cumsum(prob)

# 15.2b(iii)
x <- c(1, 2, 3, 4, 5)
(mean <- sum(x*prob))
