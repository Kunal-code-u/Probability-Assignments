#1
x <- c(0, 1, 2, 3, 4)
px <- c(0.41, 0.37, 0.16, 0.05, 0.01)
sum(x * px)
weighted.mean(x, px)
c(x %*% px)

#2 use integration 
f <- function(t) {
  0.1 * exp(-0.1 * t)
}

expected_value <- function(t) {
  t * f(t)
}

result <- integrate(expected_value, lower = 0, upper = Inf)
print(result$value)

#3
x <- c(0, 1, 2, 3)
p <- c(0.1, 0.2, 0.2, 0.5)
#y <- c(6, 16, 26, 36)

f <- function(x) {
  10 * x - 12
}


expected_value_y = sum(f(x) * p)
print(expected_value_y)


# Define the PDF f(x)
f_x <- function(x) {
  0.5 * exp(-abs(x))
}

first_moment <- integrate(function(x) x * f_x(x), lower = 1, upper = 10)$value
print(first_moment)

second_moment <- integrate(function(x) x^2 * f_x(x), lower = 1, upper = 10)$value
print(second_moment)

mean_X <- first_moment  # E(X)
print(mean_X)

variance_X <- second_moment - (mean_X^2)  # E(X^2) - (E(X))^2
print(variance_X)

#5
# Step 1: Define the geometric probability mass function for X
f_X <- function(x) {
  (3/4) * (1/4)^(x - 1)
}

# Step 2: Function to calculate probability distribution of Y = X^2
prob_Y <- function(x) {
  y <- x^2
  prob <- f_X(x)
  return(list(Y = y, Probability = prob))
}
