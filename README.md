Welcome to my **Data Warehouse and Analytics Project** repository.
This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights.  It's a portfolio project that highlights industry best practices in data engineering and analytics.

---

## Project Overview
This project involves:
1. **Data Architecture**: Designing a modern data warehouse using Medallion Architecture **Bronze**, **Silver**, and **Gold** layers.
2. **ETL Pipelines**: Extracting, transforming, and loading data from source systems into the warehouse.
3. **Data Modeling**: Developing fact and dimension tables optimized for analytical queries.
4. **Analytics & Reporting**: Creating SQL-based reports and dashboards for actionable insights.

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

## Data Architecture
The data architecture for this project follows the Medallion Architecture Bronze, Silver, and Gold layers.

![Data Architecture](docs/data_architecture-ar.png)

1. **Bronze Layer**: This layer stores raw data as-is from the source systems. Data is ingested from CSV files into SQL Server Database.
2. **Silver Layer**: This layer inclues data cleansing, standardization, and normalization processes to prepare data for analysis.
3. **Gold Layer**: This layer houses business-ready data modeled into a star schema required for reporting and analytics.
---

### BI: Analytics & Reporting (Data Analytics)

### Objective
Develop SQL-based analytics to deliver detailed insights into:
- **Customer Behavior**
- **Product Performance**
- **Sales Trends**

These insights empower stakeholders with key business metrics, enabling strategic decision-making.

---

## 🪪 License

This project is licensed under the MIT License.  You are free to use, modify, and share this project with proper attribution.

### Connect with me
Hi there! I’m **Ashley Roberts**, and I created this project to demonstrate my SQL skills and apply data analytics and business intelligence concepts.


- 💼 [LinkedIn](https://www.linkedin.com/in/ashleymhroberts/)
- 🌐 [Portfolio](https://ashleyroberts.carrd.co/)

