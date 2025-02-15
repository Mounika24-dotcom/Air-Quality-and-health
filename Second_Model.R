# Load necessary libraries
library(caret)
library(rpart)
library(rpart.plot)

#Prepare the data
set.seed(123) # For reproducibility

# Split the dataset into training (70%) and testing (30%)
train_index <- createDataPartition(Air_Quality$HealthImpactClass, p = 0.7, list = FALSE)
train_data <- Air_Quality[train_index, ]
test_data <- Air_Quality[-train_index, ]

# Train the Decision Tree model
tree_model <- rpart(
  HealthImpactClass ~ AQI + PM10 + PM2_5 + NO2 + SO2 + O3 + Temperature + Humidity + WindSpeed,
  data = train_data,
  method = "class"
)

# Visualize the Decision Tree
rpart.plot(tree_model)

# Ensure the target variable in the test set is a factor
test_data$HealthImpactClass <- factor(test_data$HealthImpactClass)

# Ensure predictions are factors with the same levels as the actual target variable
predictions <- factor(predictions, levels = levels(test_data$HealthImpactClass))

# Evaluate the model
conf_matrix <- confusionMatrix(predictions, test_data$HealthImpactClass)

# Print the confusion matrix
print("Confusion Matrix:")
print(conf_matrix)

# Model Accuracy
accuracy <- conf_matrix$overall["Accuracy"]
print(paste("Model Accuracy:", round(accuracy, 2)))
