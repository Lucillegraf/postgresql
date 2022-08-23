-- SELECT *
-- menampilkan semua kolom/semua data
select * from sales

-- SELECT spesifik kolom
SELECT user_id, product_name
FROM sales

-- FILTERING
-- WHERE
select * from sales
where price_per_kg >= 10000

select product_name, purchase_date from sales
where price_per_kg >= 10000

-- ORDER BY (di atur oleh)
select product_name, purchase_date from sales
where price_per_kg >= 10000
order by purchase_date desc/asc

-- SELECT DISTINCT (mengambil nilai unique)
select distinct(product_name) 
from sales
where price_per_kg > 20000

-- AND
select * from sales
where price_per_kg >10000
and store_city_id <5 

-- OR (opsional, salah satu nilai true)
select * from sales
where price_per_kg >20000
or store_city_id <5

SELECT * FROM sales
WHERE price_per_kg < 10000 
AND store_city_id <5
AND purchase_date > '2022-05-01'

-- OR & AND
select * from sales
where (product_name = 'Jeruk'
or product_name='Mangga') and store_city_id = 4

-- NOT (versi notasi where (column) >< != 'Mangga')
select * from sales
where not product_name ='Mangga'

-- IN (menghemat value or yg terlalu byk)
select * from sales
where product_name 
in ('Jeruk', 'Mangga', 'Apel', 'Pepaya')

-- NOT IN
select * from sales
where product_name 
not in ('Jeruk', 'Mangga', 'Apel', 'Pepaya')

-- NOT IN & IN
select * from sales
where product_name
not in ('Jeruk', 'Mangga', 'Apel', 'Pepaya')
and store_city_id IN (5,6,7)

-- ISNULL
select * from employees
where email
isnull

-- IS NOT NULL
select * from employees
where email
is not null
