SELECT*
FROM retail_sales_dataset_1
LIMIT 1000;

SELECT
COUNT(*)AS TotalTransactions,
COUNT(DISTINCT`customer id`)AS TotalCustomers
FROM retail_sales_dataset_1;

SELECT
MIN(`total amount`)AS MinTotalAmount,
MAX(`total amount`)AS MaxTotalAmount,
AVG(`Total Amount`)AS AvgTotalAmount
FROM retail_sales_dataset_1;

SELECT
`product category`,
SUM(`total amount`)AS TotalSales
FROM retail_sales_dataset_1
GROUP BY`product category`
ORDER BY TotalSales DESC
LIMIT 1000;


SELECT
CASE
WHEN`age`<18 THEN 'Under 18'
WHEN`age`>=18 AND`age`<30 THEN '18-29'
WHEN`age`>=30 AND`age`<40 THEN '30-39'
WHEN`age`>=40 AND`age`<50 THEN '40-49'
WHEN`age`>=50 AND`age`<60 THEN '50-59'
WHEN`age`>=60 THEN '60+'
END AS AgeGroup
COUNT(*)AS CustomerCount
FROM retail_sales_dataset_1
GROUP BY AgeGroup
ORDER BY CustomerCount DESC
LIMIT 1000;

