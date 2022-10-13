# Confidence Intervals

Used for estimating the value of a population parameter

Provide a statement, expressed in the language of probability, of how much confidence is to be placed in the conclusion.

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/Statistics/images/confidence.png)

By the Central Limit Theorem, if n ≥ 30, then the population mean can be approximated by the sample mean and the standard deviation can be approximated by the standard deviation of the sample / square root of n.

This being said, the population can be approximated by a normal distribution where 95% of the samples are within 2 Standard deviations of the mean.

Confidence interval: We know that **95% of the sample means will be within 2 SDs of the
population mean**.

The sample mean 2 times the SD (x̄ ± 2 ⋅ σx̄) is called the 95% confidence interval for the population mean.

- Confidence intervals are of the form: estimate ± margin of error
- To calculate a confidence interval with a confidence level of C for the population mean, µ, we use the following formula: **x̄ ± z. σ/√n**
- z is the appropriate critical value corresponding to the confidence level.
- Generally, 95% confidence intervals are standard. Other common intervals
are 90% and 99%.
- Typical values of C with their associated values of z are:
    - z=1.96 corresponds to an area of 95% under the curve
    - z=1.645 corresponds to an area of 90% under the curve
    - z=2.576 corresponds to an area of 99% under the curve

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/Statistics/images/critical-values.png)

- when calculating the confidence interval for the population mean:
    
    **m =** **z. σ/√n is the margin of error** 
    
    We like our confidence intervals to be narrow (small in width) with a high amount of confidence. The precision (width) of the confidence interval decreases as:
    
    - **z gets smaller.** Smaller values of z are associated with decreased confidence levels. There is a trade off between the confidence level and the margin of error.
    - **σ gets smaller**. When the variability of the individual observations is reduced, it becomes easier to estimate the population mean with higher precision.
    - **n gets larger.** Increasing the sample size n reduces the margin of error for a fixed confidence level C.

Sometimes, you will have a desired margin of error, m, then you can rearrange this equation to determine how many observations you need:

![Untitled](https://github.com/faa-99/My-Data-Journey/blob/main/Statistics/images/observations.png)