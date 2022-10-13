### Setting/ Getting directories and Reading/ Writing files

```r
# This gives the path where R is currently looking for files
getwd()
# Change the path where R is looking for files to another location
setwd("new_working_directory_path")
# Reading data into R - make sure the example data is located at this path###
days <- read.csv("path_to_file", header = FALSE)
#Change the column names of the dataset
colnames(days) = paste("Col_name",seq(1,ncol(days)),sep="_")
# Data with a header
golf = read.csv("path_to_file", header=T)
# Write the dataset back to a csv file without including row names 
# and including quotes
write.csv(golf,file="file_name.csv",row.names=F,quote=T)
```

### Installing Packages

```r
# Only install the package if we don't already have it installed
if(!require(library_name))
{
  install.packages("library_name")
}
# Loads the package to be used!
library(library_name)
# To see all installed packages
library()
# Quits out of R and asks if you want to save your workspace
q()
```

### Dealing with workspace

```r
# Save the workspace
save.image(file="Current_Workspace.RData")

# Remove all objects in the current workspace
rm(list=ls())

# Remove a specified object
rm(<object_name>)

# Calls the garbage collector to free memory
gc()

# Re-load the workspace
load("Current_Workspace.RData")

# Save just two dataframes
save(df_1, ,df_2, file="All_Data.RData")

# Empty workspace
rm(list=ls())
load(file="All_Data.RData")

# Removes only the specified variables
rm(var_1, var_2)

# Getting help
?rm

# Deletes the file
unlink("All_Data.RData")
```

### Summary statistics

```r
# Read data into dataframe with header
data <- read.csv("<file_name>.csv", header = T)
# Extract the "age" variable from the data frame
age <- data$average
# Mean
mean(data$average)

# Median
median(data$average)

# Minimum and maximum values
min(data$average)
max(data$average)

# 25th, 50th, and 75th percentile thresholds
quantile(data$average)

# Measures of spread - Variance and standard deviation
var(data$average)
sd(data$average)

# Summary
summary(data)
# Output a summary of each column in data frame
age            
 Min.   :257.0   
 1st Qu.:262.0   
 Median :285.0   
 Mean   :278.3                     
 3rd Qu.:288.5                     
 Max.   :293.0
```

### Qualitative data summaries

Consider the following data

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/R%20Code%20for%20Statistical%20Analysis/images/golf-data.png)

```r
# Class counts
table(golf$brand)
# Output
Callaway     Nike Titleist 
       5        5        5
# Pie chart of class counts
pie(table(golf$brand))

# Barplot of class counts
barplot(table(golf$brand))

# Class frequencies
table(golf$brand)/nrow(golf)
# Output
Callaway      Nike  Titleist 
0.3333333 0.3333333 0.3333333

prop.table(table(golf$brand))
# Output
Callaway      Nike  Titleist 
0.3333333 0.3333333 0.3333333

# Barplot of class frequencies with titles
barplot(table(golf$brand)/nrow(golf),
        main="Golf Balls by Brand",
        xlab="Brand",
        ylab="Frequency")

library(ggplot2)
#GGplot version
ggplot(data=golf,aes(x=brand,fill=brand)) + 
  geom_bar() + 
  theme_bw() +
  ggtitle("Golf Balls by Brand") + 
  xlab("Brand") +
  ylab("Frequency")
```


### Visualizations

```r
# Histogram of golf data
hist(golf$distance)

# Specifying the number of breakpoints to use
hist(golf$distance,breaks=5) #- evenly spaced by default

# Manually specifying the breakpoints themselves
breaks = c(255,265,275,300)
hist(golf$distance,breaks = breaks)

# GGplot version
ggplot(data=golf,aes(x=distance)) + 
  geom_histogram(breaks=breaks) + 
  theme_bw()

# Boxplot of golf data
boxplot(golf$distance)

# Ggplot version of the boxplot
ggplot(data = golf,aes(y=distance)) +
  geom_boxplot() +
  xlim(c(-0.5,0.5)) +
  theme_bw() + 
  annotate("text",x=-0.5,y=285,label="Median")
```