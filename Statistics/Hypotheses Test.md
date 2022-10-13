# Hypotheses Tests

Hypothesis testing is an analysis technique where we evaluate whether there is sufficient evidence in a sample to disprove a claim about a population.

- The **null hypothesis** is the claim we are trying to disprove.
- A **significance test** assesses the amount of evidence against the null hypothesis.
- Typically the null hypothesis is a statement of **no effect or no difference**.
- The **alternative hypothesis** is the opposite of the null. It usually states that **there is an effect or difference**.

The alternative hypothesis is generally denoted Ha or H1 . The null hypothesis is generally denoted by H0

1. Hypotheses always refer to some population or distribution, **not to a particular sample outcome**. Thus *we state H0 and H1 in terms of population parameters and not in terms of sample statistics.*
2. The alternative hypothesis states that a parameter differs from its null value in a specific direction (a one-sided alternative) or in either direction (a two-sided alternative).
3. A **one-sided alternative** is only used in cases where *the researcher is sure the population parameter won’t differ from the null in the opposite direction*.

# Test Statistics

A test statistic is a measurement of how far the point estimate is from the expected value under the null.

### p-value of the test

One of the ways to measure how far the point estimate is from the expected value of the population parameter under the null hypothesis is to calculate the test statistic’s associated p-value.

The p-value of the test is the probability, computed assuming H0 is true, that the test statistic would take a value as extreme or more extreme than what was actually observed.

The p-value is a measure of the strength of the evidence against H0 .

- A small p-value suggests that the observed result was unlikely to occur if the null hypothesis is in fact true. So this gives evidence that the null hypothesis might be wrong!
- A large p-value means the sample did not give evidence against the null
hypothesis. Absence of evidence is **NOT necessarily** evidence of absence
A large p-value shows up when the difference between the true population parameter and the null hypothesis cannot be detected with the number of samples collected.

***Statistical tests are setup to look for evidence against the null, not to prove that the null hypothesis is true.*** 

***How do we evaluate the p-value? How do we know whether to reject the null hypothesis?***

1. compare the p-value to a predefined significance level
2. compare the test statistic to a critical value

For either method, the significance level needs to be pre-specified. It is denoted as α
The most common choice for **alpha is 0.05** (It is also called standard alpha level). The evidence from the data is so strong that the result obtained would only appear **5%** of the time or less if the null hypothesis is in fact true.

- If the p − value ≤ α, then we **reject the null hypothesis** in favor of the alternative hypothesis.
- If the p − value > α, then we **fail to reject the null hypothesis**. We do not have sufficient evidence that the null hypothesis is not true.

The critical value depends on the significance level and whether the test is one- or two-sided.
For a significance test with **standard normal distribution (µ = 0, σ = 1)**

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/Statistics/images/hypotheses-critical.png)

- If the absolute value of the test statistic ≥ the critical value, then we reject the null hypothesis in favor of the alternative hypothesis.
- If the absolute value of the test statistic < the critical value, then we fail to reject the null hypothesis.

If p < α or the absolute value of the test statistic is greater than the critical value, we say the result is **statistically significant at the α level**.

Another way to define significant is ”not likely to have happened by chance alone.”
Generally, the p-value itself is reported unless it is very small (< 0.001).

### Summary

There are 5 key steps in carrying out any significance test:

1. Set up the hypotheses and select the alpha level
2. Select the appropriate test statistic
3. State the decision rule
4. Compute the test statistic and the associated p-value
5. State your conclusion

### Significance Tests and Confidence Intervals

There is a relationship between two sided tests conducted with a significance level of α and 1 − α confidence intervals.
A level α significance test rejects the null hypothesis H0 ∶ µ = µ0 when the value of µ0 is not included in the 1 − α confidence interval for µ.
On the other hand, a level α significance test fails to reject the null hypothesis H0 ∶ µ = µ0 when the value of µ0 is included in the 1 − α confidence interval for µ.

***The conclusion of a significance test (whether or not the null hypothesis is rejected) at the α level of significance can be determined by checking if the “null” value of the mean as specified by the null hypothesis is contained within the 1 − α confidence interval.***

## z-test statistic

A z-test is any statistical test for which the distribution of the test statistic is approximately normal when the null hypothesis is true.

Central Limit Theorem says that many test statistics are approximately normal for large samples.

n ≥ 30 for the Central Limit Theorem to apply (guarantee that the distribution of the sample mean is normal)

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/Statistics/images/z-value.png)

n is Large (n ≥ 30) or σ is known

**Calculating p-value of the test**

The p-value for the z statistic is calculated using the standard normal distribution.
Depending on the alternative hypothesis, the p-value is calculated as follows:

- For a one-sided alternate hypothesis, we calculate the chance of seeing a more extreme value in the direction of the alternate hypothesis
- For a two-sided alternate hypothesis, we calculate the chance of seeing a more extreme absolute value

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/Statistics/images/z-bounds.png)


## t-test statistic

When **n is not large (< 30)** and the **standard deviation is unknown,** the Central Limit Theorem ***does not guarantee*** that the distribution of the sample mean is perfectly normal.

In this case, we cannot use the z-statistic because σ is unknown and there is no guarantee that the z-statistic is normally distributed.

Instead, ***we replace σ with the sample standard deviation s*** and obtain the following statistic:

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/Statistics/images/t-value.png)

- The t-statistic is **not** normally distributed.
- It follows a t-distribution with n − 1 degrees of freedom (df)

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/Statistics/images/t-dist.png)

The number of degrees of freedom equals the number of "observations" minus the number of required relations among the observations (e.g., the number of parameter estimates). For a 1 sample t-test, one degree of freedom is spent estimating the mean, and the remaining *n* - 1 degrees of freedom estimate variability.

- The shape of the distribution varies with the sample size
- The variability of the t-distributions is slightly greater than that of the standard normal distribution
- As n increases, s is a better and better estimate of σ, and the variability decreases.

To calculate a confidence interval with a confidence level of C for the population
mean, µ:

                                                   x̄ ± t ⋅ s / √n = x̄ ± t ⋅ SE

t is the appropriate critical value corresponding to the confidence level C with df = n − 1.

- t-statistic may also be used in cases where n ≥ 30 but the population distribution is far from normally distributed.
- When the population is not perfectly normally distributed, the t-distribution provides an adequate approximation.

**Calculating p-value of the test**

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/Statistics/images/t-bounds.png)


### Matched Pairs Design

- Studies where the same individual or experimental unit is given more than one treatment and the variable of interest is the change between the treatments is called a matched pairs design.
- Since two measurements are taken on the same observational unit in this type of design, the observations must first be compared and the analysis needs to take place on the differences.

## Two-sample problems

***do not apply to the matched-pairs situation***

We are interested in comparing the distribution of the sample means from two populations.

We have separate samples from each population and we want to make conclusions about the characteristics of the two samples for a particular parameter.

In the two sample setting, one may be interested in comparing the centers (the means) or the spreads (the standard deviations) between the two populations.

Two-sample tests for means are one of the most common situations encountered in statistical practice.

### Conditions

1. Independence. Samples must be independent (not influencing each other) and randomly selected from the two distinct populations of interest
2. Same Measurement. The variable of interest must be measured in the same way in each of the populations.
3. Similar Distributions The two populations should have similar distributions and are without significant outliers.

We are interested in estimating µ1 − µ2 or testing the null hypothesis of no difference between means, µ1 − µ2 = 0 or, µ1 = µ2 .

- x̄1 and x̄2 estimate µ1 and µ2
- s1 and s2 estimate σ1 and σ2

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/Statistics/images/sample-vs-population.png)

The standard deviation of the difference in the sample means, x̄1 − x̄2 , is :

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/Statistics/images/st-dev-pop.png)

Give that σ1 and σ2 are generally unknown, we estimate by using the sample standard deviations:

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/Statistics/images/st-dev-sample.png)

***The above quantity is referred to as the Standard Error of the difference in sample means.***

The two sample t-statistic used for hypothesis testing is calculated by:

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/Statistics/images/t-value-2-sample.png)

for µ1 − µ2 = 0

degrees of freedom by taking the minimum of the quantities n1 − 1 and n2 − 1

*This approach will always result in a p-value that is slightly larger than the actual value; however, this gets closer to the true degrees of freedom for large samples.*

The confidence interval for the difference in population means is:

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/Statistics/images/conf-interval-2-sample.png)

### When t-test is not applicable

**Outliers:** The presence of outliers or strong skewness in the distribution is indicative of severe departure from this assumption. As the mean and the standard deviation are sensitive to outliers and strong skewness, the procedures based on the t-distribution where the sample sizes are small are also greatly influenced by such departures from normality.

**Skewness:** It is essential to check the distribution of your sample data and check for strong skewness and outliers before you use t-procedures. If strong skewness exists or there are outliers present, use of the t-procedures is not recommended (especially when using these procedures when n < 30).

### Errors of a Satistical Test

In any statistical test, there are two possible errors that can be made.
**A Type 1 Error** is when the null hypothesis is actually true, but it is rejected. This is also called a False Positive.

**A Type 2 Error** is when the null hypothesis should be rejected, but we fail to reject. This is also called a False Negative.