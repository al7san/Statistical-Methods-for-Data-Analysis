# Statistical Formulas from Chapters 1–10

## Chapter 1: Introduction to Statistics
1. **Sample Mean (\(x̄\)):**
   \[
   x̄ = \frac{\Sigma x_i}{n}
   \]

2. **Sample Proportion (\(\hat{p}\)):**
   \[
   \hat{p} = \frac{\text{Number of successes in the sample}}{\text{Sample size}}
   \]

---

## Chapter 2: Summarizing Data
1. **Frequency Percentage:**
   \[
   \text{Percentage} = \frac{\text{Frequency}}{\text{Total Observations}} \times 100
   \]

2. **Class Width:**
   \[
   \text{Class Width} = \frac{\text{Range}}{\text{Number of Classes}}
   \]

---

## Chapter 4: Numerical Methods for Describing Data
1. **Sample Mean (\(x̄\)):**
   \[
   x̄ = \frac{\Sigma x_i}{n}
   \]

2. **Variance (\(s^2\)):**
   \[
   s^2 = \frac{\Sigma (x_i - x̄)^2}{n-1}
   \]

3. **Standard Deviation (\(s\)):**
   \[
   s = \sqrt{s^2}
   \]

4. **Z-Score:**
   \[
   z = \frac{x - x̄}{s}
   \]

---

## Chapter 5: Summarizing Bivariate Data
1. **Correlation Coefficient (\(r\)):**
   \[
   r = \frac{\Sigma (x_i - x̄)(y_i - \bar{y})}{\sqrt{\Sigma (x_i - x̄)^2 \cdot \Sigma (y_i - \bar{y})^2}}
   \]

2. **Linear Regression Equation:**
   \[
   y = b_0 + b_1x
   \]
   - \(b_1 = \frac{\Sigma (x_i - x̄)(y_i - \bar{y})}{\Sigma (x_i - x̄)^2}\)
   - \(b_0 = \bar{y} - b_1x̄\)

---

## Chapter 6: Probability
1. **Probability of an Event (\(P(A)\)):**
   \[
   P(A) = \frac{\text{Number of favorable outcomes}}{\text{Total number of outcomes}}
   \]

2. **Complement Rule:**
   \[
   P(A^c) = 1 - P(A)
   \]

3. **Addition Rule:**
   - For mutually exclusive events:
     \[
     P(A \cup B) = P(A) + P(B)
     \]
   - For non-mutually exclusive events:
     \[
     P(A \cup B) = P(A) + P(B) - P(A \cap B)
     \]

4. **Conditional Probability (\(P(A|B)\)):**
   \[
   P(A|B) = \frac{P(A \cap B)}{P(B)}
   \]

---

## Chapter 7: Random Variables and Probability Distributions
1. **Expected Value (\(E(X)\)):**
   \[
   E(X) = \Sigma x_i \cdot P(x_i)
   \]

2. **Variance of a Random Variable (\(\sigma^2\)):**
   \[
   \sigma^2 = \Sigma (x_i - \mu)^2 \cdot P(x_i)
   \]

---

## Chapter 8: Sampling Distributions
1. **Standard Error of the Mean:**
   \[
   SE = \frac{\sigma}{\sqrt{n}}
   \]

2. **Z-Score for Sampling Distribution:**
   \[
   z = \frac{x̄ - \mu}{\frac{\sigma}{\sqrt{n}}}
   \]

---

## Chapter 9: Estimation Using a Single Sample
1. **Confidence Interval for a Population Mean (\(\mu\)):**
   - When \(\sigma\) is known:
     \[
     x̄ \pm z^* \cdot \frac{\sigma}{\sqrt{n}}
     \]
   - When \(\sigma\) is unknown:
     \[
     x̄ \pm t^* \cdot \frac{s}{\sqrt{n}}
     \]

2. **Confidence Interval for a Population Proportion (\(p\)):**
   \[
   \hat{p} \pm z^* \cdot \sqrt{\frac{\hat{p}(1-\hat{p})}{n}}
   \]

---

## Chapter 10: Hypothesis Testing
1. **Z-Test for Population Mean:**
   \[
   z = \frac{x̄ - \mu_0}{\frac{\sigma}{\sqrt{n}}}
   \]

2. **T-Test for Population Mean:**
   \[
   t = \frac{x̄ - \mu_0}{\frac{s}{\sqrt{n}}}
   \]

3. **Z-Test for Proportions:**
   \[
   z = \frac{\hat{p} - p_0}{\sqrt{\frac{p_0(1-p_0)}{n}}}
   \]
