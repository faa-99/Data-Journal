## Assignments

```r
# Assignments can be done in 3 different ways (first recommended)
x <- 3
3 -> x
x = 3
```

## Data Types

```r
# There are 5 data types
#	numeric (default for numbers), integer, logical, character, complex
********************************************************************
# Numeric Values
x <- 7
mode(x) # "numeric"
typeof(x) # "double" usually double unless converted to integer
x <- as.integer(7)
mode(x) # "numeric"
typeof(x) # "integer"
********************************************************************
# Logical
x <- TRUE
y <- FALSE
z <- x & y
mode(x) # "logical"
typeof(x) # "logical"
********************************************************************
# String values are represented as character objects
x <- "Hello"
y <- as.character(123)
mode(x) # "character"
typeof(x) # "character"
mode(y) # "character"
typeof(y) # "character"
********************************************************************
# Complex Numbers
x <- 2 + 3i
y <- 3 - 1i
mode(x) # "complex"
typeof(x) # "complex"
```

## String operations

| Operation | Note |
| --- | --- |
| paste(x, y) |  |
| paste(x, y, .., sep = “sep_used”) |  |
| sprintf(”string to format %s bla %d”, x, y) |  |
| nchar(x) | Nb. of chars in string |
| substr(z, start = start_index, stop = stop_index ) | The first character is at position number 1 |
| subs(”string_a”, “string_b”, z) | Substitutes the first matching |

## Data Type Conversions

If the data cannot be converted, the value NA is returned.

| Function | Note | Check |
| --- | --- | --- |
| as.numeric | takes logical where TRUE and FALSE are 1 and 0 respectively                                                    takes character: if the string represents numeric data, the conversion succeeds; otherwise NA is returned. | is.numeric |
| as.logical | takes numeric where 0 is FALSE and any non-zero value is TRUE                                                 takes character and converts TRUE and FALSE, others ⇒ NA | is.logical |
| as.character | takes logical, numeric | is.character |
| as.integer |  | is.integer |
| as.complex |  | is.complex |
|  | check if the given data is a missing value | is.na |

## Data Structures

### Vector

a collection of values that all have the same data type. If all the elements are numbers, the vector
is a numeric vector. If the elements are strings, the vector is a character vector. If the elements are true/false, the vector is a logical vector.

All scalar values are treated by R as vectors of unit length.

```r
# Assignment
x <- c(20, 22, 23, 23, 26)
y <- c(12.6, 8.4)

mode(x)
typeof(x)
x.int <- as.integer(x)
z <- c(x, y) # combine vectors of same type
# in cases where different types are used during combining, 
# the data is coerced to a common type.
# the type hierarchy: logical < integer < double < complex < character
# values that cannot be converted are replaced with NA
*************************************************************************
# Operations
length(x)
sum(x)
paste(x, y)
paste(x, y, sep=",")
# arithmetic operations on vectors result in a new vector
# If the lengths of the vectors are not equal, then the
# elements of the shorter vector are recycled to fill the gap
x/2
2 * x
x * y
x + y
# comparison operations on a vector result in a logical vector of the same length
x < 25
x >= 23
# combination of a vector with basic data values results in a new vector
c(0, x, 100)
c(x, 2*x)
*************************************************************************
# Indexing
x[3] # starts from index 1
x[1:3] #inclusive
x[c(1,5)] # at index 1 and 5
x[-1] # everything except elt at specified index
x[-(1:3)]
x[c(-1, -5)]
x[x %% 3 == 0] # all elements divisible by 3
# can index a vector using a logical vector
# if the corresponding index is TRUE, value included; otherwise, excluded.
x[c(TRUE, TRUE, FALSE, FALSE, TRUE)]
x[c(TRUE, FALSE)] # returns odd-index values
*************************************************************************
# letters vector built-in in R
letters[c(1, 26)]
letters[1:5]
letters[c(TRUE, FALSE)]
is.vector(letters)
*************************************************************************
# Replicating vectors
rep(x, 3)
rep(x, times=3)
rep(x, each=3)
rep(x, times=2, each=3)
rep(x, c(0, 2, 1, 1, 2) # replicate each elt as in the second argument
rep(x, x)
*************************************************************************
# Modifying Vectors
x[1] <- 10
x[c(2, 5)] <- c(20, 50)
x[8] <- 80 # if index beyond the length => fill remaining values with NA
length(x) <- 10 # expand vector and fill values with NA
length(x) <- 3 # truncate vector => remaining values are lost
*************************************************************************
# Named Vectors
# The names function assigns character strings as the names of the elements 
# The vector can then be indexed numerically or with the named values.
names(x) <- c("Farah", "Joe", "Bob", "Ed", "Jake")
x["Farah"]
x[c("Farah", "Jake")]
names(x)
names(x)[2] <- "Bla"
*************************************************************************
```

### Sequence

A vector of consecutive numbers can be generated using the : operator (from:to). 
If the first value is less than the second, the sequence is generated in increasing order. Otherwise, the sequence is generated in decreasing order. The sequence is generated using the integer type.

```r
# Generating
# if the from is more than the to, step value is -1; else 1
m <- seq(1:10) # inclusive
b <- seq(1, 10)
n <- seq(from=2, to=20, by=2) # inclusive
u <- seq(from=10, to=2)
l <- seq(2, 20, by=2)
p <- seq(2, by=-2, length=5) # the by can be negative
v <- 20:25 # 20, 21, 22, 23, 24, 25
i <- 25:20 # 25, 24, 23, 22, 21, 20
mode(v) # "numeric"
typeof(v) # "integer"
*************************************************************************
# Arithmetic Operations
# The resulting numeric vectors will be of the double type.
2* 1:5
*************************************************************************
```

### Matrix

a two-dimensional collection of values that all have the same data type. If all the elements are numbers, the matrix is a numeric matrix. If the elements are strings, the matrix is a character matrix. If the elements are true/false, the matrix is a logical matrix.

```r
# Generating a matrix
data <- c(80, 75, 85, 82,90, 88, 92, 95, 81, 78, 84, 87)
x <- matrix(data, nrow=3, ncol=4, byrow=TRUE)
x <- matrix(data, nrow=3, ncol=4) # default is FALSE
*************************************************************************
# Indexing
x[1, 2]
x[1, ]
x[, 1]
x[, c(1,3)]
x[c(2,3), ]
x[c(2,3), c(1,3)]
*************************************************************************
# Named Matrices
# The function dimnames takes a list with the first argument being the vector 
# for the row names and the second argument being the vector for the column names
dimnames(x) <- list(c(), c())
rownames(x)
colnames(x)
dim(x)
is.matrix(x)
nrow(x)
ncol(x)
as.vector(x) # flatten the matrix. data is combines column-wise
*************************************************************************c
# Modifying Matrix Entries
x[1, 1] <- 100
x[1, ] <- 90
x[, 1] <- 90
x[,] <- 100
*************************************************************************
```

### Data Frame

### List