CREATE DATABASE employees_management;
USE employees_management;
CREATE TABLE employees(
	emp_id VARCHAR(10) PRIMARY KEY, 
    full_name VARCHAR(255) NOT NULL, 
    birth_year INT,                 
    department VARCHAR(100),         
    salary DECIMAL(15, 2),          
    phone VARCHAR(15) NULL
);
INSERT INTO employees (emp_id, full_name, birth_year, department, salary, phone) VALUES 
('NV001', 'Nguyen Hoang Anh', 1995, 'IT', 15000000, '0901234567'),
('NV002', 'Tran Thi Lan Anh', 1998, 'HR', 12000000, NULL),
('NV003', 'Le Van Binh', 1990, 'IT', 25000000, '0912345678'),
('NV004', 'Pham Minh Tuan', 1992, 'Marketing', 18000000, '0987654321'),
('NV005', 'Hoang Quynh Anh', 2000, 'HR', 9000000, NULL),
('NV006', 'Vu Duc Trong', 1988, 'IT', 22000000, '0933445566'),
('NV007', 'Dang Thu Thao', 1996, 'Sales', 11000000, '0944556677'),
('NV008', 'Bui Ngoc Anh', 1994, 'IT', 19000000, '0955667788'),
('NV009', 'Ngo Thanh Long', 1991, 'HR', 10500000, NULL),
('NV010', 'Do Minh Ngoc', 1997, 'IT', 4500000, '0966778899');
SELECT * FROM employees;

SELECT * FROM employees 
WHERE salary BETWEEN 10000000 AND 20000000;

SELECT * FROM employees 
WHERE department IN ('IT', 'HR');

SELECT * FROM employees 
WHERE full_name LIKE '%Anh%';

SELECT * FROM employees 
WHERE phone IS NULL;

SET SQL_SAFE_UPDATES = 0;
UPDATE employees 
SET salary = salary * 1.1 
WHERE department = 'IT';

UPDATE employees 
SET phone = '0000000000' 
WHERE phone IS NULL;

DELETE FROM employees 
WHERE salary < 5000000;
SELECT * FROM employees;