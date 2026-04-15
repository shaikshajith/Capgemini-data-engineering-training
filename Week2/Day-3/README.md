#  Medallion Assessment
This project demonstrates the implementation of a Medallion Architecture using Databricks to process and transform raw data into analytics-ready datasets.

The pipeline is structured into three layers:
- Bronze (Raw Data)
- Silver (Cleaned Data)
- Gold (Business-Level Data)

---

##  Architecture


- **Bronze Layer**
  - Stores raw ingested data
  - No transformations applied
  - Data is stored as-is

- **Silver Layer**
  - Performs data cleaning and transformation
  - Handles:
    - Null values
    - Invalid data types
    - Negative values
    - Duplicate records

- **Gold Layer**
  - Contains aggregated and business-ready data
  - Used for reporting and analytics

---

##  Project Structure (Databricks)

Catalog: `medallion_sample`

Schemas:
- bronze
- silver
- gold

Volume Path:
- `/Volumes/medallion_sample/bronze/raw_data/`

---

##  Data Processing Steps

### 1. Bronze Layer (Data Ingestion)
- Loaded raw CSV data from volume
- Stored data in Delta table without modification

### 2. Silver Layer (Data Cleaning)
Performed the following transformations:
- Converted data types using casting
- Handled invalid values using safe casting
- Removed null values
- Removed duplicate records using window functions
- Handled negative values in `amount` column

### 3. Gold Layer (Data Aggregation)
- Aggregated data for analysis
- Generated insights like total amount per city

---

##  Data Cleaning Techniques

### Null Handling
- Replaced invalid values with NULL
- Used `dropna()` where required

### Data Type Casting
- Converted string columns to integer

### Duplicate Removal
Used window function:
