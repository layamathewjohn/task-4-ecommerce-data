  SELECT
  u.id AS user_id,
  u.first_name,
  u.last_name,
  o.order_id,
  o.product_id,
  o.sale_price,
  o.created_at
FROM
  `bigquery-public-data.thelook_ecommerce.users`AS u
RIGHT JOIN
  `bigquery-public-data.thelook_ecommerce.order_items` AS o
ON
  u.id = o.user_id
ORDER BY
  o.created_at DESC
LIMIT 100;