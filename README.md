# 🪐 Exoplanet Habitability Analysis & KOI Classification

An end-to-end data science project built using Kepler exoplanet data. This project includes data preprocessing, feature engineering, habitability scoring, exploratory analysis, classification modeling, and a fully interactive Streamlit dashboard.

---
![image](https://github.com/user-attachments/assets/38691f71-430f-4b77-8357-45a7dc7bb72b)

## 📌 Project Overview

This project aims to explore and classify Kepler Objects of Interest (KOIs) to determine their potential **habitability** and disposition using scientific metrics and machine learning.

The complete pipeline includes:

1. 🧹 Data Cleaning & Preprocessing  
2. 🧪 Exploratory Data Analysis (EDA)  
3. 🛠️ Feature Engineering  
4. 🌍 Habitability Scoring System  
5. 🎯 KOI Disposition Classification (Machine Learning)  
6. 📊 Visualizations

---

## 🌐 Project Workflow

### 1. 🧹 Data Cleaning
- Loaded `KeplerExoRaw.csv`
- Removed columns with excessive missing values
- Handled missing data via imputation
- Converted types and removed duplicates

### 2. 🛠️ Feature Engineering
- Created features like:
  - `pos_diff_mdec`, `pos_diff_msky`: positional differences
  - `avg_err_mdec`: average error
  - `total_pos_diff`: total spatial noise
  - Encoded categorical flags
  - Extracted vetting year

### 3. 📈 Exploratory Data Analysis
- Distributions of planetary and stellar features
- Correlation heatmaps
- Trends across vetting years
- Comparison of features across KOI classes

### 4. 🌍 Habitability Scoring System
Planets scored from 0 to 3 based on:

| Feature              | Ideal Range            |
|---------------------|------------------------|
| Radius              | 0.5 – 1.5 Earth radii  |
| Equilibrium Temp    | 200 – 320 Kelvin       |
| Positional Noise    | Total diff < 0.1       |

Each flag contributes 1 point to the `habitability_score`.

### 5. 🎯 KOI Disposition Classification
- Goal: Predict KOI disposition:  
  `CANDIDATE`, `CONFIRMED`, `FALSE POSITIVE`, `NOT DISPOSITIONED`
- Features used:
  - Engineered features + habitability score
- Algorithms:
  - Random Forest Classifier
- Metrics:
  - Confusion Matrix
  - Classification Report
  - PCA Visualization

## 🧬 KOI Disposition Classes Explained
CANDIDATE: Probable planet, under review

CONFIRMED: Verified exoplanet

FALSE POSITIVE: Mistaken signal (e.g., stellar noise)

NOT DISPOSITIONED: Unclassified or unreviewed

---

## Classification Report

                  precision    recall  f1-score 

        CANDIDATE       0.35      0.19      0.25
        CONFIRMED       0.75      0.87      0.81
      FALSE POSITIVE    0.39      0.19      0.26 
     NOT DISPOSITIONED  0.70      0.68      0.69


## 📊 Visualisation

### Features:
- Habitability Mapping (radius vs. temperature) `/visual`
  ![Screenshot 2025-04-15 104746](https://github.com/user-attachments/assets/6d073dbc-cc5e-457b-9918-b340481018ea)
  ![Screenshot 2025-04-15 104805](https://github.com/user-attachments/assets/8c7e57f2-1113-4038-9a8d-6ff655f38a72)

- Confusion Matrix for model performance
  ![Screenshot 2025-04-15 104834](https://github.com/user-attachments/assets/09ae4c4a-84d3-4a89-8dd5-403d0e269eb2)

- PCA plot for numeric feature space


---

## 🛠️ Tech Stack
Language: Python 3.x

Libraries:

Pandas, NumPy, Matplotlib, Seaborn

Scikit-learn (modeling + PCA)

---
 
## 📁 Project Structure

📦 exoplanet-habitability
 ┣ 📄 KeplerExoRaw.csv           # Raw data
 
 ┣ 📄 cleankepler.csv            # Cleaned dataset
 
 ┣ 📄 data.csv                   # Feature-engineered dataset
 
 ┣ 📄 featureEngineer.py         # Feature engineering script
 
 ┣ 📄 model_train.py             # ML model training & evaluatio
 
 ┣ 📄 README.md
 
---

## DockerHub Upload

Link : https://hub.docker.com/repository/docker/newbieshubham/shubham-resume/tags/Exoplanet/sha256:ee4eb22206cdbd47dd5d7e0259cf203e1d6359a393863adfaebd05ca64cae75b

## 📌 Future Enhancements
Hyperparameter tuning for model

SHAP or feature importance analysis

Deployment via Docker or Streamlit Cloud

Integration with real-time exoplanet APIs

---

## 🙏 Acknowledgments
NASA Exoplanet Archive

Kepler Mission

---

