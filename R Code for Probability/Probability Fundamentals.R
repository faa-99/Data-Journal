# We will be using the prob package
# Install it using Tools -> Install Packages -> prob
library(prob)

# Sample space for tossing a coin 1, 2, and 3 times
s1 <- tosscoin(1, makespace=TRUE)
s2 <- tosscoin(2, makespace=TRUE)
s3 <- tosscoin(3, makespace=TRUE)

# Sample space for rolling a die 1 time
d1 <- rolldie(1)
# Sample space for rolling a die with 4 sides 2 times
d2 <- rolldie(2, nsides=4)

# Sample space for a deck of cards
# by default jokers are FALSE
deck <- cards(makespace = TRUE)
deck.jocker <- cards(jokers=TRUE, makespace=TRUE)

################################################################################

# Counting Methods
# choosing 2 numbers out of 5 
# choosing 2 colors out of 5
# choosing 2 objects out of 4

# Ordered Sampling with Replacement  (n^k)
urnsamples(1:5, size = 2, 
           replace = TRUE, ordered = TRUE)
urnsamples(c("r","g","b", "y", "o"), size = 2,
           replace = TRUE, ordered = TRUE)
nsamp(n = 4, k = 2, replace = TRUE, ordered = TRUE)

# Ordered Sampling without Replacement
urnsamples(1:5, size = 2, ordered = TRUE)
urnsamples(c("r","g","b", "y", "o"), size = 2, ordered = TRUE)
nsamp(n = 4, k = 2, replace = FALSE, ordered = TRUE)

# Unordered Sampling without Replacement: Combinations  C(n,k)
urnsamples(1:5, size = 2)
urnsamples(c("r","g","b", "y", "o"), size = 2)
nsamp(n = 4, k = 2, replace = FALSE, ordered = FALSE)

# Unordered Sampling with Replacement: Combinations  C(n,k)
urnsamples(1:5, size = 2, replace = TRUE)
urnsamples(c("r","g","b", "y", "o"), size = 2, replace = TRUE)
nsamp(n = 4, k = 2, replace = TRUE, ordered = FALSE)

################################################################################

# Events

toss3Times <- tosscoin(3, makespace = TRUE)
# rows 2 till 4 inclusive
toss3Times[2:4, ]
# odd rows (1, 3, 5, 7)
toss3Times[seq(1,8, by = 2), ]
# even rows (2, 4, 6, 8)
toss3Times[c(2,4,6,8), ]
# events which have Heads in their third toss
subset(toss3Times, toss3 == 'H')
# events which have Heads in the first and third toss
subset(toss3Times, toss1 == 'H' & toss3 == 'H')


roll2Times <- rolldie(2, makespace = TRUE)
# first 6 rows
head(roll2Times)
# last 6 rows
tail(roll2Times)
# total number of rows
nrow(roll2Times)
# events where first two rolls are the same
subset(roll2Times, X1 == X2)
# events where the sum of the first 2 rolls is >= 10
subset(roll2Times, X1 + X2 >= 10)
# events where first roll is either 5 or 6
subset(roll2Times, X1 == 5 | X1 == 6)
# events where first roll is in range 5 to 6 inclusive
subset(roll2Times, X1 %in% 5:6)
# events where first roll is either 5 or 6 AND second roll in either 1 or 3
subset(roll2Times, X1 %in% 5:6 & X2 %in% c(1,3))
# events where first roll is 4 and second is 5 (order matters)
subset(roll2Times, isin(roll2Times, c(4,5), ordered = TRUE))
# events where first or second roll are either 4 or 5 (order does not matter)
subset(roll2Times, isin(roll2Times, c(4,5)))

cardDeck <- cards(makespace = TRUE)
# display the first 2 rows of head
head(cardDeck, n = 2)

subset(cardDeck, suit == "Club")
subset(cardDeck, suit == "Diamond")
subset(cardDeck, suit == "Heart")
subset(cardDeck, suit == "Spade")

subset(cardDeck, rank %in% 2:4)

subset(cardDeck, rank %in% c('K', 'Q'))

A <- subset(cardDeck, suit == "Heart")
B <- subset(cardDeck, rank %in% c(10, "Q"))

union(A, B)

intersect(A, B)

setdiff(A, B)

setdiff(B, A)

setdiff(cardDeck, A)

