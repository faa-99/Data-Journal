```r

# There a lots of good data sets available in R. 
# You can get a list of them by using command data()
# data()

# You can read about each of them by using help command. 
?AirPassengers

# You can load them into the memory by using the command 
data("AirPassengers")

# first take a look at the histogram with no additional parameters. 
hist(AirPassengers)

?hist

# axes	logical. If TRUE (default), axes are draw if the plot is drawn.
# We set here axes to FALSE 
# We make a vector for the lables of x-axis. 
x <- seq(100, 700, by = 50)

#Generate a histogram and save the result
results <- hist(AirPassengers, breaks = x, 
                axes = FALSE, 
                main="Histogram for Air Passengers 1949-1960", 
                xlab = "Monthly Airline Passenger Numbers",  
                border="blue", 
                col="green", 
                ylim=c(0,25), xlim = c(100, 700)  )

# You can read some of the properties of histogram.
print(results)

# Read the documentation about axis 
?axis

# Now, we make the x-asis labels
axis(1, las=1, at = x, labels=x)

# Now, we make a vector for the y-axis lables based on our own requirments. 
ylables<- c(0, 2, 4, 5, 10, 13, 15, 20, 25)

# And this is the y-axis labels.
# axis(2, las=1, at = ylables, labels=ylables,  cex.axis = 1.2, font = 2)

# Or you can use the counts of your histogram result values 
axis(2, las=1, at = results$counts, labels=results$counts,  cex.axis = 1.2, font = 2)

# Here, we make some horizontal lines on the histogram. Just for fun :) 
# In the case that you want to have some horizontal lines on the histogram. 
abline(h = 4, col = "red" )

# a Dashed Line 
# abline(h=13,  col = "blue", lwd=1, lty=3)

abline(h=13,  col = "blue", lwd=3, lty="dashed")

# Values for lty are the strings "blank", "solid", "dashed", "dotted", "dotdash", "longdash", and "twodash". 
# Alternatively, the numbers 0 to 6 can be used (0 for "blank", 1 for "solid", ...).

require(ggplot2)

#ggplot version of the same command

df = data.frame(AirPassengers)
colnames(df) = c("N")
ggplot(data=df,aes(x=N)) + 
  geom_histogram(color="blue",fill="green",breaks=seq(100,700,by=50)) + 
  theme_bw() + 
  xlab("Monthly Airline Passenger Numbers") +
  ylab("Frequency") +
  ggtitle("Histogram for Air Passengers 1949-1960") + 
  geom_hline(yintercept=13,color="blue",linetype="dashed") +
  geom_hline(yintercept=4,color="red") + 
  ylim(0,24) + 
  scale_y_continuous(breaks=c(0,4,8,13,21,24))
```

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/R%20Code%20for%20Statistical%20Analysis/images/histograms.png)


```r
# generate skewed data using beta distribution

# set the random initial start as constant value 
set.seed(1)

# generate 3 different data sets. 

leftSkewed <- rbeta(4000,9,1.2)*40
rightSkewed <- rbeta(4000,1,9)*40
normalData<-rnorm(4000, mean = 20, sd=5)

# Begin with visualization. 

######################################################

par(mfrow=c(1,3))
######################################################

hist(leftSkewed, 
     probability=T, nclass=max(leftSkewed)-min(leftSkewed)+1, 
     col='lightblue', 
     main='Left Skewed' , border = F)

lines(density(leftSkewed,bw=1), col='red', lwd=3)

abline(v=mean(leftSkewed), col='blue', lwd=3)
abline(v=median(leftSkewed), col='green', lwd=3)

text(mean(leftSkewed)+2, .19, "Mean", cex = 1.6, col='blue')
text(mean(leftSkewed)+2, .20, "Median", cex = 1.6, col='green')

######################################################
hist(normalData, 
     probability=T, nclass=max(normalData)-min(normalData)+1, 
     col='lightblue', 
     main='Normal', border = F)

lines(density(normalData,bw=1), col='red', lwd=3)

plot(density(normalData), main='Normal' , col='red', lwd=3, type="l")

abline(v=mean(normalData), col='blue', lwd=3)
abline(v=median(normalData), col='green', lwd=3)

######################################################
hist(rightSkewed, 
     probability=T, nclass=max(rightSkewed)-min(rightSkewed)+1, 
     col='lightblue', 
     main='Right Skewed', border = F)
ines(density(rightSkewed,bw=1), col='red', lwd=3)

# plot(density(rightSkewed), main='Right Skewed' , col='red', lwd=3, type="l")

abline(v=mean(rightSkewed), col='blue', lwd=3)
abline(v=median(rightSkewed), col='green', lwd=3)

text(mean(rightSkewed)-3, .12, "Mean", cex = 1.6, col='blue')
text(mean(rightSkewed)-3, .13, "Median", cex = 1.6, col='green')
```

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/R%20Code%20for%20Statistical%20Analysis/images/dist-plots.png)
