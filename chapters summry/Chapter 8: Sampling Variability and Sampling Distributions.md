### **Chapter 8: Sampling Variability and Sampling Distributions**

This chapter explores sampling variability, sampling distributions, and their applications in understanding population parameters. It emphasizes the Central Limit Theorem (CLT) and its importance in statistical inference.

---

### **1. Introduction to Sampling Variability**

- **Definition:** Sampling variability refers to the differences observed in a sample statistic (e.g., mean, proportion) when multiple random samples are drawn from the same population.
- **Key Insight:** Sample statistics vary, but their distributions have predictable patterns, described by sampling distributions.

#### **Example**
- Drawing multiple random samples of size 10 from a population of 100 individuals will yield different sample means.

---

### **2. Sampling Distributions**

#### **A. Sampling Distribution of the Sample Mean (̄x)**

- **Definition:** Describes the variability of sample means (̄x) across repeated samples.

- **Key Properties:**
  1. The mean of the sampling distribution equals the population mean:
     $$µ_{̄x} = µ
     $$
  2. The standard deviation of the sampling distribution (“standard error”) is:
     $$σ_{̄x} = \frac{σ}{\sqrt{n}}
     $$
     where σ is the population standard deviation, and $n$ is the sample size.

- **Central Limit Theorem (CLT):** For large sample sizes ($n \geq 30$), the sampling distribution of ̄x is approximately normal, regardless of the population’s shape.

#### **B. Sampling Distribution of the Sample Proportion (â€ p)**

- **Definition:** Describes the variability of sample proportions across repeated samples.
- **Key Properties:**
  1. Mean of the sampling distribution:
     $$µ_{̂p} = p
     $$
  2. Standard error of the sampling distribution:
     $$σ_{̂p} = \sqrt{\frac{p(1-p)}{n}}
     $$
     where $p$ is the population proportion.

#### **Conditions for Normal Approximation:**
- **Rule of Thumb:**
  $$np \geq 10 \text{ and } n(1-p) \geq 10
  $$
  These conditions ensure the sampling distribution of ̂p is approximately normal.

---

### **3. Central Limit Theorem (CLT)**

- **Purpose:** Ensures that the sampling distribution of ̄x approaches normality as sample size increases.

#### **Practical Guidelines:**
1. For general populations:
   - $n \geq 30$ ensures normality.
2. For normal populations:
   - Smaller sample sizes (e.g., $n \geq 15$ or 20) are sufficient.
3. For highly skewed populations:
   - Larger samples (e.g., $n \geq 40$ or 50) may still fail to achieve normality.

#### **Example:**
- Sampling distribution of the mean weight of apples ($n = 50$) becomes approximately normal, regardless of the original population’s shape.

---

### **4. Applications of Sampling Distributions**

#### **A. Sample Mean (̄x):**
- Used to infer population means based on sample data.
- **Key Insight:** Larger sample sizes reduce standard error, improving reliability.

#### **B. Sample Proportion (̂p):**
- Used to estimate population proportions.

#### **Example:**
- A survey of 200 voters finds that 120 favor a candidate:
  $$p = \frac{120}{200} = 0.6
  $$
  The population proportion is estimated as 60%.

---

### **5. Sampling Variability in Context**

- **Key Idea:** Variability diminishes as sample size increases.
  - Example: Larger samples of student test scores yield more precise estimates of average performance.

- **Comparison of Sample Sizes:**
  - Small sample ($n = 10$): Higher variability.
  - Large sample ($n = 50$): Lower variability.

---

### **6. Visualizing Sampling Distributions**

- **Histogram of Sample Means:** Shows approximate normality as $n$ increases.
- **Scatterplots for Proportions:** Visualize consistency of ̂p across samples.

---

### **7. Key Takeaways**

1. Sampling distributions describe sample-to-sample variability.
2. CLT ensures approximate normality for ̄x and ̂p under certain conditions.
3. Larger sample sizes improve reliability and reduce variability.


