# PySpark Bucketing & Segmentation (Phase 4A)


## 📂 Dataset
- sales.csv → Contains transaction details including total_amount  

---

## Objective
To understand how continuous values (like total spend) can be converted into meaningful categories such as Gold, Silver, and Bronze using different approaches.

---

##  Methods Implemented

### 1. Bucketizer (MLlib)
- Uses predefined ranges (splits) to divide data into buckets  
- Output is numeric (0, 1, 2)  

### 2. Window-based Ranking
- Uses percent_rank() to assign relative ranking between 0 and 1  
- Helps understand customer position in dataset  

### 3. Conditional Segmentation
- Business-rule based segmentation  
- Gold → total_spend > 10000  
- Silver → 5000 to 10000  
- Bronze → < 5000  

### 4. Grouping Analysis
- Groups data by segment  
- Counts number of customers in each category  

### 5. Quantile-based Segmentation
- Divides data into equal-sized groups based on distribution  
- More balanced than fixed thresholds  

### 6. Comparison of Methods
- Compares:
  - Conditional segmentation  
  - Quantile segmentation  
  - Bucketizer output  
  - Ranking  

---

## Output Insights
- Shows how different segmentation techniques produce different results  
- Helps identify customer distribution across categories  
- Highlights differences between rule-based and data-driven approaches  

---

## Learnings
- Conditional logic is best for business rules  
- Quantile segmentation adapts to data distribution  
- Bucketizer is useful for machine learning pipelines  
- Ranking helps in relative comparison  

---

