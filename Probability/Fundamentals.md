# Fundamentals

## Terminology

**Random Experiment**

**Sample space:** the set of all possible outcomes

**Event:** subset of the sample space

**Mutually exclusive events:** cannot occur at the same time ⇒ only one will occur 

**Exhaustive events:** the union of the events is equal to the sample space of the experiment

## Sampling: Picking k objects out of n objects

1. **Ordered sampling with sampling:** simplest one
    - For every object of the k objects ⇒ we have n possibilities
    
    $$
    ⁍
    $$
    
2. **Ordered sampling without replacement: Permutations**
    - For the first object ⇒ n possibilities
    - For the second object ⇒ (n-1) possibilities
    - This continues to (n-k) possibilities for the last object to be picked

$$
n!/(n-k)!
$$

1. **Unordered sampling without replacement: Combinations**
    - Similar to ordered sampling without replacement
    - Consider for every combination of k numbers ⇒ k! ways to arrange them

$$
{n \choose k} =  {n \choose n-k} = \frac {n!} {k!(n-k)!}
$$

1. **Unordered sampling with replacement:**
    
    n ways to choose every object in the k objects
    
    k! ways to arrange each combination
    
    $$
    {n+k-1 \choose k} =  {n+k-1 \choose n-1} = \frac {(n+k-1)!} {k!(n-1)!}
    $$
    
    ## Conditional Probability
    
    The probability for an event to occur knowing that another event is true
    
    $$
    P(A/B) = \frac {P(A ∩ B)} {P(B)}
    $$
    
    $$
    P(B/A) = \frac {P(A ∩ B)} {P(A)}
    $$
    
    **Multiplication Rule:**
    
    $$
    P(A ∩ B) = P(A and B) = P(A).P(B/A)
    $$
    
    $$
    P(A ∩ B) = P(A and B) = P(B).P(A/B)
    $$
    
    $$
    P(A).P(B/A) = P(B).P(A/B)
    $$
    
    **Independent Events:**
    
    $$
    P(A ∩ B) = P(B).P(A)
    $$
    
    ## Bayes Theorem
    
    **Given:**
    
    - How likely A is to happen on its own P(A)
    - How likely B is to happen on its own P(B)
    - How often B happens given that A happens P(B/A)
    
    **Find:**
    
    How often A happens given that B happens P(A/B)
    
    $$
    P(A/B) = \frac {P(A).P(B/A)} {P(B)}
    $$
    
  ![Untitled](https://github.com/faa-99/Data-Journal/blob/main/Probability/images/bayes.png)

    **Forward looking probability:** probability B will occur given that A occurred
    
    **Backward looking probability:** probability A has occurred given that B has occurred
    
    ## Rule of Total Probability
    
    Suppose events A1, A2, …, An are mutually exclusive and exhaustive
    
    ⇒ for any event B: (B and A1), (B and A2), …, (B and An) are mutually exclusive 
    
    ⇒ P(B) = P(B and A1) + P(B and A2) + … + P(B and An)
    
    knowing that P(B and A1) = P(B/A1).P(A1)
    
    ⇒ P(B) = P(B/A1).P(A1) + P(B/A2).P(A2) + … + P(B/An).P(An)
    
    $$
    P(B) = \sum P(B/Aj).P(Aj)
    $$
    
    plug P(B) in Bayes’ Theorem:
    
    $$
    P(Ai/B) = \frac {P(Ai).P(B/Ai)} {\sum P(B/Aj).P(Aj)}
    $$
    
  ![Untitled](https://github.com/faa-99/Data-Journal/blob/main/Probability/images/bayes-2.png)