### **Chapter 9: Estimation Using a Single Sample**

This chapter delves into the concepts of estimation, focusing on point estimation and confidence intervals for population parameters. It also examines how sample size, margin of error, and confidence levels influence estimation precision.

---

### **1. Key Concepts in Estimation**

#### **A. Point Estimation**
- **Definition:** A single number derived from sample data that provides a plausible estimate of a population characteristic.
- **Examples:**
  - Sample mean ($\bar{x}$) is a point estimate of the population mean ($\mu$).
  - Sample proportion ($\hat{p}$) is a point estimate of the population proportion ($p$).

#### **B. Choosing the Right Statistic**
- A good point estimator is:
  1. **Unbiased:** Its sampling distribution is centered around the true population value.
  2. **Efficient:** It has the smallest standard error among unbiased estimators.
- **Example:** For estimating $\mu$, the sample mean ($\bar{x}$) is preferred due to its low variability.

---

### **2. Confidence Intervals**

#### **A. Confidence Interval for a Population Proportion ($\hat{p}$)**
- **Definition:** An interval estimate of a population proportion, accounting for sampling variability.
- **Formula:**
  $$\hat{p} \pm z^* \sqrt{\frac{\hat{p}(1-\hat{p})}{n}}
  $$
  - $z^*$: Critical value based on the desired confidence level.
  - $n$: Sample size.

- **Example:**
  - Sample: 100 respondents, 40% agree with a statement ($\hat{p} = 0.40$).
  - Confidence level: 95% ($z^* \approx 1.96$).
  - Margin of error:
    $$ME = 1.96 \cdot \sqrt{\frac{0.40 \cdot 0.60}{100}} \approx 0.096
    $$
  - Confidence interval: $0.40 \pm 0.096 = (0.304, 0.496)$.

#### **B. Confidence Interval for a Population Mean ($\mu$)**
- **Definition:** An interval estimate of a population mean using the sample mean and standard error.
- **Formula:**
  $$\bar{x} \pm t^* \frac{s}{\sqrt{n}}
  $$
  - $t^*$: Critical value from the $t$-distribution for small samples.
  - $s$: Sample standard deviation.

- **Example:**
  - Sample: Average time spent = 50 minutes ($\bar{x}$), $s = 10$, $n = 25$.
  - Confidence level: 95% ($t^* \approx 2.064$).
  - Margin of error:
    $$ME = 2.064 \cdot \frac{10}{\sqrt{25}} = 4.128
    $$
  - Confidence interval: $50 \pm 4.128 = (45.872, 54.128)$.

---

### **3. Sample Size and Confidence Intervals**

- **Larger Sample Sizes:**
  - Reduce margin of error, narrowing the confidence interval.
  - Improve reliability of estimates.

- **Determining Sample Size for Desired Margin of Error ($ME$):**
  $$n = \frac{z^2 \cdot \hat{p}(1-\hat{p})}{ME^2}
  $$
  - **Example:** To achieve a margin of error of 5% with $p = 0.50$ at 95% confidence:
    $$n = \frac{1.96^2 \cdot 0.50 \cdot 0.50}{0.05^2} \approx 384
    $$

---

### **4. Applications**

#### **A. Estimating Proportions**
- **Example (Cancer Detection by Dogs):**
  - A trained dog detects cancer correctly in 80 out of 100 cases ($\hat{p} = 0.80$).
  - Confidence level: 95%.
  - Confidence interval for true detection rate:
    $$0.80 \pm 1.96 \cdot \sqrt{\frac{0.80 \cdot 0.20}{100}} \approx (0.728, 0.872)
    $$

#### **B. Estimating Means**
- **Example (Drive-Through Medicine):**
  - Average waiting time = 8 minutes ($\bar{x}$), $s = 2$, $n = 50$.
  - Confidence interval (95%):
    $$8 \pm 1.96 \cdot \frac{2}{\sqrt{50}} \approx (7.45, 8.55)
    $$

---

### **5. Key Takeaways**

1. **Point Estimation:** Provides a single-value estimate of population parameters.
2. **Confidence Intervals:** Add a margin of error to account for sampling variability.
3. **Sample Size:** Larger samples lead to narrower intervals and more precise estimates.


