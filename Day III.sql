-- BETWEEN (2019-01-01 >= x <= 2020-01-01)
SELECT * from employees
WHERE hire_date BETWEEN '2019-01-01' AND '2020-01-01'

--
SELECT first_name FROM employees
WHERE hire_date BETWEEN '2019-01-01' AND '2020-01-01'

--
SELECT * FROM employees
WHERE salary_2020 BETWEEN 5000 AND 9000

--
SELECT * FROM employees
WHERE salary_2020 >= 5000 AND salary_2020 <= 9000

-- DELETE Single Records
SELECT * FROM sales
DELETE FROM sales
WHERE product_name = 'Mangga'

-- DELETE ALL RECORDS
SELECT * FROM sales
DELETE FROM sales

-- DELETE NULL
DELETE FROM employees
WHERE email IS NULL

-- LIKE
-- mencari pola yang berawalan kata tertentu
SELECT * from employees
WHERE first_name LIKE 'Be%'

-- mencari pola yang berakhiran kata tertentu
SELECT * from employees
WHERE first_name LIKE '%on'

-- mencari pola yang tidak peduli diposisi mana aja
SELECT * from employees
WHERE first_name LIKE '%al%'

SELECT * FROM employees
WHERE first_name LIKE '%al%'
AND last_name LIKE '%di%'

--
SELECT * from employees
WHERE first_name LIKE 'wi_%'

-- ORDER BY, (Default ASC)
SELECT * FROM employees
ORDER BY store_city_id, first_name

-- ORDER BY, ASC & DESC
SELECT * FROM employees
ORDER BY store_city_id asc, first_name desc

ALTER TABLE employees
ALTER COLUMN hire_date type date USING hire_date::date;

-- LIMIT & ORDER BY
-- OFFSET (untuk skip data)
SELECT * FROM employees
order by employee_id desc
limit 10

-- data 1=100, skip 1-5, dan mau ambil 6-10
SELECT * FROM employees
OFFSET 5
LIMIT 5

-- PREFIX
-- TABLE A
SELECT first_name,
    employees.email
FROM employees
LEFT JOIN TABLE_B
ON employees.id = TABLE_B.id
--misalnya TABLE B memiliki email juga

-- ALIAS --> sifatnya sementara, data asli tidak terhapus
-- nambahin kolom pake alias
SELECT *,
        quantity*price_per_kg AS total_price
FROM sales