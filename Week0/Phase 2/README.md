# Week0 Phase 2 
# Customer Orders Analysis using PySpark
What We Have Done

We created two datasets:

A customers dataset containing customer details such as name, city, and age
An orders dataset containing transaction details like order amount and date

Using these datasets, we performed several analytical operations:

Joined customer and order data to understand relationships between users and their purchases
Calculated the total spending of each customer
Identified the top 3 customers based on total spending
Found customers who have not placed any orders
Computed city-wise total revenue
Calculated the average order value per customer
Identified customers with multiple orders
Sorted customers based on their total spending in descending order

We also implemented all these operations using SQL queries, showing how the same logic can be applied in both PySpark and SQL environments.

# Outcomes

How to use PySpark DataFrames for data processing
Performing different types of joins (inner join, left join)
Using aggregation functions like sum(), avg(), and count()
Applying groupBy operations for data analysis
Filtering data using conditions such as NULL checks
Sorting and ranking data using orderBy() and limit()
Writing equivalent SQL queries for DataFrame operations
Understanding how PySpark can handle structured data similar to relational databases

We also learned how to:

Convert real-world problems into data queries
Analyze customer behavior using transaction data
Work with both programmatic (PySpark) and query-based (SQL) approaches
