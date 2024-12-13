# **Chapter 7: Probability Distributions Summary**

---

## **1. Key Concepts**

- A **probability distribution** describes the long-run behavior of a random variable by listing all possible outcomes along with their corresponding probabilities.  
  For example:  
  - In rolling a die, the random variable $X$ represents the outcome with probabilities distributed equally for $1, 2, 3, 4, 5, 6$.

- For **continuous random variables**, areas under the density curve are interpreted as probabilities.  
  For example:  
  - In measuring the height of individuals, the probability of a person being between 170 cm and 180 cm is the area under the density curve between those values.

---

## **2. Learning Objectives**

1. **Distinguish between discrete and continuous random variables:**  
   - **Discrete Random Variables:**  
     These are countable values. For example, the number of students in a classroom or the number of defective items in a batch.  
   - **Continuous Random Variables:**  
     These can take any value within a range. For example, time taken to run a race or the temperature of a city.

2. **Construct the probability distribution of a discrete random variable:**  
   - List the possible outcomes and their corresponding probabilities.  
   Example: Flipping a coin twice:  
   - Outcomes: $S = \{HH, HT, TH, TT\}$  
   - Random variable $X$: Number of heads.  
   - Probability distribution:  
     $$P(X=0) = \frac{1}{4} \ P(X=1) = \frac{2}{4} \ P(X=2) = \frac{1}{4}     $$  

3. **Compute and interpret the mean and standard deviation of a discrete random variable:**  
   - Mean ($\mu$): The expected value of the random variable.  
     $$\mu = \sum [x \cdot P(x)]     $$  
   - Standard Deviation ($\sigma$): Measures how spread out the values are around the mean.  
     $$\sigma = \sqrt{\sum [(x - \mu)^2 \cdot P(x)]}     $$  

4. **Distinguish between binomial and geometric random variables:**  
   - **Binomial Random Variable:**  
     - Fixed number of trials ($n$).  
     - Each trial has the same probability of success ($p$).  
     - Example: Tossing a coin $n = 5$ times, counting the number of heads.  
   - **Geometric Random Variable:**  
     - The number of trials required to achieve the first success.  
     - Example: Tossing a coin until the first head appears.

5. **Compute and interpret binomial probabilities:**  
   - Use the binomial probability formula:  
     $$P(X = k) = \binom{n}{k} p^k (1-p)^{n-k}     $$  
   Example: Tossing a coin 10 times to find the probability of exactly 3 heads.  

6. **Compute probabilities involving continuous random variables:**  
   - For continuous random variables, probabilities are computed using the area under the density curve.  
   - Example: Find the probability that a person’s height is between 160 cm and 170 cm.

7. **Find an area under a normal curve and interpret it as a probability:**  
   - Convert the value to a $z$-score using the formula:  
     $$z = \frac{x - \mu}{\sigma}     $$  
   - Use the standard normal table to find the corresponding probability.  

8. **Construct and interpret a normal probability plot:**  
   - Plot the data against expected normal values.  
   - If the plot is approximately linear, the data follows a normal distribution.

---

## **3. Solved Examples**

### **Example 1: Discrete Random Variable**
- A dice is rolled, and the random variable $X$ represents the result.  
  - Possible outcomes: $X = \{1, 2, 3, 4, 5, 6\}$  
  - Probability distribution:  
    $$P(X=x) = \frac{1}{6}, \text{ for } x = 1, 2, 3, 4, 5, 6    $$  

**Compute the mean ($\mu$):**  
$$\mu = \sum [x \cdot P(x)] = \frac{1+2+3+4+5+6}{6} = 3.5$$  

---

### **Example 2: Binomial Probability**
- A coin is flipped 10 times, and we are interested in the probability of getting exactly 3 heads.  
  - $n = 10$, $k = 3$, $p = 0.5$  

**Compute $P(X = 3)$:**  
$$P(X=3) = \binom{10}{3} (0.5)^3 (1-0.5)^7$$  

$$P(X=3) = 120 \cdot (0.5)^{10} = 0.117$$  

---

### **Example 3: Area Under Normal Curve**
- Given a normal distribution with $\mu = 100$ and $\sigma = 15$, find the probability $P(X \leq 115)$.  

**Step 1: Convert to $z$-score:**  
$$z = \frac{115 - 100}{15} = 1$$  

**Step 2: Use $z$-table to find $P(Z \leq 1)$:**  
$$P(Z \leq 1) = 0.8413$$  

**Answer:** $P(X \leq 115) = 0.8413$  

---

### **Example 4: Homework Problems**
- **Scenario:**  
  A professor assigns 5 homework problems and randomly selects 2 for grading.  
  If a student completed problems $A, B, C$ and left $D, E$ incomplete:  

  - **Total combinations:**  
    $$\binom{5}{2} = 10
    $$  
  - **Favorable combinations (both completed):**  
    $$\binom{3}{2} = 3
    $$  
  - **Probability:**  
    $$P = \frac{3}{10} = 0.3
    $$  

---

## **4. Key Takeaways**

- **Discrete random variables** have countable outcomes, while **continuous random variables** involve ranges of values.  
- The **binomial distribution** models fixed trials, while the **geometric distribution** focuses on trials until the first success.  
- The **normal distribution** is essential for analyzing continuous data, using $z$-scores and density curves.  
- Mastering the construction and interpretation of probability distributions strengthens problem-solving skills.
