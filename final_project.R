# Load necessary libraries
library(dplyr)     
library(ggplot2)    
library(readxl)     
library(tidyr)      
library(lubridate)  
library(corrplot)
library(caret)      
library(ROSE)      

# Load data from the Excel file
file_path <- "C:/Users/HP/Downloads/wildlife-launch-and-resettlement-dataset.xlsx"
data <- read_excel(file_path)

# Check if the data is loaded successfully
cat("Sample of Data:\n")
print(head(data))

# Check for missing values
cat("\nMissing Values:\n")
print(any(is.na(data)))

# Fill or remove missing values if found
data <- data %>% drop_na()

# Calculate the frequency of animal types
type_frequency <- data %>%
  group_by(النوع) %>%
  summarise(frequency = n()) %>%
  arrange(desc(frequency))

cat("\nFrequency of Animal Types:\n")
print(type_frequency)

# Identify the most frequent types with launches more than 5 times
threshold <- 5
top_types <- type_frequency %>%
  filter(frequency > threshold)

cat("\nTop Frequent Animal Types 5 times):\n")
print(top_types)

top_data <- data %>%
  filter(النوع %in% top_types$النوع)


# Transform data into numerical values
data_transformed <- data %>%
  mutate(
    تقييم_الموقع = ifelse(تقييم_الموقع == "نعم", 1, 0),
    نوع_الاطلاق = ifelse(نوع_الاطلاق == "تعزيز", 1, 0)
  )


type_distribution <- type_distribution %>%
  mutate(Prediction = recode(Prediction, 
                             "تعزيز" = "Reinforcement", 
                             "إعادة توطين" = "Resettlement"))

# Add percentage column to the data
type_distribution <- type_distribution %>%
  mutate(percentage = n / sum(n) * 100)

# Create a pie chart with percentages
print(ggplot(type_distribution, aes(x = "", y = n, fill = Prediction)) +
        geom_bar(stat = "identity", width = 1) + 
        coord_polar(theta = "y") +  
        labs(title = "Release Type", fill = "") + 
        theme_void() +  
        geom_text(aes(label = paste0(round(percentage, 1), "%")), position = position_stack(vjust = 0.5)) )


# Calculate correlation matrix
correlation_matrix <- data_transformed %>%
  select(العدد, تقييم_الموقع, نوع_الاطلاق) %>%
  cor(use = "complete.obs")

cat("\nCorrelation Matrix:\n")
print(correlation_matrix)

corrplot(correlation_matrix, method = "color", 
         col = colorRampPalette(c("blue", "white", "red"))(200), 
         title = "Correlation Heatmap", 
         addCoef.col = "black", # Add values inside squares
         tl.col = "black", tl.srt = 45) # Format text

# Create bar plot
ggplot(top_data, aes(x = reorder(النوع, العدد), y = العدد, fill = النوع)) +
  geom_col() +
  labs(title = "Number of Animals by Type", x = "Animal Type", y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  

# Convert release date column to Date type
data$تاريخ_الاطلاق <- as.Date(data$تاريخ_الاطلاق, format = "%Y-%m-%d")

# Prepare data and transform columns
set.seed(123)  # Ensure repeatability
data_transformed <- data %>%
  mutate(
    فصل = case_when(
      month(تاريخ_الاطلاق) %in% c(12, 1, 2) ~ "Winter",  
      month(تاريخ_الاطلاق) %in% c(3, 4, 5) ~ "Spring",   
      month(تاريخ_الاطلاق) %in% c(6, 7, 8) ~ "Summer",   
      TRUE ~ "Autumn"                                 
    ),
    تقييم_الموقع = ifelse(تقييم_الموقع == "نعم", 1, 0),  # Convert site evaluation to 0 or 1
    النوع = factor(النوع),  # Convert type to factor
    فصل = factor(فصل)       # Convert season to factor
  )

# Filter out empty or invalid values
data_transformed <- data_transformed[!is.na(data_transformed$تاريخ_الاطلاق), ]

# Create bar plot showing release type distribution by season
ggplot(data_transformed, aes(x = فصل, fill = نوع_الاطلاق)) +
  geom_bar(position = "dodge") +
  labs(title = "Launch Distribution by Season", 
       x = "Season", 
       y = "Launch Count") +
  theme_minimal() +
  scale_fill_manual(values = c("lightblue", "lightgreen"),
                    labels = c("Reinforcement", "Resettlement")) + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Create a line plot with points and improved date labels
ggplot(data, aes(x = تاريخ_الاطلاق, y = العدد)) +
  geom_point(color = "blue", size = 1) +  
  scale_x_date(date_labels = "%b %d, %Y", date_breaks = "1 year") +
  labs(title = "Animal Count Over Time", 
       x = "Release Date", 
       y = "Animal Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Visualize launches by season and type
ggplot(data_transformed, aes(x = فصل, fill = النوع)) +
  geom_bar(position = "dodge") +
  labs(title = "Animal Launches by Season and Type", x = "Season", y = "Count") +
  theme_minimal()

# Descriptive analysis
descriptive_stats_output <- data_transformed %>%
  group_by(نوع_الاطلاق) %>%
  summarise(
    mean_count = mean(العدد, na.rm = TRUE),
    median_count = median(العدد, na.rm = TRUE),
    sd_count = sd(العدد, na.rm = TRUE),
    min_count = min(العدد, na.rm = TRUE),
    max_count = max(العدد, na.rm = TRUE)
  )

cat("\nDescriptive Statistics for Output (نوع_الإطلاق):\n")
print(descriptive_stats_output)

# Split data into training and test sets
trainIndex <- createDataPartition(data_transformed$نوع_الاطلاق, p = 0.7, list = FALSE)
train_data <- data_transformed[trainIndex, ]
test_data <- data_transformed[-trainIndex, ]

# Convert launch type to binary values
train_data <- train_data %>%
  mutate(نوع_الاطلاق_binary = ifelse(نوع_الاطلاق == "تعزيز", 1, 0))

test_data <- test_data %>%
  mutate(نوع_الاطلاق_binary = ifelse(نوع_الاطلاق == "تعزيز", 1, 0))

# Apply ROSE to balance the majority class samples
train_data_balanced <- ROSE(نوع_الاطلاق_binary ~ النوع + تقييم_الموقع + فصل, 
                            data = train_data, seed = 123)$data

# Check the class distribution after applying ROSE
table(train_data_balanced$نوع_الاطلاق_binary)

# Filter test data to match the types present in the training set
test_data <- test_data %>% filter(النوع %in% unique(train_data$النوع))

# Train a logistic regression model
logistic_model <- glm(نوع_الاطلاق_binary ~ النوع + تقييم_الموقع + فصل, 
                      data = train_data, 
                      family = "binomial")

summary(logistic_model)

# Make predictions using the test set
predictions <- predict(logistic_model, test_data, type = "response")
test_data$predictions_class <- ifelse(predictions > 0.5, "تعزيز", "إعادة توطين")

# Create confusion matrix
conf_matrix <- confusionMatrix(
  factor(test_data$predictions_class, levels = c("تعزيز", "إعادة توطين")),
  factor(test_data$نوع_الاطلاق, levels = c("تعزيز", "إعادة توطين"))
)

conf_matrix <- as.data.frame(conf_matrix$table)

# Plot confusion matrix using ggplot
ggplot(conf_matrix, aes(x = Prediction, y = Freq, fill = Reference)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Confusion Matrix Breakdown", 
       x = "Predicted Label", 
       y = "Frequency") +
  theme_minimal() +
  scale_fill_manual(values = c("lightblue", "lightgreen"),
                    labels = c("Reinforcement", "Resettlement"))



# Plot predicted release type distribution by season using test_data
ggplot(test_data, aes(x = فصل, fill = predictions_class)) +
  geom_bar(position = "dodge", stat = "count") + 
  labs(title = "Predicted Launch Distribution by Season", 
       x = "Season", 
       y = "Count") +
  theme_minimal() +
  scale_fill_manual(values = c("lightblue", "lightgreen"),
                    labels = c("Reinforcement", "Resettlement")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))



# Display results
cat("Confusion Matrix:\n")
print(conf_matrix)

# Confusion matrix statistics
conf_matrix_stats <- confusionMatrix(
  factor(test_data$predictions_class, levels = c("تعزيز", "إعادة توطين")),
  factor(test_data$نوع_الاطلاق, levels = c("تعزيز", "إعادة توطين"))
)

# Print statistics
print(conf_matrix_stats)
