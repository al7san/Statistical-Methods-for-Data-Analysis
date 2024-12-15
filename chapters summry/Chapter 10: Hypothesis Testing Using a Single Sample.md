### **Chapter 10: Hypothesis Testing Using a Single Sample**

This chapter explains hypothesis testing as a method for making decisions or inferences about population characteristics based on sample data. It emphasizes the concepts of null and alternative hypotheses, significance levels, test statistics, and error types.

---

### **1. Key Concepts in Hypothesis Testing**

#### **A. Hypotheses**
- **Null Hypothesis ($H_0$):** A claim or statement assumed to be true unless evidence strongly suggests otherwise.
- **Alternative Hypothesis ($H_a$):** The competing claim we support if $H_0$ is rejected.
  - **Example**: Testing whether a training program improves productivity:
    - $H_0$: Training has no effect on productivity ($\mu = \mu_0$).
    - $H_a$: Training improves productivity ($\mu > \mu_0$).

#### **B. Errors in Hypothesis Testing**
1. **Type I Error ($\alpha$):** Rejecting $H_0$ when it is true.
2. **Type II Error ($\beta$):** Failing to reject $H_0$ when $H_a$ is true.

- **Example (Medical Test):**
  - **Type I Error**: Diagnosing a healthy person as sick.
  - **Type II Error**: Missing the diagnosis for a sick person.

#### **C. Significance Level ($\alpha$)**
- The probability of making a Type I Error, often set as 0.05 or 0.01.

---

### **2. Steps in Hypothesis Testing**

1. **Formulate Hypotheses**:
   - $H_0$: The null hypothesis.
   - $H_a$: The alternative hypothesis.

2. **Set Significance Level ($\alpha$):**
   - Determines the threshold for rejecting $H_0$.

3. **Collect Data**:
   - Use a random sample.

4. **Calculate the Test Statistic**:
   - Use $z$-test or $t$-test depending on the situation.

5. **Determine the P-value**:
   - The probability of observing a test statistic as extreme as the one calculated, assuming $H_0$ is true.

6. **Make a Decision**:
   - If $P \leq \alpha$, reject $H_0$.
   - If $P > \alpha$, fail to reject $H_0$.

---

### **3. Large-Sample Hypothesis Tests**

#### **A. Hypothesis Test for Population Mean ($\mu$)**
- **Conditions**:
  - Known population standard deviation ($\sigma$).
  - Large sample size ($n \geq 30$).
- **Test Statistic**:

   $z = \frac{\bar{x} - \mu_0}{\frac{\sigma}{\sqrt{n}}}$
 
  - $\bar{x}$: Sample mean.
  - $\mu_0$: Hypothesized population mean.

#### **B. Hypothesis Test for Population Proportion ($p$)**
- **Conditions**:
  - Large sample size: $n \cdot p \geq 10$ and $n \cdot (1-p) \geq 10$.
- **Test Statistic**:
  $z = \frac{\hat{p} - p_0}{\sqrt{\frac{p_0(1-p_0)}{n}}}
  $
  - $\hat{p}$: Sample proportion.
  - $p_0$: Hypothesized population proportion.

---

### **4. Small-Sample Hypothesis Tests**

#### **A. $t$-Test for Population Mean**
- **Conditions**:
  - Unknown population standard deviation ($s$).
  - Small sample size ($n < 30$).
- **Test Statistic**:
  $t = \frac{\bar{x} - \mu_0}{\frac{s}{\sqrt{n}}}
  $
  - Degrees of freedom: $df = n-1$.

---

### **5. Case Studies and Examples**

#### **A. Ovarian Cancer Detection**
- Using blood biomarkers to diagnose ovarian cancer:
  - **Type I Error**: Diagnosing cancer-free patients as having cancer.
  - **Type II Error**: Missing the diagnosis for patients with cancer.
  - Results: Type I Error probability = $0.032$, Type II Error probability = $0.006$.

#### **B. Laptop Ownership**
- Hypothesis: 70% of students own laptops.
  - $H_0: p = 0.70$
  - $H_a: p \neq 0.70$
  - Sample: 200 students, 130 own laptops ($\hat{p} = 0.65$).
  - Significance Level: 0.05.
  - Test Conclusion: $H_0$ is not rejected as $P > \alpha$.

---

### **6. Key Takeaways**

1. **Null Hypothesis**: The baseline claim tested using sample data.
2. **Errors**: Type I and Type II errors have distinct consequences.
3. **Test Statistics**: Use $z$-test for large samples and $t$-test for small samples.
4. **P-value**: Determines the strength of evidence against $H_0$.
5. **Applications**: Widely used in medical studies, quality control, and social science research.
