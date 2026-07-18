# Cross-Lagged-Panel-Modelling-CLPM

This repository contains a longitudinal data analysis examining the reciprocal relationships between depression, emotional wellbeing, and self-reported general health using Cross-Lagged Panel Modeling (CLPM) within the Structural Equation Modeling (SEM) framework.

The project was completed during the IIT Kanpur RISE Summer Internship 2026 under the supervision of Prof. Nivedita Bhaktha as a methodological demonstration of longitudinal SEM techniques.

# Objectives

The study aimed to:

Investigate whether depression predicts future self-reported health.
Examine whether emotional wellbeing predicts later health outcomes.
Assess whether self-reported health also predicts subsequent mental health, testing bidirectional relationships.
Demonstrate the application and interpretation of Cross-Lagged Panel Models (CLPM) using longitudinal data.
Dataset

The analyses use secondary longitudinal data collected in New Zealand from parents across three measurement waves, including one pre-pandemic assessment and two follow-up assessments during the COVID-19 pandemic.


# Analysis Workflow

The complete workflow was implemented in R and includes:

Data cleaning and preprocessing
Reshaping longitudinal data from long to wide format
Missing data assessment
Descriptive statistics
Pearson correlation analyses
Cross-Lagged Panel Modeling (CLPM)
Structural Equation Modeling (SEM) using the lavaan package
Model fit evaluation (χ², CFI, TLI, RMSEA, SRMR)
Interpretation of autoregressive and cross-lagged effects

# Two separate three-wave CLPMs were estimated:

Depression ↔ Self-Reported Health
Emotional Wellbeing ↔ Self-Reported Health

# Software
R
lavaan
tidyverse
Supporting packages for data management and visualization.
This repository is intended for research transparency, reproducibility, and educational purposes. The scripts reproduce the analyses performed in the project but do not include the original survey data.
# Disclaimer

This repository is intended for research transparency, reproducibility, and educational purposes. The original dataset belongs to the original study authors and is therefore not redistributed in this repository.

The analyses evaluated both temporal stability (autoregressive effects) and reciprocal longitudinal relationships (cross-lagged effects) between the constructs.
