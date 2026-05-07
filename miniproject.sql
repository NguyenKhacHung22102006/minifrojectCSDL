CREATE DATABASE Shopmanager;
USE Shopmanager;
CREATE TABLE Categories(
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);
CREATE TABLE Product(
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    product_price DECIMAL(10,2) NOT NULL CHECK (product_price >= 0),
    product_stock INT NOT NULL CHECK (product_stock >= 0),
    category_id INT NOT NULL,

    CONSTRAINT fk_category
    FOREIGN KEY (category_id)
    REFERENCES Categories(category_id)
);

INSERT INTO Categories(category_name)
VALUES
('Điện tử'),
('Thời trang');

INSERT INTO Product(product_name, product_price, product_stock, category_id)
VALUES
('iPhone 15', 25000000, 10, 1),
('Samsung S23', 20000000, 5, 1),
('Áo sơ mi nam', 500000, 50, 2),
('Giày thể thao', 1200000, 20, 2);

UPDATE Product
SET product_price = 26000000
WHERE product_name = 'iPhone 15';

UPDATE Product
SET product_stock = product_stock + 10
WHERE category_id = 1;

DELETE FROM Product
WHERE product_id = 4;

DELETE FROM Product
WHERE product_price < 1000000;

SELECT * FROM Product;
SELECT * FROM Categories;

SELECT p.product_id,p.product_name,p.product_price
FROM Product p;