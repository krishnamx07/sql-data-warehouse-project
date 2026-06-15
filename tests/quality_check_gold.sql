/*
===============================================================================
Quality Checks: Gold Layer
===============================================================================
Script Purpose:
    Validates integrity, consistency, and accuracy of the Gold layer.
    Run after gold views are created and silver data is fully loaded.

Checks Included:
    - Surrogate key uniqueness in dimension tables
    - Referential integrity between fact and dimension tables
===============================================================================
*/

-- ====================================================================
-- Checking 'gold.dim_customers'
-- ====================================================================
-- Surrogate key must be unique across all customer records
-- Expectation: No Results
SELECT
    customer_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_customers
GROUP BY customer_key
HAVING COUNT(*) > 1;

-- ====================================================================
-- Checking 'gold.dim_products'
-- ====================================================================
-- Surrogate key must be unique across all product records
-- Expectation: No Results
SELECT
    product_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_products
GROUP BY product_key
HAVING COUNT(*) > 1;

-- ====================================================================
-- Checking 'gold.fact_sales'
-- ====================================================================
-- Every sales record must resolve to a valid product and customer.
-- Orphaned rows here mean a join is broken somewhere in the pipeline.
-- Expectation: No Results
SELECT
    f.*
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
    ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products p
    ON p.product_key = f.product_key
WHERE p.product_key IS NULL
   OR c.customer_key IS NULL;
