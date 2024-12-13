# **Chapter 7: Probability Distributions Summary**

---

## **1. Key Concepts**

- A **probability distribution** describes the long-run behavior of a random variable by listing all possible outcomes along with their corresponding probabilities.

- For **continuous random variables**, areas under the density curve are interpreted as probabilities.

---

## **2. Learning Objectives**

1. **Distinguish between discrete and continuous random variables:**  
   - **Discrete Random Variables:** Take on a finite or countable number of values (e.g., number of heads in coin tosses).  
   - **Continuous Random Variables:** Take on an infinite number of values within a range (e.g., time, weight).

2. **Construct the probability distribution of a discrete random variable:**  
   - A table or formula listing all possible outcomes and their probabilities.  
   - Probabilities must satisfy:  
     $P(X=x) \geq 0$ and $\sum P(X=x) = 1$.

3. **Compute and interpret the mean and standard deviation of a discrete random variable:**  
   - Mean ($\mu$):  
     $$
     \mu = \sum [x \cdot P(x)]
     $$  
   - Standard Deviation ($\sigma$):  
     $$
     \sigma = \sqrt{\sum [(x - \mu)^2 \cdot P(x)]}
     $$  

4. **Distinguish between binomial and geometric random variables:**  
   - **Binomial Random Variable:** Fixed number of independent trials, each with the same probability of success.  
   - **Geometric Random Variable:** Counts the number of trials needed to get the first success.

5. **Compute and interpret binomial probabilities:**  
   - Probability of exactly $k$ successes in $n$ trials:  
     $$
     P(X = k) = \binom{n}{k} p^k (1-p)^{n-k}
     $$  

6. **Compute probabilities involving continuous random variables:**  
   - Use the **density curve** to find probabilities.  
   - Total area under the curve = 1.  
   - Probability corresponds to the area under the curve between two values.

7. **Find an area under a normal curve and interpret it as a probability:**  
   - Use the **empirical rule** or a **standard normal table** ($z$-table).  
   - Convert values to $z$-scores:  
     $$
     z = \frac{x - \mu}{\sigma}
     $$  

8. **Construct and interpret a normal probability plot:**  
   - Used to assess if data follows a normal distribution.  
   - Points should form an approximate straight line.

---

## **3. Solved Examples**

### **Example 1: Discrete Random Variable**
- A dice is rolled, and the random variable $X$ represents the result.  
  - Possible outcomes: $X = \{1, 2, 3, 4, 5, 6\}$  
  - Probability distribution:  
    $$
    P(X=x) = \frac{1}{6}, \text{ for } x = 1, 2, 3, 4, 5, 6
    $$  

**Compute the mean ($\mu$):**  
$$
\mu = \sum [x \cdot P(x)] = \frac{1+2+3+4+5+6}{6} = 3.5
$$  

---

### **Example 2: Binomial Probability**
- A coin is flipped 10 times, and we are interested in the probability of getting exactly 3 heads.  
  - $n = 10$, $k = 3$, $p = 0.5$  

**Compute $P(X = 3)$:**  
$$
P(X=3) = \binom{10}{3} (0.5)^3 (1-0.5)^7
$$  
$$
P(X=3) = 120 \cdot (0.5)^{10} = 0.117
$$  

---

### **Example 3: Area Under Normal Curve**
- Given a normal distribution with $\mu = 100$ and $\sigma = 15$, find the probability $P(X \leq 115)$.  

**Step 1: Convert to $z$-score:**  
$$
z = \frac{115 - 100}{15} = 1
$$  

**Step 2: Use $z$-table to find $P(Z \leq 1)$:**  
$$
P(Z \leq 1) = 0.8413
$$  

**Answer:** $P(X \leq 115) = 0.8413$  

---

### **Example 4: Normal Probability Plot**
- Data: $\{10, 12, 13, 15, 16, 18, 20\}$  
  - Rank the data and standardize using $z$-scores.  
  - Plot the $z$-scores against the data.  
  - If the points align approximately on a straight line, the data is normally distributed.

---

## **Key Takeaways**
- Probability distributions describe the behavior of random variables.  
- Discrete and continuous random variables differ in their nature and probability calculations.  
- Mastering $z$-scores and the normal distribution is crucial for continuous variables.  
- Binomial and geometric distributions are key for modeling specific types of discrete events.
