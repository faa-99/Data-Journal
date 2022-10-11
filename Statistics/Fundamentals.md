# Statistics - Introduction

Use data to find patterns, answer important scientific questions and draw conclusions

It is a science that deals with the collection, classification, analysis, and interpretation of data.

It includes 2 main areas:

1. Describing data (Numerical and Graphical Summaries)
2. Drawing conclusions about data (Making estimates, predictions, and decisions) from sampled data

Fundamental Elements of Statistics:

- **An experimental unit:** an object about which we collect data (ex: person, thing, event, etc…)
- **A population:** a set of units that we are interested in studying (ex: people, objects, events, etc…). It is the entire group of individuals or things that we want information about or to answer questions about.
- **A sample:** a set of data collected and/or selected from a statistical population by a defined procedure.
    
    The elements of a sample are known as sample points, sampling units or observations.
    
    Often we gather information about only part of the population (sample) and use this information to make educated guesses about qualities of the larger group (population).
    
- **A parameter:** a number that describes a population
- **A statistic:** a number that is computed from the sample data

![Untitled](https://github.com/faa-99/My-Data-Journey/tree/main/Statistics/images/statistic-terms.png)

- Biases: introduced by sampling are often termed selection biases
    - To avoid them, sample randomly!
    - Ensure that each individual or element from the population has an equal chance of being selected is key to protecting against selection bias.
    - Should be mindful of sampling methods and potential for bias as we critically analyze our results.
    - Very few samples are truly random. It is critical to identify selection biases and think about how they may impact your results.
- **Variables:** characteristics of the units of the population
    - **Quantitative:** contain numerical data (age, height, weight, etc…)
    - **Qualitative:** data about categorical variables (Yes/No, Big/Medium/Small, Easy/Hard, etc…)
    
    Relevant Example:
    
    Researchers are studying the effect of a new drug on COVID-19. They conduct
    a trial to study whether the use of this drug improves patient’s outcome when
    aﬄicted by COVID-19. What are the experimental units, population, variables
    for this study?
    
    unit = each person in the study, population = all individuals with COVID-19, variables = age, sex, past medical problems, etc…
    

## Data Summarization

### Numerical

Consider the following data for student scores

75, 72, 78, 70, 78, 78, 88, 75, 78, 72

```r
values <- c(72, 22, 85, 89, 96, 77, 69, 78, 83, 92, 94)
```

### Measures of Central Tendency

### Mean

sum of values divided by the number of the values

```r
average <- mean(values)
```

### Median

the number that splits the data between the bottom 50% and the top 50%.

if the number of values is odd ⇒ median is the middle value

if the number of values is even ⇒ median is the mean of the two middle values

```r
med <- median(values)
```

### Mode

the most frequently occurring value in the data-set

### Measures of Variation

### Range

the difference between the largest and smallest values

```r
range <- max(values) - min(values)
```

### Standard Deviation and Variance

![Untitled](https://github.com/faa-99/My-Data-Journey/tree/main/Statistics/images/st-dev.png)

The st. deviation is the square root of the variance.

Unlike the range, it takes into account all values of the data-set

It is a measurement of how far each number in a data set is from the mean and every other number in the set

It is used to measure the spread between numbers and determine volatility

The more variation there is in the data set, the larger the standard deviation

Chebychev’s rule states that at least 89% of the observations lie within three standard deviations of either side of the mean (the range from x̄ − 3s to x̄ + 3s).

For data that has a bell-shaped distribution, the empirical rule states that approximately 99.7% of the observations lie within three standard deviations of either side of the mean, approximately 95% of the observations lie within two standard deviations of either side of the mean, and approximately 68% of the observations lie within one standard deviation of either side of the mean.

```r
st_dev <- sd(values)
variancr <- var(values)
```

### Five Number Summary

The mean and standard deviation are sensitive to extreme values. 

Measures based on percentiles are resistant measures. Percentiles divide the data set into 100 equal parts. The data set has 99 percentiles, P1 , P2 , … , P99 . The first percentile divides the bottom 1% from the top 99% of the data, the second percentile divides the bottom 2% from the top 98% of the data, etc. The 50th percentile is the median. 

Other measures used are the deciles (dividing the data into 10 equal parts), quintiles (dividing the data into 5 equal parts), and quartiles (dividing the data into 4 equal parts).

The quartiles are denoted by the three values Q1 , Q2 , and Q3 . The first quartile, Q1 , divides the bottom 25% of the data from the top 75% . The second quartile, Q2 , is the median that divides the bottom 50% from the top 50% . The third quartile, Q3 , divides the bottom 75% from the top 25% .

The interquartile range, IQR, is the difference between the third and first quartiles, 

                                                              IQR = Q3 – Q1

The IQR shows the variation in the middle 50% of the data.

The five number summary of the data set consists of the minimum, Q1 , Q2 , Q3 , and maximum values.

- The variation in the first quarter is **Q1 − minimum**
- The variation in the second quarter is **Q2 – Q1**
- The variation in the third quarter is **Q3 – Q2**
- The variation in the last quarter is **maximum – Q3**

```r
summary <- fivenum(values)
summary <- summary(values)
quantiles <- quantile(values)
```

![Untitled](https://github.com/faa-99/My-Data-Journey/tree/main/Statistics/images/quantiles.png)

## Shape of Data

The shape of data is the distribution of data values throughout the range of the data. 

A distribution is symmetrical when the values below the mean are distributed the same way as the values above the mean. For symmetrical distribution, the **mean and the median** are the close to each other. 

If most of the values are in the upper portion of the distribution, the distribution is left-skewed. The presence of fewer numbers of small value pulls the mean towards the left end of the data. The mean is less than the median in this case. 

On the other hand, if most of the values are in the lower end of the distribution, the distribution is right-skewed. The presence of fewer numbers of larger value pulls the mean towards the right end of the data. The mean is greater than the median in this case.

![Untitled](https://github.com/faa-99/My-Data-Journey/tree/main/Statistics/images/left-skew.png)

The distance (range) from the minimum value to the median is less than the distance from the median to the maximum value.

The distance (range) from the minimum value to the first quartile (Q1 ) is less than the distance from the third quartile (Q3 ) to the maximum value.

The distance (range) from the minimum value to the median is greater than the distance from the median to the maximum value.

![Untitled](https://github.com/faa-99/My-Data-Journey/tree/main/Statistics/images/right-skew.png)

The distance (range) from the first quartile (Q1 ) to the median is less than the distance from the median to the third quartile (Q3 ).

The distance (range) from the minimum value to the first quartile (Q1 ) is greater than the distance from the third quartile (Q3 ) to the maximum value.

The distance (range) from the first quartile (Q1 ) to the median is greater than the distance from the
median to the third quartile (Q3 ).

![Untitled](https://github.com/faa-99/My-Data-Journey/tree/main/Statistics/images/symmetric.png)

### Notes:

For a symmetric distribution, the mean is the best measure to describe the center

For a skewed distribution, the median is the best measure to describe the center