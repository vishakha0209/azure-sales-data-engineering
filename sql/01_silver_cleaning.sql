-- Example Silver transformation logic
CREATE OR ALTER VIEW dbo.vw_sales_silver AS
SELECT CAST(order_date AS date) AS order_date,
       NULLIF(LTRIM(RTRIM(region)), '') AS region,
       NULLIF(LTRIM(RTRIM(category)), '') AS category,
       NULLIF(LTRIM(RTRIM(product)), '') AS product,
       TRY_CAST(quantity AS int) AS quantity,
       TRY_CAST(unit_price AS decimal(18,2)) AS unit_price,
       TRY_CAST(sales_amount AS decimal(18,2)) AS sales_amount
FROM dbo.sales_bronze
WHERE TRY_CAST(quantity AS int) > 0
  AND TRY_CAST(sales_amount AS decimal(18,2)) >= 0;
