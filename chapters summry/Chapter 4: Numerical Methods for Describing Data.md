### **Chapter 4: Numerical Methods for Describing Data**

This chapter explores methods for summarizing and interpreting data using numerical techniques. Practical examples are included to enhance understanding.

---

### **1. Measures of Center**

#### **A. Mean (Average)**

- **Definition:** The arithmetic average of data points.
- **Formula:**
  $\text{Mean} = \frac{\sum x_i}{n}$
  where $x_i$ are individual data points, and $n$ is the number of observations.
- **Example:** Test scores: [85, 90, 78, 92, 88].
  $\text{Mean} = \frac{85 + 90 + 78 + 92 + 88}{5} = 86.6$

#### **B. Median**

- **Definition:** The middle value when data is ordered.
- **Formula:** For an ordered dataset:
  - Odd number of observations: Middle value.
  - Even number of observations: Average of the two middle values.
- **Example:** Dataset: [5, 10, 15, 20, 25]. Median = 15.
  For even numbers: [5, 10, 15, 20]. Median = $\frac{10+15}{2} = 12.5$.

#### **C. Mode**

- **Definition:** The most frequently occurring value.
- **Example:** Dataset: [2, 3, 3, 4, 5]. Mode = 3.

---

### **2. Measures of Spread**

#### **A. Range**

- **Definition:** The difference between the maximum and minimum values.
- **Formula:**
  $\text{Range} = \text{Maximum} - \text{Minimum}$
- **Example:** Temperatures: [50, 55, 60, 65, 70]. Range = $70 - 50 = 20$.

#### **B. Variance and Standard Deviation**

- **Variance:** Measures the average squared deviations from the mean.
  - **Formulas:**
    $\text{Population Variance} (\sigma^2) = \frac{\sum (x_i - \mu)^2}{n}$
    $\text{Sample Variance} (s^2) = \frac{\sum (x_i - \bar{x})^2}{n-1}$
- **Standard Deviation:** The square root of the variance.
  - **Formula:**
    $\sigma = \sqrt{\sigma^2}$
- **Example:** Dataset: [5, 10, 15]. Mean = 10.
  Variance:
  $\frac{(5-10)^2 + (10-10)^2 + (15-10)^2}{3} = 16.67$
  Standard deviation:
  $\sqrt{16.67} \approx 4.08$

#### **C. Interquartile Range (IQR)**

- **Definition:** The range between the first quartile ($Q_1$) and the third quartile ($Q_3$).
- **Formula:**
  $\text{IQR} = Q_3 - Q_1$
- **Example:** Dataset: [10, 15, 20, 25, 30, 35, 40].
  $Q_1 = 20$, $Q_3 = 35$, $\text{IQR} = 35 - 20 = 15$.

---

### **3. Distribution Shape**

#### **A. Symmetry and Skewness**

- **Symmetric Distribution:** Mean = Median.
  - **Example:** Heights of adults in a population.
- **Right-skewed Distribution:** Mean > Median.
  - **Example:** Income distribution in a company.
- **Left-skewed Distribution:** Mean < Median.
  - **Example:** Test scores where most students score high.

#### **B. Outliers**

- **Definition:** Data points significantly different from others.
- **Detection Methods:**
  - Using IQR:
    $\text{Lower Bound} = Q_1 - 1.5 \cdot \text{IQR}, \text{Upper Bound} = Q_3 + 1.5 \cdot \text{IQR}$
  - Using z-scores:
    $z = \frac{x - \mu}{\sigma}$
- **Example:** House prices: [200k, 220k, 250k, 2M]. Outlier = 2M.

---

### **4. Five-Number Summary**

- **Definition:** Includes Minimum, $Q_1$, Median, $Q_3$, and Maximum.
- **Example:** Dataset: [10, 20, 30, 40, 50].
  - Five-number summary: [10, 20, 30, 40, 50].

---

### **5. Z-Scores**

- **Definition:** Measures how far a data point is from the mean in terms of standard deviations.
- **Formula:**
  $z = \frac{x - \mu}{\sigma}$
- **Example:** Dataset: Mean = 50, Standard Deviation = 10. For $x = 60$:
  $z = \frac{60 - 50}{10} = 1$

---

### **Key Takeaways**

1. Measures of center (mean, median, mode) summarize data location.
2. Measures of spread (range, variance, standard deviation, IQR) describe variability.
3. Distribution shape and outliers provide insights into data patterns.
4. Z-scores standardize data for comparison across datasets.

