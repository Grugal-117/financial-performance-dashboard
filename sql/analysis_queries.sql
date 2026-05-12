-- Financial Performance Dashboard SQL Analysis

-- 1. Total Sales
SELECT 
    SUM(Sales) AS total_sales
FROM financial_data;

-- 2. Total Profit
SELECT 
    SUM(Profit) AS total_profit
FROM financial_data;

-- 3. Profit Margin
SELECT 
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS profit_margin_percentage
FROM financial_data;

-- 4. Sales by Product
SELECT 
    Product,
    SUM(Sales) AS total_sales
FROM financial_data
GROUP BY Product
ORDER BY total_sales DESC;

-- 5. Profit by Segment
SELECT 
    Segment,
    SUM(Profit) AS total_profit
FROM financial_data
GROUP BY Segment
ORDER BY total_profit DESC;

-- 6. Monthly Sales Trend
SELECT 
    Month_Name,
    Month_Number,
    SUM(Sales) AS total_sales
FROM financial_data
GROUP BY Month_Name, Month_Number
ORDER BY Month_Number;

-- 7. Sales and Profit by Country
SELECT 
    Country,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM financial_data
GROUP BY Country
ORDER BY total_profit DESC;

-- 8. Discount Impact
SELECT 
    Discount_Band,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS profit_margin_percentage
FROM financial_data
GROUP BY Discount_Band
ORDER BY profit_margin_percentage DESC;