Welcome to my **Data Warehouse and Analytics Project** repository.
This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights.  It's a portfolio project that highlights industry best practices in data engineering and analytics.

---

## Project Overview
This project involves:
1. **Data Architecture**: Designing a modern data warehouse using Medallion Architecture **Bronze**, **Silver**, and **Gold** layers.
2. **ETL Pipelines**: Extracting, transforming, and loading data from source systems into the warehouse.
3. **Data Modeling**: Developing fact and dimension tables optimized for analytical queries.
4. **Analytics & Reporting**: Writing advanced SQL queries to generate reports for actionable insights.

---

## 📋 Data Warehouse Project Requirements

### Building the Data Warehouse (Data Engineering)

### Objective
Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decisiong making.

### Specifications
- **Data Sources**: Import data from two source systems (ERP and CRM) provided as CSV files.
- **Data Quality**: Cleanse and resolve data quality issues prior to analysis.
- **Integration**: Combine both sources into a single, user-friendly data model designed for analytical queries.
- **Scope**: Focus on the latest dataset only; historization of data is not required.
- **Documentation**: Provide clear documentation of the data model to support both business stakeholders and analytics teams.

### Data Architecture
The data architecture for this project follows the Medallion Architecture Bronze, Silver, and Gold layers.

![Data Architecture](docs/data_architecture-ar.png)

1. **Bronze Layer**: This layer stores raw data as-is from the source systems. Data is ingested from CSV files into SQL Server Database.
2. **Silver Layer**: This layer inclues data cleansing, standardization, and normalization processes to prepare data for analysis.
3. **Gold Layer**: This layer houses business-ready data modeled into a star schema required for reporting and analytics.
---

## BI: Analytics & Reporting (Data Analytics)

### Objective
Develop SQL-based analytics to deliver detailed insights into:
- **Customer Behavior**
- **Product Performance**
- **Sales Trends**

These insights empower stakeholders with key business metrics, enabling strategic decision-making.

### Approach
- **Exploratory Analytics**: Queried the products, sales, and customer tables, created in the Gold layer of the Data Warehouse, to explore the Dimensions, Dates and Measures in the dataset. 
- **Magnitude Analysis**: Aggregated measures and grouped them by dimensions or categories. This helps to understand data distribution across categories. 
- **Ranking Analysis**: Ranked items (e.g., products, customers) based on performance and other metrics to identify high and low performers.
- **Change over Time Analysis**: Performed time-series analysis to track trends in growth, and changes in key metrics over time.
- **Cumulative Analysis**: Calcuated running totals and moving averages for key metrics to track cumulative performance over time.
- **Performance Analysis**: Analyzed the yearly performance of products by comparing their sales to both the average sales performance of the product, and the previous year's sales. 
- **Part-to-Whole Analysis**: Calculated how much eah product contributed to total sales. 

### SQL Functions and Clauses Used:

| `LEFT JOIN` | `UNION ALL` | `CASE WHEN` | `MIN()` | `MAX()` |
| `DATEDIFF()` | `COUNT()` | `DISTINCT` | `SUM()` | `AVG()` |
| `GROUP BY` | `ORDER BY` | `LAG() OVER()` | `AVG() OVER()` | `SUM() OVER()` |

After doing the analysis, **I created 2 reports as Views summarizing the results** of the above.  These can be used to see consolidated results or to generate further insights.

---


### Connect with me
Hi there! I’m **Ashley Roberts**. I created this project to advance my SQL skills through an end-to-end workflow — from building a data warehouse to writing advanced SQL queries that surface actionable analytical insights and support data-driven decision-making.


- 💼 [LinkedIn](https://www.linkedin.com/in/ashleymhroberts/)
- 🌐 [Portfolio](https://ashleyroberts.carrd.co/)

### 🪪 License

This project is licensed under the MIT License.  You are free to use, modify, and share this project with proper attribution.
