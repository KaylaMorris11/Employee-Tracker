DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;
-- ----------------------------------------------------------------

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL
);
-- ----------------------------------------------------------------

CREATE TABLE roles(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INT,
     FOREIGN KEY (department_id) 
     REFERENCES department(id)
     ON DELETE CASCADE
);
-- ----------------------------------------------------------------

CREATE TABLE employees (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
roles_id INT NOT NULL,
manager_id INT,
FOREIGN KEY (roles_id)
REFERENCES roles(id)
ON DELETE CASCADE,
FOREIGN KEY (manager_id)
REFERENCES employees(id)
ON DELETE SET NULL
);