Healthcare Data Cleaning Project
Project Overview

This project demonstrates the process of cleaning and transforming a healthcare dataset using MySQL. The goal was to improve data quality by identifying and correcting inconsistencies, handling missing values, and standardizing records for further analysis.

Dataset

The dataset contains patient healthcare records with various data quality issues, including missing values, inconsistent formatting, duplicate records, and invalid entries.

Source: https://codeload.github.com/eyowhite/Messy-dataset/zip/refs/heads/main

Objectives
Identify data quality issues.
Standardize data formats.
Handle missing and invalid values.
Remove duplicate records.
Prepare the dataset for analysis.
Data Cleaning Tasks Performed
1. Standardized Patient Information
Corrected inconsistencies in patient names.
Standardized text formatting.
2. Date Formatting
Converted dates into a consistent format.
Corrected invalid date entries.
3. Missing Values
Identified missing values.
Replaced inappropriate placeholders with NULL values.
4. Data Validation
Checked for unrealistic or invalid values.
Verified consistency across records.
5. Duplicate Records
Identified and removed duplicate entries where necessary.
SQL Techniques Used
SELECT
UPDATE
CASE Statements
WHERE Clauses
GROUP BY
Aggregate Functions (COUNT, AVG, etc.)
Data Validation Queries
Results

After cleaning:

Data inconsistencies were reduced.
Missing values were properly handled.
Records were standardized and ready for analysis.
Overall data quality was improved.
Skills Demonstrated
SQL
Data Cleaning
Data Transformation
Data Validation
Problem Solving
Analytical Thinking
Files Included
healthcare_cleaning.sql – SQL script used for cleaning and transformation.
cleaned_healthcare_data.csv – Cleaned dataset.
README.md – Project documentation
