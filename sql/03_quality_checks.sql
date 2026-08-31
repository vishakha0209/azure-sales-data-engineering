SELECT 'null_order_date' AS check_name, COUNT(*) AS failures FROM dbo.sales_bronze WHERE order_date IS NULL
UNION ALL SELECT 'non_positive_quantity', COUNT(*) FROM dbo.sales_bronze WHERE TRY_CAST(quantity AS int) <= 0 OR quantity IS NULL
UNION ALL SELECT 'negative_sales_amount', COUNT(*) FROM dbo.sales_bronze WHERE TRY_CAST(sales_amount AS decimal(18,2)) < 0;
