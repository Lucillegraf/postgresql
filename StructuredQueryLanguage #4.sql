SELECT * FROM employees

-- REPLACE
SELECT department
       REPLACE(department, 'Human Resources','HRD') AS modified_department
FROM employees

--
SELECT first_name,
        email,
        REPLACE(department, 'Human Resources','HRD') AS modified_department
FROM employees
        
        
-- POSITION
SELECT email, POSITION('@' IN email)
FROM employees

-- cara ambil domain email
-- POSITION + SUBSTRING

SELECT email, 
       SUBSTRING(email, POSITION('@' IN email)) AS domain_email1,
       SUBSTRING(email, POSITION('@' IN email)+1) AS domain_email2,
       LEFT(email, POSITION('@' IN email)-1)
FROM employees

--
SELECT email,
   RIGHT(email,CHAR_LENGTH(email)-POSITION('@' IN email))
FROM employees



--SUBSTRING
SELECT SUBSTRING ('This is test data' FROM 5)


SELECT LEFT(email, POSITION('@' IN email)-1)
FROM employees

--COALESCE
-- mengganti nilai null yang ada di sebuah kolom
SELECT *,
       COALESCE(email, 'NONE') AS bebas
FROM employees) a

--LOWER
SELECT first_name,
        LOWER(first_name) AS lower_case,
        email
FROM employees

-- UPPER
SELECT first_name,
        UPPER(first_name) AS lower_case,
        email
FROM employees

-- LENGTH
SELECT first_name,
        LENGTH(first_name) AS upper_case
FROM employees


SELECT * FROM employees
-- FUNGSI AGGREGAT
--MIN

SELECT MIN(salary_2020) AS salay_minumum_2020 FROM employees

-- MAX
SELECT MAX(salary_2020) AS salay_maximum_2020 FROM employees

-- AVG
SELECT AVG(salary_2021) AS rata_rata_gaji_2021 FROM employees

--
SELECT ROUND(AVG(salary_2021),2) AS rata_rata_gaji_2021 FROM employees

-- SUM
SELECT SUM(salary_2021) AS total_gaji_karyawan FROM employees


-- COUNT
SELECT COUNT(store_city_id) AS jumlah_karywan FROM employees
WHERE store_city_id = 9


-- COUNT DISTINCT

SELECT DISTINCT product_name FROM sales

SELECT * FROM sales
-- GROUP BY
SELECT product_name, 
       SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_name


--
SELECT product_name,
       store_city_id,
       SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_name, store_city_id
ORDER BY store_city_id

-- tolong carikan total_pendapatan per product_name ditanggal 1 januari 2021 - 30 januari 2021

SELECT product_name,
       SUM(quantity*price_per_kg) AS total_pendapatan
FROM sales
WHERE purchase_date BETWEEN '2021-01-01' AND '2021-01-30'
GROUP BY product_name
       
-- HAVING CLASUE  
SELECT product_name, 
        store_city_id,
        SUM(quantity) AS total_qty 
FROM sales
GROUP BY product_name, store_city_id
HAVING SUM(quantity) > 50
    
--
SELECT product_name, 
        store_city_id,
        SUM(quantity) AS total_qty 
FROM sales
GROUP BY product_name, store_city_id

-- PERBEDAAN DALAM KONTEKS STRING
SELECT product_name, 
        store_city_id,
        SUM(quantity) AS total_qty 
FROM sales
GROUP BY product_name, store_city_id

--
SELECT product_name, 
        store_city_id,
        SUM(quantity) AS total_qty 
FROM sales
GROUP BY product_name, store_city_id
HAVING product_name IN ('Jeruk','Mangga')

