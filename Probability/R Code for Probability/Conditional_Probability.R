library(prob)

# Setting custom probabilities for the events
rollOnce <- rolldie(1)
p <- rep(1/6, times = 6)
probspace(rollOnce, probs = p)

rolldie(1, makespace = TRUE)
p <- c(0.4, 0.15, 0.15, 0.15, 0.15, 0.2)
probspace(rollOnce, probs = p)

################################################################################

# Setting up the sample space of a deck of cards
deck <- cards(makespace=TRUE)

# probability that the chosen card has a rank of J
rankJ <- subset(deck, rank == "J")
Prob(rankJ)

# probability that the chosen card is a spade
suitSpade <- subset(S, suit == "Spade")
Prob(suitSpade)
Prob(deck, suit == "Spade")

# probability that the chosen card is a Spade knowing that it is rank J
Prob(suitSpade, given = rankJ)
# probability that the chosen card is a rank J knowing that it has suit Spade
Prob(rankJ, given = suitSpade)

Prob(deck, all(rank == "A"))
Prob(deck, all(suit == "Club"))


# Setup your own sample space consisting of 2 blue balls and 3 red balls
balls <- rep(c("red", "blue"), times = c(3, 2))
probspace(balls)
chooseTwoBalls <- urnsamples(L, size = 2, ordered = TRUE)

Prob(chooseTwoBalls, isrep(chooseTwoBalls, "red", 2))
Prob(chooseTwoBalls, isrep(chooseTwoBalls, "blue", 2))
Prob(chooseTwoBalls, isin(chooseTwoBalls, c("red", "blue"), ordered = TRUE))

################################################################################

# Toss coin 3 times with custom probability
iidspace(c('H', 'T'), ntrials = 3, probs = c(0.6, 0.4))
# Toss coin 3 times with equal probability
iidspace(c('H', 'T'), ntrials = 3)

