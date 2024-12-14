# **Chapter 6: Probability Summary (with Solved Examples)**

---

## **1. Basic Concepts of Probability**

- **Definition:** Probability is the measure of the likelihood of an event occurring.

- **Formula:**  
  $P(A) = \frac{\text{Number of favorable outcomes}}{\text{Total number of possible outcomes}}$

- Probabilities range from $0$ (impossible) to $1$ (certain).

- **Key Notes:**  
  - $P(A) = 0$: Event $A$ is impossible.  
  - $P(A) = 1$: Event $A$ is certain to happen.  
  - $0 < P(A) < 1$: Event $A$ is possible but not guaranteed.

---

## **2. Sample Space**

- **Definition:** The sample space ($S$) is the set of all possible outcomes in a chance experiment.

- **Examples:**  
  - Rolling a die: $S = \{1, 2, 3, 4, 5, 6\}$.  
  - Flipping a coin twice: $S = \{HH, HT, TH, TT\}$.

- **Key Notes:**  
  - The sample space must include all possible outcomes.  
  - Outcomes in the sample space must be mutually exclusive.

---

## **3. Events**

- **Simple Event:** Contains only one outcome (e.g., rolling a 6 on a die).

- **Compound Event:** Contains multiple outcomes (e.g., rolling an even number).

- **Complementary Event:** The event $A^c$ represents all outcomes not in $A$.  
  $P(A^c) = 1 - P(A)$

**Example:**  
If $P(A) = 0.6$, then $P(A^c) = 1 - 0.6 = 0.4$.

---

## **4. Addition Rule**

- For **mutually exclusive events** $A$ and $B$ (events that cannot occur together):  
  $P(A \cup B) = P(A) + P(B)$

- For **non-mutually exclusive events**:  
  $P(A \cup B) = P(A) + P(B) - P(A \cap B)$

**Example:**  
If $P(A) = 0.4$, $P(B) = 0.3$, and $P(A \cap B) = 0.1$, then:  
$P(A \cup B) = 0.4 + 0.3 - 0.1 = 0.6$

---

## **5. Multiplication Rule**

- For **independent events** $A$ and $B$:  
  $P(A \cap B) = P(A) \cdot P(B)$

- For **dependent events**:  
  $P(A \cap B) = P(A) \cdot P(B|A)$

**Key Notes:**  
- **Independent Events:** The occurrence of one event does not affect the probability of the other.  
- **Dependent Events:** The occurrence of one event changes the probability of the other.

**Example:**  
If $P(A) = 0.5$ and $P(B|A) = 0.4$, then:  
$P(A \cap B) = 0.5 \cdot 0.4 = 0.2$

---

## **6. Conditional Probability**

- The probability of $A$ given $B$:  
  $P(A | B) = \frac{P(A \cap B)}{P(B)}$

**Example (Card Drawing):**  
Event $A$: The card is a King.  
Event $B$: The card is a face card (King, Queen, or Jack).  
Total face cards = $12$, Kings = $4$, so:  
$P(A | B) = \frac{P(A \cap B)}{P(B)} = \frac{\frac{4}{52}}{\frac{12}{52}} = \frac{4}{12} = \frac{1}{3}$

---

## **7. Complement Rule**

- The probability of the complement of an event:  
  $P(A^c) = 1 - P(A)$

**Example:**  
If $P(A) = 0.7$, then $P(A^c) = 1 - 0.7 = 0.3$.

---

## **8. Law of Total Probability**

- If events $B_1, B_2, ..., B_n$ form a partition of $S$:  
  $P(A) = P(A \cap B_1) + P(A \cap B_2) + ... + P(A \cap B_n)$

---

## **9. Solved Examples**

### **Example 1: Card Drawing**

- Event $A$: Drawing a red card.  
- Event $B$: Drawing a King.  

- **Find $P(A \cup B)$:**  
  $P(A \cup B) = P(A) + P(B) - P(A \cap B)$  
  Where $P(A) = \frac{26}{52}$, $P(B) = \frac{4}{52}$, and $P(A \cap B) = \frac{2}{52}$:  
  $P(A \cup B) = \frac{26}{52} + \frac{4}{52} - \frac{2}{52} = \frac{28}{52} = 0.538$

---

### **Example 2: Dice Roll**

- Event $A$: Rolling an even number ($2, 4, 6$).  
- Event $B$: Rolling a number greater than $3$ ($4, 5, 6$).  

- **Find $P(A | B)$:**  
  $P(A | B) = \frac{P(A \cap B)}{P(B)}$  
  Where $P(B) = \frac{3}{6}$ and $P(A \cap B) = \frac{2}{6}$:  
  $P(A | B) = \frac{\frac{2}{6}}{\frac{3}{6}} = \frac{2}{3}$

---

### **Example 3: Delivery Options**

- Given delivery options with probabilities:  
  - Overnight = $0.1$, Second-Day = $0.3$, Standard = $0.4$, Nearest Store = $0.2$.  

- **Find:**  
  Probability of expedited delivery (Overnight or Second-Day):  
  $P(\text{Expedited}) = 0.1 + 0.3 = 0.4$

---

### **Example 4: Homework Problems**

- **Scenario:**  
  $5$ problems assigned, student completed $3$ ($A, B, C$), professor picks $2$:  
  - **Total combinations:**  
    $\binom{5}{2} = 10$  
  - **Favorable combinations:**  
    $\binom{3}{2} = 3$  
  - **Probability:**  
    $P = \frac{3}{10} = 0.3$

---

## **Key Takeaways**

- Understand the rules for addition, multiplication, and conditional probability.  
- Use combinations ($\binom{n}{r}$) for problems involving selections.  
- Practice applying these rules to real-world scenarios to deepen your understanding!
