
## 📌 Project Objective
This project analyzes global COVID-19 data to identify infection trends, growth spikes, and country-level impact using advanced SQL techniques.

---

## 📊 Dataset
The dataset includes:
- Location
- Date
- Total Cases
- New Cases
- Total Deaths
- Population

---

## 🛠 SQL Concepts Used
- Aggregations (SUM, MAX)
- CTE (WITH clause)
- Window Functions (LAG)
- Ranking (RANK)
- Growth Percentage Calculation
- Time-Based Grouping (YEAR, MONTH)

---

## 🔍 Analysis Performed

### 1️⃣ Infection Rate by Population
Calculated percentage of population infected per country.

### 2️⃣ Growth Spike Detection
Used LAG() to calculate day-over-day growth percentage.

### 3️⃣ Country Ranking
Ranked countries based on infection percentage.

### 4️⃣ Monthly Global Trend
Aggregated global cases by year and month.

### 5️⃣ Peak Global Day
Identified the date with highest global new cases.

---

## 📈 Key Insights
- Certain countries experienced extreme infection growth spikes.
- Infection percentage varies significantly relative to population size.
- Clear monthly global trend waves observed during peak pandemic periods.
