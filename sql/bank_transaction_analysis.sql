
USE bank_transaction_analytics;

-- =====================================================
-- BANK TRANSACTION ANALYTICS
-- SQL Analysis: 8 Business Queries
-- =====================================================


-- QUERY 1: OVERALL TRANSACTION KPIs

SELECT
    COUNT(transaction_id) AS total_transactions,
    ROUND(SUM(transaction_amount), 2) AS total_transaction_value,
    ROUND(AVG(transaction_amount), 2) AS average_transaction_value,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(is_fraud) AS fraud_transactions,
    ROUND(
        SUM(is_fraud) * 100.0 / COUNT(transaction_id), 2
    ) AS fraud_percentage
FROM bank_transactions;


-- QUERY 2: MONTHLY TRANSACTION TRENDS

SELECT
    YEAR(transaction_datetime) AS transaction_year,
    MONTH(transaction_datetime) AS transaction_month,
    MONTHNAME(transaction_datetime) AS month_name,
    COUNT(transaction_id) AS total_transactions,
    ROUND(SUM(transaction_amount), 2) AS total_transaction_value,
    ROUND(AVG(transaction_amount), 2) AS average_transaction_value
FROM bank_transactions
GROUP BY
    YEAR(transaction_datetime),
    MONTH(transaction_datetime),
    MONTHNAME(transaction_datetime)
ORDER BY
    transaction_year,
    transaction_month;


-- QUERY 3: TRANSACTION TYPE ANALYSIS

SELECT
    transaction_type,
    COUNT(transaction_id) AS total_transactions,
    ROUND(SUM(transaction_amount), 2) AS total_transaction_value,
    ROUND(AVG(transaction_amount), 2) AS average_transaction_value
FROM bank_transactions
GROUP BY transaction_type
ORDER BY total_transaction_value DESC;


-- QUERY 4: FRAUD SUMMARY

SELECT
    CASE
        WHEN is_fraud = 1 THEN 'Fraud'
        ELSE 'Non-Fraud'
    END AS transaction_category,
    COUNT(transaction_id) AS total_transactions,
    ROUND(SUM(transaction_amount), 2) AS total_transaction_value,
    ROUND(AVG(transaction_amount), 2) AS average_transaction_value
FROM bank_transactions
GROUP BY is_fraud;


-- QUERY 5: FRAUD ANALYSIS BY TRANSACTION TYPE

SELECT
    transaction_type,
    COUNT(transaction_id) AS fraud_transaction_count,
    ROUND(SUM(transaction_amount), 2) AS fraud_transaction_value,
    ROUND(AVG(transaction_amount), 2) AS average_fraud_amount
FROM bank_transactions
WHERE is_fraud = 1
GROUP BY transaction_type
ORDER BY fraud_transaction_count DESC;


-- QUERY 6: MERCHANT CATEGORY ANALYSIS

SELECT
    merchant_category,
    COUNT(transaction_id) AS total_transactions,
    ROUND(SUM(transaction_amount), 2) AS total_transaction_value,
    ROUND(AVG(transaction_amount), 2) AS average_transaction_value
FROM bank_transactions
GROUP BY merchant_category
ORDER BY total_transaction_value DESC;


-- QUERY 7: STATE-WISE TRANSACTION ANALYSIS

SELECT
    state,
    COUNT(transaction_id) AS total_transactions,
    ROUND(SUM(transaction_amount), 2) AS total_transaction_value,
    ROUND(AVG(transaction_amount), 2) AS average_transaction_value,
    SUM(is_fraud) AS fraud_transactions
FROM bank_transactions
GROUP BY state
ORDER BY total_transaction_value DESC;


-- QUERY 8: TOP 10 CUSTOMERS BY TRANSACTION VALUE

SELECT
    customer_id,
    COUNT(transaction_id) AS total_transactions,
    ROUND(SUM(transaction_amount), 2) AS total_transaction_value,
    ROUND(AVG(transaction_amount), 2) AS average_transaction_value
FROM bank_transactions
GROUP BY customer_id
ORDER BY total_transaction_value DESC
LIMIT 10;