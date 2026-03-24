CREATE DATABASE Basics;
USE Basics;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    city VARCHAR(30),
    join_date DATE
);
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(30),
    manager_name VARCHAR(50)
);
INSERT INTO employees (emp_id, emp_name, department, salary, city, join_date) VALUES
(1, 'Aman', 'IT', 55000, 'Delhi', '2023-01-15'),
(2, 'Riya', 'HR', 48000, 'Mumbai', '2022-07-10'),
(3, 'Neha', 'Sales', 45000, 'Pune', '2024-03-12'),
(4, 'Arjun', 'IT', 72000, 'Delhi', '2021-11-05'),
(5, 'Simran', 'Finance', 60000, 'Mumbai', '2020-06-20'),
(6, 'Karan', 'Sales', 39000, 'Delhi', '2023-09-18'),
(7, 'Aditi', 'HR', 51000, 'Lucknow', '2022-02-25'),
(8, 'Rohan', 'IT', 67000, 'Pune', '2024-01-08'),
(9, 'Meena', 'Marketing', 43000, 'Noida', '2023-12-01'),
(10, 'Tina', 'Legal', 50000, 'Delhi', '2022-08-14');

INSERT INTO departments (department_id, department_name, manager_name) VALUES
(1, 'IT', 'Ravi'),
(2, 'HR', 'Pooja'),
(3, 'Sales', 'Amit'),
(4, 'Finance', 'Kunal'),
(5, 'Marketing', 'Sneha');

SELECT* FROM employees;

SELECT emp_name,salary
FROM employees;

SELECT DISTINCT city , department 
FROM employees;

SELECT* FROM employees
WHERE department= 'IT';

SELECT* FROM employees
WHERE salary>50000;

SELECT* FROM employees
WHERE city = 'DELHI';

SELECT* FROM employees 
WHERE emp_name LIKE 'A%';

SELECT* FROM employees 
WHERE join_date>'2023-01-01';

SELECT*FROM employees
ORDER BY salary ASC;

SELECT*FROM employees 
ORDER BY join_date DESC;

SELECT*FROM employees
ORDER BY salary DESC
LIMIT 3;

SELECT department, COUNT(*) AS emp_count
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT city, COUNT(*) AS emp_count
FROM employees
GROUP BY city;

SELECT e.*, d.department_id, d.department_name, d.manager_name
FROM employees e
JOIN departments d
ON e.department = d.department_name;

SELECT e.*
FROM employees e
JOIN departments d
ON e.department=d.department_name
WHERE d.manager_name='RAVI';

SELECT d.department_name
FROM departments d
LEFT JOIN employees e
ON d.department_name = e.department
WHERE e.emp_id IS NULL;

SELECT e.*
FROM employees e
LEFT JOIN departments d
ON e.department=d.department_name
WHERE d.department_name IS NULL;

SELECT d.department_name, e.emp_name
FROM departments d
LEFT JOIN employees e
ON d.department_name = e.department;

