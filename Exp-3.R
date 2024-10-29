pbinom(9, 12, 1/6) - pbinom(6, 12, 1/6)
#or
diff(pbinom(c(6, 9), 12, 1/6))

#Q2
pnorm(84, 72, 15.2, lower.tail = FALSE) # for greater than 

dpois(0, 5)
ppois(50, 50) - ppois(47, 50)

#Q4
dhyper(3, 17, 233, 5)

 #Q5
x = seq(0, 31, 1)
n = 31
p = 0.447
pmf_value = dbinom(x, n, p)
plot(x, pmf_value, col = "red", type = "o")

cdf_value = pbinom(x, n, p)
plot(x, cdf_value, col = "red", type = "o")

#MEAN
mean = n * p
mean
var = n * p * (1 - p)
var
sd = sqrt(var)
sd

plot(x, cdf_value, col = "red")
points(x, pmf_value, col = "blue")

plot(x, cdf_value, col = "red", type = "o")
points(x, cdf)


p1 = 0.447
p2 = 0.157
cdf1 = pbinom(x, n, p1)
cdf2 = pbinom(x, n, p2)
plot(x, cdf1)
points(x, cdf2)


# for pmf
p1 = 0.447
p2 = 0.407
pmf1 = dbinom(x, n, p1)
pmf2 = dbinom(x, n, p2)
plot(x, pmf1, col = "red", type = "l")
points(x, pmf2, col = "blue", type = "l")

# bar plot
x = c(2, 3, 4)
y = c(5, 6, 7)
barplot(x, y, xlab = "X", ylab = "Y", col = c("blue", "red", "green"))
piechart(x, )
        
x = seq(-pi, pi, 0.01)
z = sin(x)
plot(x, z, col = "red")

y = cos(x)
plot(x, y, col = "blue")
points(x, z, col = "green")
