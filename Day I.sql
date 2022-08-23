CREATE TABLE penjualan (
    id_produk int,
    product_name varchar(255),
    harga int,
    primary key(id_produk)
)

-- primary key digunakan untuk menghindari duplikasi 
-- data dalam sebuah kolom

SELECT * FROM Penjualan

--INSERT INTO versi 1
INSERT INTO penjualan (id_produk, product_name, harga)
VALUES (1,'Avanza',10000)

INSERT INTO penjualan (id_produk, product_name, harga)
VALUES (2,'Pajero',15000),
        (3,'Ford',30000)
        
-- INSERT INTO versi 2 (versi cepet)
INSERT INTO penjualan
VALUES(4,'Pajero Sports', 70000)

-- ALTER - ADD
ALTER TABLE penjualan
ADD qty int

--  ALTER DROP COLUMN
ALTER TABLE penjualan
DROP COLUMN qty

-- ALTER COLUMN (change data type)
ALTER TABLE penjualan
ALTER COLUMN harga type bigint

-- DROP TABLE (hapus table)
DROP TABLE penjualan

-- DROP DATABASE 
DROP DATABASE ds_bootcamp