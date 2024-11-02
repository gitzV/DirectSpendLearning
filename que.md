# SQL Interview Questions

These SQL interview questions are based on a sample direct spend dataset with fields such as `POnumber`, `lineitem`, `date`, `vendor`, `material`, `plant`, `unit`, `price`, `currency`, `doc_type`, and `payment_type`. Use these questions to assess SQL proficiency, from basic queries to advanced concepts.

---

## Basic Queries
1. **Select and Filter**: Write a query to retrieve all purchase orders (POnumber) made by "Industrial Solutions."
2. **Filtering by Date**: Write a query to select records where the `date` is in 2024 and the `doc_type` is "NB."
3. **Sorting Results**: Write a query to display all records, sorted by `price` in descending order.

## Aggregation and Grouping
4. **Total Spend by Vendor**: Write a query to calculate the total spend (`price` sum) for each `vendor`.
5. **Average Price by Material**: Write a query to get the average `price` for each unique `material`.
6. **Count of Line Items per PO**: Write a query to count the number of `lineitem`s per `POnumber`.
7. **Total Spend by Plant and Currency**: Write a query to calculate the total spend for each `plant` grouped by `currency`.

## Conditional Aggregates and Filtering
8. **Filtering by Payment Type**: Write a query to retrieve the total spend for orders with `payment_type` as "NET30."
9. **Highest Price per Material**: Write a query to find the highest `price` for each `material`.
10. **Total Spend by Document Type**: Write a query to get the total spend by `doc_type` and filter only for those totals greater than 5000.

## Joins and Subqueries
11. **Self Join for Purchase Order Comparisons**: Write a query to compare the `price` of items in the same `POnumber`. Show pairs of items in the same purchase order where one item has a higher price than the other.
12. **Subquery for Max Price by Vendor**: Write a query to list all records where the `price` is the highest for each `vendor` (hint: use a subquery to get the max price by vendor).
13. **Filtering by Subquery**: Write a query to retrieve all purchase orders from "Global Parts Inc." where the `price` is higher than the average `price` across all orders.

## Advanced SQL Concepts
14. **Window Functions**: Write a query to get the cumulative total `price` for each `vendor` ordered by `date`.
15. **Ranked Prices**: Write a query to rank items by `price` within each `vendor`, showing `POnumber`, `vendor`, `material`, `price`, and the rank.
16. **Moving Average**: Write a query to calculate a moving average of `price` over the last 3 purchase orders per `vendor`.

## Data Transformation and Case Statements
17. **Currency Conversion**: Assuming a fixed conversion rate, write a query that converts all `price`s in EUR to USD, and show the original and converted prices.
18. **Conditional Labels**: Write a query that adds a column to categorize orders as "High" if `price` > 2000, "Medium" if between 1000 and 2000, and "Low" otherwise.

## Data Quality and Integrity
19. **Detect Duplicate POs**: Write a query to find any duplicate `POnumber`s where all other fields are also identical.
20. **Check for Missing Values**: Write a query to check for any rows where critical fields (like `POnumber`, `vendor`, `material`) are NULL.
21. **Identify Inconsistent Units**: Write a query to find cases where the same `material` has different `unit`s across records (e.g., `KG` vs `L` for the same material).

## Scenario-Based Questions
22. **Vendor Analysis**: Suppose you want to analyze the top 3 materials with the highest spend for each vendor. How would you approach this?
23. **Monthly Spend Trend**: Write a query to calculate the monthly spend trend for the dataset, grouping by month and year from the `date` field.
24. **Payment Term Distribution**: Write a query to calculate the percentage of each `payment_type` within the dataset.
25. **Impact of Exchange Rate Changes**: How would you structure a query to re-calculate the `price` column for EUR-based orders if the exchange rate changed to a new value?

---

These questions cover a range of SQL concepts, including filtering, aggregation, joins, subqueries, and window functions, providing a comprehensive assessment of SQL skills.
