# 📊 Device Health & Incident Monitoring Dashboard

## 🚀 Project Overview

This project demonstrates an end-to-end data analysis workflow for monitoring device performance and incident trends. It integrates **Python for data cleaning**, **SQL for analysis**, and **Power BI for visualization** to generate actionable insights for system reliability and performance optimization.

---

## 🎯 Objectives

* Monitor device health using CPU usage and temperature
* Classify devices into risk levels (High / Medium / Normal)
* Analyze incidents by severity, device, and issue type
* Identify key factors contributing to system downtime

---

## 🔄 Data Pipeline

Raw Data → Python Cleaning → SQL Analysis → Power BI Dashboard

---

## 🛠 Tools & Technologies

* **Python (Pandas)** – Data cleaning & preprocessing
* **SQL** – Data querying and aggregation
* **Power BI** – Dashboard creation, DAX, and visualization

---

## 📊 Dashboard Features

### 🔵 Device Health Analysis

* Total Devices & High Risk Devices
* Device Risk Distribution
* Top Devices by CPU Usage
* Temperature Hotspot Analysis
* Location-based filtering

### 🔴 Incident Analysis

* Total Incidents & Total Downtime
* Critical Incident Tracking
* Incident Distribution by Severity
* Top Devices by Incident Count
* Issue Type Breakdown

---

## 📈 Key Insights

* Majority of devices fall under **Normal risk**, but high-risk devices require immediate attention
* **Overheating and network failures** are the most frequent causes of incidents
* Critical incidents contribute significantly to downtime
* CPU usage and temperature trends help identify potential failures

---

## 📁 Project Structure

device-health-dashboard/
│
├── data/
│   ├── raw/
│   │   ├── device_health_logs.xlsx
│   │   ├── device_info.xlsx
│   │   └── incident_logs.xlsx
│   │
│   └── cleaned/
│       ├── cleaned_device_health_logs.xlsx
│       ├── clean_device_info.xlsx
│       └── clean_incident_logs.xlsx
│
├── python/
│   └── data_cleaning.ipynb
│
├── sql/
│   └── queries.sql
│
├── powerbi/
│   └── Device Health & Incident Monitoring Dashboard.pbix
│
├── images/
│   ├── dashboard1.png
│   └── dashboard2.png
│
└── README.md
```

---

## 📷 Dashboard Preview

![Dashboard](images/dashboard1.png)

---

## 💡 How to Use

1. Open the `.pbix` file in Power BI Desktop
2. Navigate between:

   * Device Health Dashboard
   * Incident Analysis Dashboard
3. Use slicers (Location, Device Type) to filter data
4. Analyze trends and identify high-risk devices

---

## 📌 Future Improvements

* Integrate real-time data sources
* Implement alerting system for high-risk devices
* Add drill-through analysis for deeper insights
* Deploy dashboard to Power BI Service

---

## 🔗 Connect with Me

LinkedIn: [www.linkedin.com/in/anasjamal](http://www.linkedin.com/in/anasjamal)
