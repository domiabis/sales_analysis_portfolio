# Retail Sales Insights Dashboard – Root Cause Analysis (SQL + Power BI)

### 📊 Project Overview
This project analyzes a **sales revenue decline** for a **retail startup** and uncovers insights using **SQL and Power BI**.  
The goal was to diagnose **why revenue dropped by 18% in Q2 2024** despite stable order volume.

---

### 🎯 Business Problem
The company experienced a **drop in total revenue** but customer orders remained constant.  
This indicated a **fall in Average Order Value (AOV)**, suggesting a change in **customer purchase behavior or product mix**.

---

### ✅ Key Objectives
- Analyze **revenue trends** over time
- Calculate **AOV, revenue growth, and MoM% change**
- Identify **high-performing and declining product categories**
- Perform **Root Cause Analysis** using data
- Build an **interactive Power BI dashboard** for insights

---

### 🛠 Tools & Technologies
| Tool | Purpose |
|------|---------|
| SQL | Data extraction & analysis |
| Excel / Power Query | Data cleaning |
| Power BI | Data modeling & dashboard |
| DAX | Measures & KPIs |

---

### 📂 Dataset
- Records: 5,000+ transactions  
- Tables Used:
  - `orders` – order details (date, product, quantity, price)
  - `customers` – customer info (region)
  - `products` – product category mapping

---

### 🔧 Data Model & Measures
Key DAX Measures Used:
```DAX
Total Revenue = SUMX(orders, orders[quantity] * orders[price])
Total Orders = DISTINCTCOUNT(orders[order_id])
Average Order Value = DIVIDE([Total Revenue], [Total Orders])