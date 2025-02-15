# Air Quality and Health Impact Analysis  

## Project Overview  
This project explores the impact of air quality on health by analyzing pollution data and building machine learning models in **R** to predict health outcomes. Using data from the **Kaggle Air Quality and Health Impact Dataset**, the project identifies key pollutants affecting public health and provides insights for decision-makers, health organizations, and policymakers.  

## Objectives  
### 1. **Understanding Air Quality and Health Connections**  
- Analyzing the effects of pollutants **(PM10, PM2.5, NO2, SO2, O3)** on hospital visits, respiratory issues, and overall health scores.  

### 2. **Predictive Modeling**  
- **Linear Regression:** Predicting health impact scores based on pollutant levels.  
- **Decision Trees:** Classifying health risk categories from pollution data.  

### 3. **Providing Data-Driven Recommendations**  
- Recommending actions to reduce pollution-related health risks.  
- Supporting policymakers with predictive insights for effective interventions.  

## Dataset  
- **Size:** 5,800+ records, 15 features.  
- **Key Features:**  
  - **Air Quality Index (AQI):** A measure of pollution levels.  
  - **Pollutants:** PM10, PM2.5, NO2, SO2, O3.  
  - **Health Data:** Hospital visits, respiratory cases, health impact score.  

## Data Processing  
- **Missing Values:** Handled using **mean/median imputation** based on variability.  
- **Duplicate Removal:** Ensured data integrity.  
- **Standardization:** Made numerical values consistent for analysis.  

## Exploratory Data Analysis (EDA)  
- **Scatterplots:** Show relationships between **AQI and health impact scores**.  
- **Boxplots:** Compare **AQI across health risk categories** to identify outliers.  
- **Feature Correlations:** Identify pollutants with the most significant health effects.  

## Machine Learning Models  
### 1. **Linear Regression**  
- **Purpose:** Predict health impact scores (continuous values).  
- **Results:**  
  - Adjusted **R² = 0.692** (69.2% variance explained).  
  - **RMSE = 7.24**, indicating average prediction error.  
- **Enhancements:** Interaction terms like **AQI² and pollutant interactions** to capture non-linear relationships.  

### 2. **Decision Trees**  
- **Purpose:** Classify health risk levels (Low, Moderate, High).  
- **Results:**  
  - **85% accuracy** on test data.  
  - Strong distinction between **low and moderate risks**, but slight misclassification in **higher risk categories** due to class imbalance.  

## Tools & Technologies  
- **Programming Language:** R  
- **Libraries:** `ggplot2`, `dplyr`, `caret`, `rpart`, `randomForest`  
- **Data Source:** Kaggle’s Air Quality and Health Impact Dataset  

## Results & Insights  
- PM2.5 and NO2 are the most significant pollutants affecting health.  
- Higher AQI levels strongly correlate with increased hospital visits.  
- Machine learning models provide reliable predictions for health risk assessment.  

## How to Run  
1. **Clone the repository**  
   ```bash
   git clone https://github.com/your-repo-url.git
   cd air-quality-health-analysis
   ```  
2. **Install required R libraries**  
   ```r
   install.packages(c("ggplot2", "dplyr", "caret", "rpart", "randomForest"))
   ```  
3. **Run the analysis scripts**  
   ```r
   source("data_cleaning.R")
   source("eda_visualization.R")
   source("model_training.R")
   ```  
4. **View Results**  
   - Check **visualizations** in the `plots/` directory.  
   - Model predictions available in `results/`.  
