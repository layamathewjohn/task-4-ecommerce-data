SELECT
  u.id AS user_id,
  u.first_name,
  u.last_name,
  COUNT(o.order_id) AS total_orders,
  SUM(o.sale_price) AS total_spent,
  AVG(o.sale_price) AS avg_order_value
FROM
  `bigquery-public-data.thelook_ecommerce.users` AS u
JOIN
  `bigquery-public-data.thelook_ecommerce.order_items` AS o
ON
  u.id = o.user_id
GROUP BY
  u.id, u.first_name, u.last_name
ORDER BY
  total_spent DESC
LIMIT 100;