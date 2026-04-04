# Phase 3A – Data Quality & Cleaning Challenge

## Objective
The goal of this project is to work with intentionally messy data and apply data cleaning techniques using PySpark. This phase highlights the importance of cleaning data before performing any analysis or building data pipelines.

---

## Dataset Description
The dataset contains customer information with the following columns:

- `customer_id` – Unique identifier for each customer  
- `name` – Customer name  
- `city` – Customer location  
- `age` – Customer age  

### Sample Data
```
(1, "Ravi", "Hyderabad", 25)
(2, None, "Chennai", 32)
(None, "Arun", "Hyderabad", 28)
(4, "Meena", None, 30)
(4, "Meena", None, 30)
(5, "John", "Bangalore", -5)
```

---

## Tools & Technologies
- Python  
- PySpark  
- Spark SQL  

---

## Steps Performed

### 1. Data Loading
A PySpark DataFrame is created using the given dataset.

### 2. Data Issue Identification
The dataset contains several issues:
- Missing values (NULLs)
- Duplicate records
- Invalid values (negative age)

### 3. Data Cleaning
The following cleaning steps were applied:
- Removed rows where `customer_id` is NULL  
- Replaced missing values in `name` and `city` with `"Unknown"`  
- Removed duplicate records  
- Filtered out invalid ages (age ≤ 0)  

### 4. Data Validation
- Checked row count before and after cleaning  
- Verified cleaned dataset  

### 5. Data Aggregation
Performed aggregation to count customers per city:
```python
df_clean.groupBy("city").count().show()
```

---

## Output
After cleaning:
- No null customer IDs  
- No duplicate records  
- No invalid ages  
- Missing values handled properly  

---

## Key Learnings
- Real-world data is messy  
- Data cleaning is mandatory before processing  
- Invalid data leads to wrong results  
- Validation is essential  

---
### Data Cleaning Checklist
- Remove null primary keys  
- Handle missing values  
- Remove duplicates  
- Validate data ranges  
- Verify results after cleaning  

---
