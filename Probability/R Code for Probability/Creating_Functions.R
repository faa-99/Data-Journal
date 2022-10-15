# Create a function with no arguments
sayHello <- function () {
  return("Hello!")
}

# Invoke the function and store its result
result <- sayHello()

# Create a function to calculate hypotenuse of a right triangle
hypotenuse <- function (x, y) {
  return (sqrt(x*x + y*y))
}

hyp <- hypotenuse(3, 4)
paste("Hypotenuse of right triangle with sides 3 and 4 is", 
      hyp)

# Nested functions
hypotenuse(hypotenuse(3, 4), 12)

sumOfOnlyPositive <- function (x) {
  return (sum(x[x > 0]))
}

sumOfAbsolute <- function (x) {
  return(sum(abs(x)))
}

isPositive <- function (x) {
  return (x > 0)
}

allPositive <- function (x) {
  return(all(x > 0))
}

inc.2 <- function (x, y=5) {
  return (x - y)
}

inc.2(10, 20)
inc.2(x = 10, y = 20)
inc.2(y = 20, x = 10)
inc.2(10, y = 20)
inc.2(y = 20, 10)
inc.2(10)

# if return is missing, last statement in the function returns the value

################################################################################

# Conditionals
x <- c(10, 15)
y <- c(20, 5)

if (x < y) {
  my.max <- y
  my.min <- x
} else {
  my.max <- x
  my.min <- y
}

my.max <- if (x < y) y else x

my.max <- ifelse(x < y, y, x)

################################################################################

# Loops
x <- c(10, 20, 30, 40, 50)

for (i in x) {
  cat("Square of ", i, " = ", i*i, "\n")
}

# Squares of first n numbers
n <- 10
for (i in 1:n) {
  cat("Square of ", i, " = ", i*i, "\n")
}

# Squares of odd numbers up to n
n <- 10
for (i in seq(1,n, by = 2)) {
  cat("Square of ", i, " = ", i*i, "\n")
}


n <- 10
sum <- 0
i <- 1

while (i <= n) {
  sum <- sum + i
  i <- i+1
}
cat("Sum of first ", n, " numbers = ", sum)

n <- 10
i <- 1
repeat {
  cat("Square of ", i, " = ", i*i, "\n")
  i <- i+2
  if (i > n) break
}
