# Split data into training and testing sets
set.seed(123)  
sample_indices <- sample(1:nrow(Air_Quality), size = 0.7 * nrow(Air_Quality))

# Training set
train_data <- Air_Quality[sample_indices, ]

# Testing set
test_data <- Air_Quality[-sample_indices, ]

# Linear Regression Model
lm_model <- lm(HealthImpactScore ~ AQI + PM2_5 + PM10 + NO2 + SO2 + O3, 
                       data = train_data)

# Model summary
summary(lm_model)

# Predict on test data using model
predictions <- predict(lm_model, newdata = test_data)

# Calculate RMSE for model
rmse <- sqrt(mean((test_data$HealthImpactScore - predictions)^2))
print(paste("Model RMSE:", rmse))

# Plot actual vs predicted values for the model
ggplot(data = NULL, aes(x = test_data$HealthImpactScore, y = predictions)) +
  geom_point(color = "blue") +
  geom_abline(intercept = 0, slope = 1, color = "red") +
  ggtitle("Actual vs Predicted Health Impact Score (Model)") +
  xlab("Actual Values") +
  ylab("Predicted Values")

