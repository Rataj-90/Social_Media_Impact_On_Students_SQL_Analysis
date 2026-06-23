# Social Media Impact On Students SQL Analysis

## Dataset Overview
- Dataset size: 1,705 records
- Students: 1,000 unique IDs
- Countries: 111
- Platforms: 12
- Age range: 19–24 years

# SQL Project Description

This project explores the relationship between social media usage, sleep duration, mental health, and academic performance among students from different countries and educational levels.
The analysis was performed using SQL and focuses on identifying behavioral patterns associated with social media consumption and their potential impact on student well-being.

# Project Goal
The objective of this project was to analyze how social media usage relates to sleep habits, mental health, academic performance, and demographic characteristics.
The project aims to answer questions such as:
- Do heavy social media users sleep less?
- Is social media usage associated with lower mental health scores?
- Which platforms are linked to the highest engagement?
- How do usage patterns differ across countries and academic levels?
- Which student groups report the strongest academic impact from social media?
	
# Key Areas of Analysis

## Data Quality Assessment
- Record validation and duplicate analysis
- Student ID investigation
- Data consistency checks

## Social Media Usage Analysis
- Average daily usage
- Platform popularity
- Platform-specific engagement patterns
- Gender-based platform preferences

## User Segmentation
- Light, Medium, and Heavy User classification
- Sleep duration comparison
- Mental health comparison
- Academic impact comparison

## Mental Health & Sleep Analysis
- Relationship between sleep duration and mental health
- Relationship between social media usage and sleep
- Platform-level mental health comparisons

## Academic Analysis
- Social media usage by educational level
- Sleep duration by educational level
- Mental health comparison by educational level
- Academic impact assessment

## SQL Techniques Used
- SELECT
- WHERE
- GROUP BY
- ORDER BY
- Aggregate Functions (COUNT, SUM, AVG)
- CASE WHEN
- Window Functions
- Subqueries
- Data Quality Checks
- Data Segmentation
- Percentage Calculations

# Insight 1 – The impact of social media is more evident in academic performance than in mental health

As social media usage increases, both mental health scores and academic outcomes tend to decline. However, the effect is considerably stronger in the academic domain. As many as 84.6% of Heavy Users reported that social media affects their academic performance, compared to only 13.0% of Light Users. This suggests that the negative consequences of excessive social media use may become noticeable in educational outcomes before they are reflected in self-reported mental well-being.

# Insight 2 – High School students appear to be the most vulnerable group

Among all educational levels, High School students spend the most time on social media, averaging 5.3 hours per day, while also reporting the shortest average sleep duration at 6.3 hours per night. This combination suggests that High School students may be the group most exposed to the potential negative effects associated with excessive social media use.

# Insight 3 – Platform popularity does not necessarily translate into the highest user engagement

Instagram is the most popular platform in the dataset and attracts the largest number of Heavy Users. However, WhatsApp records the highest average daily usage per user. This indicates that the platform with the largest user base is not always the one generating the highest level of engagement, highlighting an important distinction between popularity and usage intensity.
<img width="925" height="425" alt="image" src="https://github.com/user-attachments/assets/5cac1792-a6da-4d97-afbd-ffd68b5c3f44" />
