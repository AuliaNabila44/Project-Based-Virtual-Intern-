SELECT
  Date           AS order_date,
  CategoryName   AS category_name,
  ProdName       AS product_name,
  Price          AS product_price,
  Quantity       AS order_qty,
  Price*Quantity AS total_sales,
  CustomerEmail  AS cust_email,
  CustomerCity   AS cust_city
FROM
  `rakamin.customers ` AS c
INNER JOIN
  `rakamin.orders` AS o
ON
  c.CustomerID = o.CustomerID
INNER JOIN
  `rakamin.products` AS p
ON
  p.ProdNumber = o.ProdNumber
INNER JOIN
  `rakamin.productcategory` AS pc
ON
  pc.CategoryID = p.Category
ORDER BY
  order_date,
  order_qty ;