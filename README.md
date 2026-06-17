# Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository! 🚀

This project demonstrates the end-to-end development of a modern Data Warehouse using SQL Server. The solution follows the Medallion Architecture approach, transforming raw ERP and CRM data into a structured, analytics-ready model that supports business intelligence, reporting, and decision-making.

The project showcases practical data engineering concepts including data ingestion, data cleansing, transformation, dimensional modeling, and analytical reporting. It serves as a portfolio project demonstrating industry-standard Data Warehouse design and ETL development practices.

---

# 🏗️ Data Architecture

The project follows the **Medallion Architecture**, which organizes data into three layers:

![Data Architecture](docs/Data_Architecture.jpg)

## Bronze Layer

The Bronze Layer serves as the raw data repository.

### Purpose

* Store source data without modifications.
* Preserve original ERP and CRM records.
* Maintain a single source of truth.
* Support future auditing and troubleshooting.

### Data Sources

* CRM System Data
* ERP System Data

### Characteristics

* Raw CSV files loaded directly into SQL Server.
* No business logic applied.
* No data cleansing performed.
* Data stored exactly as received from source systems.

---

## Silver Layer

The Silver Layer is responsible for transforming raw data into a clean and standardized format.

### Purpose

* Improve data quality.
* Standardize data formats.
* Remove inconsistencies.
* Prepare data for analytical modeling.

### Data Processing Activities

* Data cleansing
* Handling null values
* Removing duplicates
* Correcting invalid records
* Standardizing dates
* Standardizing text fields
* Business rule implementation
* Data validation

### Benefits

* Improved data consistency
* Better data quality
* Reliable analytical outputs
* Reduced reporting errors

---

## Gold Layer

The Gold Layer contains business-ready data optimized for analytics and reporting.

### Purpose

* Support business intelligence solutions
* Enable efficient reporting
* Provide analytical datasets
* Improve query performance

### Characteristics

* Star schema design
* Fact tables
* Dimension tables
* Business-focused structure

### Business Value

* Faster reporting
* Simplified analytics
* Better business insights
* Enhanced decision-making

---

# 📖 Project Overview

This project consists of four major phases:

## 1. Data Architecture Design

Designed a scalable warehouse architecture based on Medallion Architecture principles.

Activities included:

* Defining Bronze, Silver, and Gold layers
* Designing data flow processes
* Establishing naming conventions
* Creating architecture diagrams

---

## 2. ETL Development

Built ETL processes to move data through the warehouse layers.

### Extract

* Read ERP CSV files
* Read CRM CSV files

### Transform

* Clean data
* Validate records
* Standardize formats
* Apply business rules

### Load

* Load into Bronze Layer
* Transform into Silver Layer
* Populate Gold Layer

---

## 3. Data Modeling

Developed an analytical data model using dimensional modeling principles.

### Dimension Tables

Examples include:

* Customer Dimension
* Product Dimension
* Date Dimension

### Fact Tables

Examples include:

* Sales Fact Table

### Benefits

* Faster analytical queries
* Improved reporting performance
* Simplified business analysis

---

## 4. Analytics & Reporting

Created SQL-based analytics capable of generating business insights.

### Analysis Areas

* Customer behavior
* Product performance
* Sales performance
* Revenue trends
* Business growth patterns

---

# 🎯 Project Objectives

The primary objectives of this project were:

* Build a modern SQL Server Data Warehouse.
* Consolidate multiple source systems into one analytical platform.
* Improve data quality through cleansing and standardization.
* Implement dimensional modeling techniques.
* Enable business reporting and analytics.
* Demonstrate real-world data engineering skills.

---

# ⚙️ ETL Process

The ETL workflow follows a structured pipeline.

## Step 1: Source Data Collection

Data is collected from:

* ERP System
* CRM System

Both datasets are provided as CSV files.

↓

## Step 2: Bronze Layer Loading

Raw files are loaded directly into SQL Server.

Activities:

* File ingestion
* Data storage
* Source preservation

↓

## Step 3: Silver Layer Transformation

Data quality improvements are performed.

Activities:

* Data cleansing
* Duplicate removal
* Null handling
* Format standardization
* Validation checks

↓

## Step 4: Gold Layer Modeling

Business-ready analytical models are created.

Activities:

* Dimension creation
* Fact table creation
* Star schema implementation

↓

## Step 5: Reporting & Analytics

Business insights are generated through SQL queries and reports.

---

# 📊 Data Model

The Gold Layer follows a dimensional modeling approach.

## Star Schema Design

The model consists of:

### Dimension Tables

Dimension tables provide descriptive business information.

Examples:

* Customer Dimension
* Product Dimension
* Date Dimension

### Fact Tables

Fact tables store measurable business events.

Examples:

* Sales Fact Table

### Benefits of Star Schema

* Simplified reporting
* Faster query execution
* Better analytical performance
* Easy business understanding

---

# 🛠️ Tools & Technologies

| Category           | Technology                          |
| ------------------ | ----------------------------------- |
| Database           | SQL Server                          |
| Query Tool         | SQL Server Management Studio (SSMS) |
| Data Source        | CSV Files                           |
| Version Control    | Git                                 |
| Repository Hosting | GitHub                              |
| Documentation      | Markdown                            |
| Diagram Design     | Draw.io                             |

---

# 🎯 Skills Demonstrated

This project demonstrates proficiency in:

### Data Engineering

* ETL Development
* Data Integration
* Data Transformation
* Data Validation

### SQL Development

* Data Loading
* Data Cleansing
* Data Transformation
* Analytical Querying

### Data Warehousing

* Medallion Architecture
* Star Schema Design
* Fact & Dimension Modeling

### Analytics

* Customer Analysis
* Product Analysis
* Sales Analysis
* Trend Analysis

---

# 📈 Business Questions Addressed

This warehouse can answer business questions such as:

### Customer Analysis

* Who are the highest-value customers?
* Which customers generate the most revenue?
* How does customer behavior change over time?

### Product Analysis

* Which products sell the most?
* Which products generate the highest profit?
* Which products underperform?

### Sales Analysis

* What are the monthly sales trends?
* Which periods have the highest revenue?
* How is sales performance changing over time?

### Business Performance

* What drives business growth?
* Which segments contribute most to revenue?
* Where are improvement opportunities?

---

# 📂 Repository Structure

```text
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│   ├── source_crm/                     # CRM source files
│   └── source_erp/                     # ERP source files
│
├── docs/                               # Project documentation and architecture details
│   ├── Data_Architecture.jpg           # Medallion architecture diagram
│   ├── Data_Flow_Diagram.drawio.png    # Data flow diagram
│   ├── Data_Integration_model.drawio.png # Star schema/data model
│   ├── ETL.png                         # ETL process diagram
│   ├── data_catalog.md                 # Dataset descriptions and metadata
│   └── naming_conventions.md           # Naming standards
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Raw data ingestion scripts
│   ├── silver/                         # Data cleansing scripts
│   └── gold/                           # Analytical model scripts
│
├── tests/                              # Data quality and validation tests
│
├── README.md                           # Project documentation
├── LICENSE                             # License information
├── .gitignore                          # Git ignore configuration
└── requirements.txt                    # Project dependencies
```

---

# 🚀 Future Improvements

Potential future enhancements include:

* Incremental data loading
* Historical data tracking
* Data quality dashboards
* Power BI integration
* Automated ETL scheduling
* Cloud migration (Azure / Fabric)

---

# 🛡️ License

This project is licensed under the MIT License.

You are free to use, modify, and distribute this project with proper attribution.
