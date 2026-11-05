
-- =========================================
-- DATABASE: employee_dept
-- =========================================

CREATE DATABASE employee_dept;

USE employee_dept;

-- =========================================
-- TABLE 1: DEPARTMENTS
-- =========================================

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL,
    location VARCHAR(30)
);

-- =========================================
-- TABLE 2: EMPLOYEES
-- =========================================

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(40) NOT NULL,
    age INT,
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- =========================================
-- INSERT DEPARTMENTS
-- =========================================

INSERT INTO departments VALUES
(1, 'IT', 'Pune'),
(2, 'HR', 'Mumbai'),
(3, 'Finance', 'Delhi'),
(4, 'Marketing', 'Bangalore');

-- =========================================
-- INSERT EMPLOYEES
-- =========================================

INSERT INTO employees VALUES
(101, 'Rahul', 25, 45000.00, 1),
(102, 'Priya', 28, 55000.00, 2),
(103, 'Amit', 32, 65000.00, 1),
(104, 'Sneha', 24, 35000.00, 3),
(105, 'Karan', 30, 60000.00, 4),
(106, 'Neha', 27, 48000.00, 2),
(107, 'Rohit', 35, 80000.00, 1),
(108, 'Pooja', 29, 52000.00, 3),
(109, 'Vikas', 26, 40000.00, 4),
(110, 'Anjali', 31, 70000.00, 1),
(111, 'Suresh', 23, 30000.00, 3),
(112, 'Meera', 33, 75000.00, 2);

-- =========================================
-- VERIFY DATA
-- =========================================

SELECT * FROM departments;

SELECT * FROM employees;
