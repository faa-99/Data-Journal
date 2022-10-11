# Normal Distribution

The normal density curve seems to fit the data well. It is an ”idealized” mathematical description of the data. It gives the general picture of the data, ignoring minor irregularities. This allows us to use properties of the mathematical normal distribution to make statements about the quantitative variable.

Many statistical inference procedures are based on the normal distribution.

![Untitled](https://github.com/faa-99/My-Data-Journey/tree/main/images/normal-distribution.png)

## Properties

- Bell curve with a single peak
- Perfectly symmetrical
- 68% of data is within (µ − σ) and (µ + σ)
- 95% rule tells us that 95% of data is within (µ − 2σ) and (µ + 2σ)
- 99.7% rule tells us that 99.7% of data is within (µ − 3σ) and (µ + 3σ)
- The mean is the center of the distribution and is the point that splits the area
under the bell shaped curve in half.

The normal distribution with mean µ and variance σ 2 is often referred to as N (µ, σ^2 )

![Untitled](https://github.com/faa-99/My-Data-Journey/tree/main/images/nd-variation.png)

## Standard Normal Distribution

The standard normal distribution is a conversion of any normal distribution into standard deviation units.
We convert a value from the original normal distribution to the standard normal by calculating its Z- score
Z-score tells us how many standard deviations x is from the mean

### Properties

- The total area under the standard normal curve is 1.00.
- The curve is perfectly symmetrical. If z is greater than 0, then the probability that a given observation is less than -z is equal to the probability that a given observation is greater than z.
- The standard normal curve is centered on 0.
- The probability that z ≥ a is equal to the probability that z > a. There is no area under the curve for a single point. Similarly, the probability that z ≤ a is equal to the probability that z < a.

![Untitled](https://github.com/faa-99/My-Data-Journey/tree/main/images/nd-properties.png)

A standardized variable has a mean of 0 and a standard deviation of 1. For any given variable x , the standardized version of x is the new variable, z, defined as

![Untitled](https://github.com/faa-99/My-Data-Journey/tree/main/images/sampling-distribution.png)

Outliers are data points that do not fit with the general pattern of the data.
They can be detected using graphical summaries.

Outliers are defined as any points that are ≤ Q1 − 1.5 × IQR OR ≥ Q3 + 1.5 × IQR

Negative scores indicate that the values are below the mean, whereas positive scores indicate that the values are above the mean. The z-score −1.22 indicates that the score is 1.22 standard
deviations below the mean. Similarly, the z-score 1.44 indicates that the score is 1.44
standard deviations above the mean. The three standard deviation rule implies that most of the z-scores will be in the range −3 to 3. Values with z-scores less than −3 or greater than 3 are considered as outliers.

## Central Limit Theorem

### Intuition

We would like to estimate the mean age of employees at company A. Let’s assume that the population is made up of only 50 individuals and the actual mean of the population is 45.28 years.

Assume we take two random samples of size 5. The resulting ages in each of the two samples:

Sample 1: 20,44,46,20,44

Sample 2: 83,32,31,50,32

The first sample has a sample mean of 34.6 and a sample median of 44.
The second sample has a sample mean of 45.6 and a sample median of 32.

Neither the sample mean nor the sample median will always fall closer to the population mean in a given sample.

To evaluate each of these sample statistics and their ability to estimate the true population value, we must not rely on just one example (one sample).

We’d like to compare the distribution of the sample mean and sample median if we take hundreds of random samples of the same size.

The **larger the sample size**:

1. the closer the sampling distribution of the sample means will be to the
normal distribution
2. the smaller the variance of the sample mean.

This means that just based on a single sample we can make conclusions about what the population mean is likely to be. Specifically, it will allow us to calculate **p-values and confidence intervals**

### Properties

When the number of samples taken from a population is sufficiently large, the sampling distribution of the sample mean, will be approximately normally distributed with an expected value of (µ and a standard deviation of σ).

If the underlying population is approximately normal, then even small values of n will give a sampling distribution of sample means that are normally distributed.

n should be **n ≥ 30 for the distribution of the sample means to be normally distributed**.

For more skewed population distributions, n must be larger before the sampling distribution is sufficiently normally distributed.

![Untitled](https://github.com/faa-99/My-Data-Journey/tree/main/images/z-score.png)

If n ≥ 30 we know that the sample mean is approximately normally distributed
with Standard Error(SE).

![Untitled](https://github.com/faa-99/My-Data-Journey/tree/main/images/clm.png)