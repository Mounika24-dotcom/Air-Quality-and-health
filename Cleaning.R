# Load necessary libraries
library(dplyr)
library(ggplot2)
library(caret)
library(readxl)

Air_Quality <- read_excel("/Users/yegireddimounika/Downloads/Air_Quality.xlsx")

#View
View(Air_Quality)

#Summary
summary(Air_Quality)

#Converting all the NA values in Air Quality Index as the mean
mean_AQI <- mean(Air_Quality$AQI, na.rm = TRUE)
Air_Quality$AQI[is.na(Air_Quality$AQI)] <- mean_AQI

#Converting all the NA values in particulate matter less than 10 micrometers as the median
median_PM10 <- median(Air_Quality$PM10, na.rm = TRUE)
Air_Quality$PM10[is.na(Air_Quality$PM10)] <- median_PM10

#Converting all the NA values in particulate matter less than 2.5 micrometers as the mean
mean_PM2_5 <- mean(Air_Quality$PM2_5, na.rm = TRUE)
Air_Quality$PM2_5[is.na(Air_Quality$PM2_5)] <- mean_PM2_5

#Converting all the NA values in Concentration of nitrogen dioxide as the median
median_NO2 <- median(Air_Quality$NO2, na.rm = TRUE)
Air_Quality$NO2[is.na(Air_Quality$NO2)] <- median_NO2

#Converting all the NA values in Concentration of sulfur dioxide as the median
median_SO2 <- median(Air_Quality$SO2, na.rm = TRUE)
Air_Quality$SO2[is.na(Air_Quality$SO2)] <- median_SO2

#Converting all the NA values in Concentration of ozone as the mean
mean_O3 <- mean(Air_Quality$O3, na.rm = TRUE)
Air_Quality$O3[is.na(Air_Quality$O3)] <- mean_O3

#Converting all the NA values in temperature as the mean
mean_Temperature<- mean(Air_Quality$Temperature, na.rm = TRUE)
Air_Quality$Temperature[is.na(Air_Quality$Temperature)] <- mean_Temperature

#Converting all the NA values in Humidity as the mean
mean_Humidity<- mean(Air_Quality$Humidity, na.rm = TRUE)
Air_Quality$Humidity[is.na(Air_Quality$Humidity)] <- mean_Humidity

#Converting all the NA values in Wind Speed as the mean
mean_WindSpeed<- mean(Air_Quality$WindSpeed, na.rm = TRUE)
Air_Quality$WindSpeed[is.na(Air_Quality$WindSpeed)] <- mean_WindSpeed

# Check for duplicate rows
duplicates <- Air_Quality[duplicated(Air_Quality), ]
print(paste("Number of duplicate rows:", nrow(duplicates)))

# Save the cleaned dataset to a new CSV file
write.csv(Air_Quality, "Air_Quality_CleanedData.csv", row.names = FALSE)




