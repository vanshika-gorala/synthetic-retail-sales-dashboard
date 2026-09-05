# Synthetic Retail Sales Dashboard

## Project Overview
An interactive retail sales dashboard built using a synthetic online retail dataset. The project demonstrates an end-to-end data analytics workflow using Excel, SQL, DAX, and Power BI.

## Tools & Technologies
- Excel
- MySQL
- SQL
- Power BI
- DAX

## Data Cleaning – Excel
- Checked for duplicate records.
- Created a Sales column using Price × Quantity.
- Identified missing values in Gender and Review Score.
- Used Mode to handle missing Gender values.
- Used Mean to handle missing Review Score values.

## SQL Analysis
Analyzed the dataset using MySQL Workbench to calculate and identify:
- Total Sales
- Unique Customers
- Total Quantity Sold
- Average Order Value (AOV)
- Sales by Category
- Top 5 Products by Quantity Sold
- Top 3 Cities by Sales
- Highest Sales Month
- Product Sales Ranking using Window Functions
- Products with Sales Above Average using Subqueries

## DAX Measures
Created DAX measures for:
- Total Sales
- Total Quantity Sold
- Total Products
- Total Customers
- Average Rating
- Average Order Value (AOV)

## Power BI Dashboard
Built an interactive dashboard with:
- KPI Cards
- Year and Month slicers
- Category, Product, Gender and Payment Mode filters
- Donut Chart
- Treemap
- Area Chart
- Bar Charts

## Key Insights
- Electronics generated the highest category sales.
- Port Melissaborough recorded the highest city-level sales.
- Cash on Delivery generated the highest sales among payment modes.
- Smartphones were the highest-selling product by quantity.
- Sales peaked in August and December 2024.

## Project Files
- `copy_online_retail_data.xlsx` – Excel dataset
- `retail_data_insights2.sql` – SQL analysis queries
- `retail_data_dashboard.pbix` – Power BI dashboard
- `Screenshot 2026-09-04 144820.png` – Dashboard screenshot
