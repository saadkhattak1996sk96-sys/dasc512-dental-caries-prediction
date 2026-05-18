# Age-Stratified Dental Caries Prediction — NHANES 2017-2018

**Module:** DASC512 — Artificial Intelligence and Machine Learning in Health  
**Institution:** University of Liverpool  
**Student ID:** 201949015  

## Overview

This project builds on Orlenko et al. (2025), who identified significant 
age-driven phenotypic heterogeneity in NHANES 2017-2018 dental caries data 
using unsupervised machine learning. We test whether that heterogeneity 
produces measurable improvements in supervised prediction by comparing pooled 
and age-stratified Random Forest and artificial neural network classifiers 
across 8,186 participants.

## Key Findings

- Random Forest significantly outperformed the ANN on binary outcome 
(AUC 0.760 vs 0.709, p=0.007) and multiclass outcome (AUC 0.728 vs 0.678, p=0.030)
- Age stratification improved prediction selectively — Children stratum 
achieved AUC 0.839, exceeding the published NHANES benchmark (Pang et al. 2021)
- Feature importances confirmed divergent predictors across strata, providing 
supervised corroboration of Orlenko's unsupervised findings
- Adult stratum (ages 19–64) showed reduced performance under stratification, 
suggesting sub-stratification is needed for this clinically heterogeneous group

## Repository Structure
├── DASC512_Assignment2_Dental_Caries_Prediction.ipynb  # Main notebook
├── requirements.txt                                     # Python dependencies
├── figures/                                             # All output figures
│   ├── Figure_1_Caries_Prevalence_By_Age.png
│   ├── Figure_2_RF_ROC_Curves.png
│   ├── Figure_3_ANN_ROC_Curves.png
│   ├── Figure_4_Binary_Metric_Comparison.png
│   ├── Figure_4_Multiclass_Metric_Comparison.png
│   ├── Figure_5_ANN_Loss_Curves.png
│   ├── Figure_6_Confusion_Matrices.png
│   ├── Figure_7_Feature_Importances.png
│   └── Figure_8_Summary_Table.png
└── tables/                                              # All output tables
├── all_fold_metrics.csv
├── summary_metrics.csv
├── statistical_comparisons.csv
└── summary_table_display.csv

## How to Run

### Option 1 — Google Colab (recommended)

1. Open the notebook in Google Colab
2. Mount your Google Drive when prompted
3. Upload `all_2018_processed_cleaned_data.txt` to your Drive under 
`DASC512_Assessment2/`
4. Run all cells in order from Chapter 1 to Chapter 12

### Option 2 — Docker (see below)

See Docker instructions in the section below.

## Requirements

- Python 3.10+
- See `requirements.txt` for all dependencies
- Dataset: `all_2018_processed_cleaned_data.txt` (Orlenko et al. 2025 
cleaned NHANES 2017-2018 pipeline)

## Docker

```bash
docker pull [your-dockerhub-username]/dasc512-dental-caries
docker run -it [your-dockerhub-username]/dasc512-dental-caries
```

## Foundation Paper

Orlenko A, Mure JD, Gluch JI, Gregg J, Compher CW, Ren Z, Koo H, Moore JH. 
Uncovering Dental Caries Heterogeneity in NHANES Using Machine Learning. 
Journal of Dental Research. 2025. 
doi:10.1177/00220345251398027

## Code Quality

Code quality verified using Flake8 (PEP8 compliance, max line length 100) 
across the full notebook prior to submission.
