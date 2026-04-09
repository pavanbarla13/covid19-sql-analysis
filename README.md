
# COVID-19 Global Data Analysis (SQL)

## 📌 Business Problem  
Analyze global COVID-19 data to identify infection trends, growth patterns, and high-risk countries. The goal is to extract insights that can support data-driven decision-making and resource planning.

---

## 📊 Dataset  
- Global COVID-19 dataset  
- Fields: Location, Date, Total Cases, New Cases, Total Deaths, Population  
- Dataset Size: 100,000+ records (update if different)  

---

## 🛠️ SQL Concepts Used  
- Aggregations (SUM, MAX)  
- Common Table Expressions (CTE - WITH clause)  
- Window Functions (LAG)  
- Ranking (RANK)  
- Growth Percentage Calculation  
- Time-Based Grouping (YEAR, MONTH)  

---

## 🔍 Analysis Performed  

1. Calculated infection rate (%) based on population for each country  
2. Identified day-over-day growth spikes using LAG function  
3. Ranked countries by infection percentage  
4. Analyzed monthly global trends of COVID-19 cases  
5. Identified peak global infection days  

---

## 📈 Key Insights  

- Top 10 countries contributed a major share of total global COVID-19 cases  
- Infection rates varied significantly across countries relative to population size  
- Multiple sharp growth spikes indicate recurring waves of infection  
- Monthly trends revealed peak periods during major outbreak phases  

---

## 💡 Business Interpretation  

- Countries with higher infection rates require stronger healthcare response and containment strategies  
- Growth spikes highlight the need for early detection and monitoring systems  
- Trend analysis can support forecasting and better resource allocation during future outbreaks  

---

## 📁 Project Structure  

- `data/` → Dataset files  
- `sql/` → SQL queries and analysis scripts  
- `README.md` → Project documentation  

---

## 🚀 Conclusion  

This project demonstrates the use of SQL to analyze large-scale real-world datasets and extract meaningful insights. It highlights how data analysis can be used to understand trends, detect anomalies, and support strategic decision-making.
