CREATE OR ALTER VIEW dbo.vw_gold_sales_summary AS
SELECT region, category, product,
       SUM(quantity) AS units_sold,
       SUM(sales_amount) AS revenue,
       AVG(unit_price) AS avg_unit_price
FROM dbo.vw_sales_silver
GROUP BY region, category, product;
