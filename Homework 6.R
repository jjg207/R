######### HW 6

# 16.4a(i)
pnorm(20, mean = 17, sd = 4.5)

# 16.4a(ii)
pnorm(10, mean = 17, sd = 4.5) - pnorm(5, mean = 17, sd = 4.5)

# 16.4a(iii)
(m <- qnorm(.90, mean = 17, sd = 4.5))

# 16.4a(iv)
mean_ <- 17
sd_ <- 4.5
x <- (seq(-4, 4, length = 200)*sd_ + mean_)
y <- dnorm(x, mean = 17 , sd = 4.5)
z <- plot(x, y, type = "l",lwd = 1, col="blue")
abline(h = 0,col = "gray")
abline(v= c((mean_ + 4), (mean_ - 4),mean_),lty = c(2,3,1))
legend("topleft", legend = c("21\n(mean + 4sd)", "\n17\n(mean)", 
                             "\n13\n(mean - 4sd)"), lty = c(2,1,3), bty = "n")
polygon(c(x[x >= m], max(x)), c(y[x == max(x)], y[x >= m]), col = "gray")
arrows(x0 = 26, y0 = 0.02, x1 = 28, y1 = 0.03, 
       angle = 40, code = 1, col = "darkgreen") 
text(x = 30, y = 0.035, labels = "Slowest 10% of students", cex = 0.8)

# 16.4b(i)
standard_deviation <- sqrt(2)
(p1 <- pnorm(11, mean = 10, sd = standard_deviation) - 
  pnorm(9.5, mean = 10, sd = standard_deviation))

# 16.4b(ii)
mean_bladelength <- 10

(standardizedvalueof11 <- (11 - mean_bladelength)/standard_deviation)
(standardizedvalueof9.5 <- (9.5 - mean_bladelength)/standard_deviation)

(p2 <- pnorm(standardizedvalueof11, mean = 0, sd = 1) - 
  pnorm(standardizedvalueof9.5, mean = 0, sd = 1))

p1 == p2

# 16.4b(iii)
(X <- qnorm(.025, mean = 10, sd = standard_deviation))

# 16.4b(iv)
(standardizedvalueofX <- (X - mean_bladelength)/standard_deviation)



######### Additional Exercises

# 1
sum_of_n <- function(n)
{
  if(n > 0)
    return(n*(n+1)/2)
  else(n < 0)
    print("number must be positive")
}
sum_of_n(2)
sum_of_n(-2)

# 2
for(i in 1:7){
  print(i^2)
}

# 3
my_function <- function(a,b){
  if(is.numeric(a) & is.numeric(b))
    return(a+b)
  else
    print("the arguments were not both numeric")
}
my_function(10,20)
my_function(10,"cat")

