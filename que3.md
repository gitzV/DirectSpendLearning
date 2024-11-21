# Filtering and Conditions
### ~> Retrieve all purchase orders placed in the year 2023.
### -> Find all vendors associated with purchase orders where the quantity exceeds 1,000 units.
### -> Identify all transactions where the currency is not USD.

# Advanced Aggregation
### -> Calculate the average price per unit for each material.
### -> Determine the vendor with the lowest average price per transaction.
### -> Find the total spend for each plant and sort the results in descending order.

# Joins and Multi-Table Analysis
### -> Write a query to list the purchase order number, plant name, and material description for all transactions.
### -> Identify vendors who supply multiple materials.
### -> Create a report showing the total spend per vendor, broken down by year.

# Time-Based Analysis
### -> Calculate the total number of transactions for each month in the past year.
### -> Identify the months with the highest and lowest total spend.
### -> Write a query to find the most recent transaction for each vendor.

# Data Integrity and Validation
### -> Check for duplicate POnumber entries in the SAT_PO_TRAN table.
### -> Verify if every PLANT_PK in SAT_PO_TRAN exists in the Hub_Plant table.
### -> Find all rows in SAT_PO_TRAN where the price or quantity is negative.

# Derived Metrics
### -> Calculate the total revenue in USD for all purchase orders, assuming a conversion rate for non-USD currencies.
### -> Create a column to calculate the total cost (price * lineitem) for each transaction.
### -> Determine the percentage contribution of each material to the total spend.

# Subqueries and Common Table Expressions (CTEs)
### -> Use a subquery to identify the vendor with the highest spend.
### -> Write a CTE to calculate cumulative spend by month for each vendor.
Identify materials that were purchased by at least 5 different vendors.
