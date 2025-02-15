library(ggplot2)
library(ggcorrplot)
library(dplyr)
library(GGally)

#Summary of Statistics
summary(Air_Quality)
cor_matrix <- cor(Air_Quality %>% select(where(is.numeric)))
print("Correlation matrix:")
print(cor_matrix)

#Scatterplot: AQI vs. HealthImpactScore
ggplot(Air_Quality, aes(x = AQI, y = HealthImpactScore)) +
  geom_point(color = "blue", alpha = 0.6) +
  ggtitle("Scatterplot: AQI vs. HealthImpactScore") +
  xlab("Air Quality Index (AQI)") +
  ylab("Health Impact Score") +
  theme_minimal()

# Boxplot: AQI by HealthImpactClass
ggplot(Air_Quality, aes(x = as.factor(HealthImpactClass), y = AQI)) +
  geom_boxplot(fill = "orange", alpha = 0.7) +
  ggtitle("Boxplot: AQI by Health Impact Class") +
  xlab("Health Impact Class") +
  ylab("Air Quality Index (AQI)") +
  theme_minimal()

# Boxplot: HealthImpactScore by HealthImpactClass
ggplot(Air_Quality, aes(x = as.factor(HealthImpactClass), y = HealthImpactScore)) +
  geom_boxplot(fill = "green", alpha = 0.7) +
  ggtitle("Boxplot: Health Impact Score by Health Impact Class") +
  xlab("Health Impact Class") +
  ylab("Health Impact Score") +
  theme_minimal()






