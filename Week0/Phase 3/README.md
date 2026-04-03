# Sales Data Analysis using PySpark
# What We Have Done

In Phase3, we performed data analysis using PySpark on three datasets: sales, customers, and products. We loaded the data from CSV files into DataFrames and explored their structure using show() and printSchema().

We cleaned the data by removing null values and converted the total_amount column into integer type for accurate calculations. After preprocessing, we performed multiple analytical operations on the data.

We calculated daily sales by grouping records based on the sale date. Then, we analyzed city-wise revenue by joining sales and customers datasets. We also identified repeat customers who placed more than two orders.

Further, we determined the highest spending customer in each city by computing total spending per customer and selecting the maximum value within each city. Finally, we created a reporting table that shows each customer’s total spending and number of orders.
# What We Have Learned

Through this project, we learned how to use PySpark DataFrames for real-world data analysis tasks. We gained experience in loading data, cleaning it using dropna(), and transforming columns using type casting.

We understood how to perform groupBy operations and aggregations such as sum and count. We also learned how to use joins to combine multiple datasets and extract meaningful insights.

Additionally, we learned how to solve problems like identifying top customers using aggregation logic and how to handle column ambiguity issues using aliases. This project also helped us understand how PySpark operations can be translated into SQL queries.
