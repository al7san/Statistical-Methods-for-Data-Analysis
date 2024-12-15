### **Chapter 5: Summarizing Bivariate Data**

This chapter explores methods for summarizing relationships between two variables using statistical and graphical techniques. It covers correlation, regression, and other tools to analyze bivariate data.

---

### **1. Introduction to Bivariate Data**

- **Definition:** Bivariate data involves two variables, typically labeled as $x$ (independent or explanatory variable) and $y$ (dependent or response variable).
- **Goal:** To identify and describe relationships or associations between the two variables.

---

### **2. Graphical Representation of Bivariate Data**

#### **A. Scatterplots**
- **Purpose:** To visualize the relationship between two quantitative variables.
- **Key Features:**
  - Direction: Positive, negative, or no association.
  - Form: Linear or nonlinear.
  - Strength: Strong, weak, or no correlation.
  - Outliers: Unusual points that do not follow the pattern.
- **Example:** Plotting height ($x$) vs. weight ($y$) of individuals.
### **Scatterplot Example**

Below is an example of a scatterplot illustrating a relationship between two variables:

<img src="https://qi.elft.nhs.uk/wp-content/uploads/2014/08/scatter-plot-31-1024x627.png" alt="Scatterplot Example" style="width: 700px; height: auto;">

- **Key Features:**
  - Direction: Positive linear relationship.
  - Form: Linear association.
  - Strength: Strong correlation.

---

### **3. Correlation**

#### **A. Definition**
- Measures the strength and direction of a linear relationship between two quantitative variables.
- **Pearson Correlation Coefficient ($r$):**
  $$r = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum (x_i - \bar{x})^2 \cdot \sum (y_i - \bar{y})^2}}
  $$
  - $r \in [-1, 1]$:
    - $r = 1$: Perfect positive linear relationship.
    - $r = -1$: Perfect negative linear relationship.
    - $r = 0$: No linear relationship.

#### **B. Properties of Correlation**
1. Unitless.
2. Sensitive to outliers.
3. Measures only linear relationships.

#### **C. Example**
- Data: Exam scores ($x$) vs. hours studied ($y$).
  - $r = 0.85$: Strong positive correlation.

---

### **4. Least-Squares Regression**

#### **A. Purpose**
- Fits a line to the data that minimizes the sum of squared residuals (errors).

#### **B. Regression Equation**
- **Line of Best Fit:**
  $$  y = b_0 + b_1x
  $$
  - $b_0$: Intercept ($y$-value when $x = 0$).
  - $b_1$: Slope (change in $y$ for a one-unit change in $x$).

- **Formulas:**
  $$b_1 = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sum (x_i - \bar{x})^2}
  $$
  $$b_0 = \bar{y} - b_1\bar{x}
  $$

#### **C. Coefficient of Determination ($r^2$)**
- Proportion of variance in $y$ explained by $x$.
- $$r^2 = \frac{\text{Explained Variation}}{\text{Total Variation}}
  $$
- **Example:**
  - If $r^2 = 0.75$, then 75% of the variability in $y$ is explained by $x$.

#### **D. Example**
- Data: Hours studied ($x$) vs. exam scores ($y$).
  - Regression line: $y = 50 + 5x$.
    - Interpretation: For every additional hour studied, the score increases by 5 points.

---

### **5. Residual Analysis**

#### **A. Definition**
- Residual ($e$) is the difference between observed ($y$) and predicted ($\hat{y}$) values:
  $$e = y - \hat{y}
  $$

#### **B. Residual Plots**
- Scatterplot of residuals vs. predicted values.
- **Purpose:** To check the appropriateness of a linear model.
  - Random pattern: Linear model is appropriate.
  - Systematic pattern: Linear model may not be suitable.

---

### **6. Categorical Data Relationships**

#### **A. Two-Way Tables**
- Summarize relationships between two categorical variables.
- **Example:** Relationship between gender and preference for a product.

#### **B. Conditional Distributions**
- Proportions within rows or columns of a two-way table.
- **Example:** 60% of males prefer Product A, while 40% of females do.

---

### **7. Key Takeaways**

1. Scatterplots and correlation describe relationships but do not imply causation.
2. The least-squares regression line predicts $y$ based on $x$ and measures the strength of the linear relationship.
3. Residual analysis validates the appropriateness of a regression model.
4. Categorical relationships are analyzed using two-way tables and conditional distributions.


