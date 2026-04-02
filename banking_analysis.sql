 -- Banking Customer Data Analysis
-- Author: Belagala Charan

-- View all records
SELECT *
FROM banking_data;

-- Total transaction value
SELECT SUM(transaction_amount) AS total_transactions
FROM banking_data;

-- Transactions by region
SELECT region,
       SUM(transaction_amount) AS total_transaction_value
FROM banking_data
GROUP BY region
ORDER BY total_transaction_value DESC;

-- Average transaction by account type
SELECT account_type,
       AVG(transaction_amount) AS avg_transaction
FROM banking_data
GROUP BY account_type;

-- Number of transactions by account type
SELECT account_type,
       COUNT(customer_id) AS total_transactions
FROM banking_data
GROUP BY account_type;

-- Monthly transaction trend
SELECT MONTH(transaction_date) AS month,
       SUM(transaction_amount) AS monthly_transactions
FROM banking_data
GROUP BY MONTH(transaction_date)
ORDER BY month;

-- Highest transaction
SELECT *
FROM banking_data
ORDER BY transaction_amount DESC
LIMIT 1;
