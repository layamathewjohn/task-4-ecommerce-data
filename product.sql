SELECT
brand,
  COUNT(id) AS Total_product,
  AVG(cost) AS AVG_COST
FROM
  `bigquery-public-data.thelook_ecommerce.products`
  WHERE department='Women'
GROUP BY brand
ORDER BY AVG_COST ASC;