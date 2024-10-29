#Create a vector c = [5,10,15,20,25,30] and write a program which returns the maximum and minimum of this vector
# create a vector
a <- c(5, 10, 15, 20, 25, 30)
# find the max value
max_value <- max(a)
# find the min value
min_value = min(a)
# print result
print(paste("The maximum value is:", max_value))
print(paste("The minimum value is:", min_value))

#Write a program in R to find factorial of a number by taking input from user. Please
#print error message if the input number is negative.

# Take input from the user
number = as.numeric(readline(prompt = "Enter a number: ")) # we need to convert input to numeric
# Check if the input is negative
if (number < 0) {
  print("Error Factorial of number doesn't exits.")
} else {
  # Calculate the factorial using a loop
  fact = 1;
  if (number == 0) {
    fact = 1;
  } else {
      for (i in 1 : number) {
        fact = fact * i
      }
  }
  print(paste("The factorial of", number, "is:", fact))
}

#Write a program to write first n terms of a Fibonacci sequence. You may take n as an
#input from the user
n = as.integer(readline(prompt = "Enter the number of terms: "))
# Step 2: Initialize the first two terms of the Fibonacci sequence
fibonacci <- numeric(n) # Create a vector of length n filled with 0s
fibonacci[1] <- 0 # The first term is 0
if (n > 1) {
  fibonacci[2] <- 1 # The second term is 1
}
# Step 3: Calculate the Fibonacci sequence
for (i in 3 : n) {
  fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2] # Sum of the previous two terms
}
print(fibonacci)

#Write an R program to make a simple calculator which can add, subtract, multiply and divide
# Step 1: Ask the user for two numbers
n1 <- as.numeric(readline(prompt = "Enter the first number: "))
n2 <- as.numeric(readline(prompt = "Enter the second number: "))
# Step 2: Ask the user to choose an operation
cat("Choose an operation: +, -, *, /\n")
operation <- readline(prompt = "Enter the operation: ")
# Step 3: Perform the chosen operation using a conditional statement
result <- NULL  # Initialize the result variable
if (operation == "+") {
  result = n1 + n2
} else if (operation == "-") {
  result = n1 - n2
} else if (operation == "*") {
  result = n1 * n2
} else if (operation == "/"){
  if (n2 != 0) {
    result = n1 / n2
  } else {
    result = "Error division by zero"
  }
} else {
  result = "Invalid operation"
}

# print the result
cat("The result is ", result, "\n");

#1. Scatter Plot Using plot() A scatter plot is useful for visualizing the relationship between two variables.
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)
plot(x, y, main = "Scatter Plot", xlab = "X-Axis", ylab = "Y-Axis", col = "green", pch = 16)

#2. Pie Chart Using pie() A pie chart represents parts of a whole.
slices <- c(10, 20, 30, 40)
labels <- c("A", "B", "C", "D")
pie(slices, labels = labels, main = "Pie Chart", col = rainbow(length(slices)))

#3. Bar Plot Using barplot() A bar plot displays data in bars of different heights.
values <- c(5, 10, 15, 20)
barplot(values, main = "Bar Plot", xlab = "Categories", ylab = "Values", names.arg = c("A", "B", "C", "D"), col = "lightblue", border = "black")

#4. Histogram Using hist() A histogram shows the distribution of a dataset.
data <- c(1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5)
hist(data, main = "Histogram", xlab = "values", col = "green", border = "black")

#5. Box Plot Using boxplot()
data <- list(A = c(1, 2, 3, 4, 5), B = c(2, 3, 4, 5, 6), C = c(1, 3, 4, 6, 8))
boxplot(data, main = "Box Plot", xlab = "Group", ylab = "Value", col = c("red", "yellow", "blue"))





