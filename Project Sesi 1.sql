SELECT 
  order_id,
  status,
  created_at
FROM bigquery-public-data.thelook_ecommerce.orders
LIMIT 10;


SELECT *
FROM bigquery-public-data.thelook_ecommerce.users
LIMIT 10;

SELECT 
  id,
  gender,
  country,
  created_at
FROM bigquery-public-data.thelook_ecommerce.users
LIMIT 10;

SELECT *
FROM bigquery-public-data.thelook_ecommerce.users
LIMIT 10;

--Contoh penggunaan SELECT
SELECT
 first_name, --kolom 1
 email, --kolom 2
 age  --kolom 3
FROM bigquery-public-data.thelook_ecommerce.users;

-- Tabel products
SELECT
 * -- memanggil seluruh kolom dan baris, penggunaan jangan dilakukan ke perusahaan
FROM bigquery-public-data.thelook_ecommerce.products
LIMIT 10;


SELECT
 name,
 category,
 department,
 cost
FROM bigquery-public-data.thelook_ecommerce.products;


SELECT
 id,
 gender,
 country,
 created_at
FROM bigquery-public-data.thelook_ecommerce.users;