CREATE DATABASE products_management;
USE products_management;
CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,   
    product_name VARCHAR(255) NOT NULL,   
    category VARCHAR(50),                 
    price DECIMAL(10, 2),                
    quantity INT DEFAULT 0               
);
INSERT INTO products (product_id, product_name, category, price, quantity) VALUES 
('P001', 'Samsung Galaxy S23', 'Phone', 18000000, 10),
('P002', 'Macbook Air M2', 'Laptop', 25000000, 5),
('P003', 'Dell XPS 13', 'Laptop', 30000000, 0),
('P004', 'iPad Pro M1', 'Tablet', 12000000, 8),
('P005', 'Samsung Tab S9', 'Tablet', 9000000, 15),
('P006', 'iPhone 15 Pro', 'Phone', 28000000, 12);
SELECT * FROM products;

SELECT * FROM products 
WHERE price BETWEEN 5000000 AND 15000000;

SELECT * FROM products 
WHERE category IN ('Laptop', 'Tablet');

SELECT * FROM products 
WHERE product_name LIKE 'Sam%';

SELECT * FROM products 
WHERE category <> 'Phone'; 

UPDATE products 
SET price = price * 0.95 
WHERE category = 'Laptop';
SELECT * FROM products WHERE category = 'Laptop';

DELETE FROM products 
WHERE quantity = 0;
SELECT * FROM products;