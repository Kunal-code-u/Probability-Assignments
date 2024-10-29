#Q1(a)
# Step 1: Create a vector representing the chest of coins
coins <- c(rep("Gold", 20), rep("Silver", 30), rep("Bronze", 50))

# Step 2: Draw 10 coins randomly from the chest
sampled_coins <- sample(coins, 10, replace = FALSE)

# Step 3: Display the sampled coins
print(sampled_coins)

#(b)
# Step 1: Define the possible outcomes
outcomes <- c("Success", "Failure")

# Step 2: Assign probabilities to the outcomes
probabilites <- c(0.9, 0.1)

# Step 3: Simulate the outcomes of the next 10 surgical procedures
sample_space <- sample(outcomes, 10, replace = TRUE, prob = probabilites)

# Step 4: Display the sample space
print(sample_space)

#Q2


qbirthday(0.5, classes = 365, coincident = 2)
pbirthday(23, classes = 365, coincident = 2)

6#Q3
# Step 1: Define a function to compute conditional probability using Bayes' Theorem
conditional_probability <- function(P_C_given_R, P_R, P_C) {
  # Step 2: Apply Bayes' Theorem
  P_R_given_C <- (P_C_given_R * P_R) / P_C
  return (P_R_given_C)
}
# Step 3: Define the given probabilities
P_C_given_R = 0.85
P_R = 0.20
P_C = 0.40

# Step 4: Calculate the conditional probability of rain given clouds
P_R_given_C <- conditional_probability(P_C_given_R, P_R, P_C)

# Step 5: Display the result
print(paste("The probability it will rain given that it is cloudy is", round(P_R_given_C, 4)))

#Q4
# Load the iris dataset
data(iris)

# Print the first few rows of the dataset
head(iris)

# Find the structure of the dataset
str(iris)

# Find the range of the sepal length
sepal_length_range <- range(iris$Sepal.Length)
sepal_length_range

# Find the mean of the sepal length
sepal_length_mean <- mean(iris$Sepal.Length)
sepal_length_mean

# Find the median of the sepal length
sepal_length_median <- median(iris$Sepal.Length)
sepal_length_median

# Find the first and third quartiles of the sepal length
sepal_length_quartiles <- quantile(iris$Sepal.Length, probs = c(0.25, 0.75))
sepal_length_quartiles

# Calculate the interquartile range (IQR)
sepal_length_IQR <- IQR(iris$Sepal.Length)
sepal_length_IQR

# Find the standard deviation of the sepal length
sepal_length_sd <- sd(iris$Sepal.Length)
sepal_length_sd

# Find the standard deviation of the sepal length
sepal_length_var <- var(iris$Sepal.Length)
sepal_length_var

# Use the summary function on the iris dataset
summary(iris)

#R does not have a standard in-built function to calculate mode. So we create a user
#function to calculate mode of a data set in R. This function takes the vector as input
#and gives the mode value as output

mode <- function(x) {
  # create frequency table of vector x
  freq_table <- table(x)
  freq_table
  # identify index with max freq
  mode_index <- which.max(freq_table)
  mode_index
  # extract mode val using index
  mode_value <- names(freq_table)[mode_index]
  print(mode_value)
}
x <- c(1, 2, 2, 3, 4, 4, 4, 5)
mode(x)


