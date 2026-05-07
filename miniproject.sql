CREATE DATABASE Shopmanager;
USE Shopmanager;
CREATE TABLE Categories(
	category_id int auto_increment primary key,
    category_name VARCHAR(255) NOT NUll
);
CREATE TABLE Product(
	product_id int auto_increment primary key,
    product_name VARCHAR(255) NOT NULL,
    product_price decimal(10,2) NOT NULL CHECK (price >= 0) ,
    product_stock int NOT NULL CHECK (stock  >= 0),
    category_id INT NOT NULL,
    constraint categories foreign key (category_id) references category (category_id)
);
INSERT INTO categories(category_name)value
('Điện tử'),
('Thời Trang');

 INSERT INTO product(product_id, product_name, product_price, product_stock, category_id)value
 (1, 'iPhone 15', ' 25000000 ' , 10 , 1),
 (1, 'Samsung S23', ' 20000000 ' , 5 , 1),
 (1, 'Áo sơ mi nam ', ' 500000  ' , 50 , 2),
 (1, 'Giày thể thao', ' 1200000 ' , 20 , 2);
 
 UPDATE products
 SET product_price = '26000000'
 WHERE product_name = 'iPhone15';
 
 UpDATE products
 SET stock = stock+10
 WHERE category_id = 1;
 
 DELETE FROM products 
 WHERE product_id = 4;

DELETE FROM products
WHERE product_price < 1000000;

SELECT * FROM products;
SELECT * FROM categories;

SELECT p.product_id, p.product_name, p.product_price
FROM products p;






 
 
 
 
 
 
 