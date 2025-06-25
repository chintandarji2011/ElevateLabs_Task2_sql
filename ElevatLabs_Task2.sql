/*-----------------Create DataBase--------------
CREATE DATABASE ELevatLabs_Task2;
*/
---step1:Create a sample Employee table---
CREATE TABLE employee
(
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50),
  department VARCHAR(25),
  salary decimal(10,2) DEFAULT 25000,
  hire_date DATE DEFAULT CURRENT_DATE  
);

/*-----Step2: Insert data with and without NULL/Default---Not use in DB fiddle->SQL liteStudio--------
INSERT INTO employee (emp_id, emp_name, department, salary, hire_date)
VALUES 
(1001,'Ramesh Jadhav', NULL,30000, '2022-09-27'),
(1002,'Charlie shah', 'HR', 55000, NULL),
(1003,'Rajesh jani', 'IT', 42000, DEFAULT ),
(1004,'Umesh lambha','HR', 80000, '2015-08-03'),
(1005, 'Madhuri patil','Accounts', DEFAULT,'2021-07-12');
--------------OR-------------------------------------------
*/

------------Step2: Insert data with and without NULL/Default--------------
INSERT INTO employee (emp_id, emp_name, department, salary, hire_date)
VALUES 
(1001,'Ramesh Jadhav', NULL,30000, '2022-09-27'),
(1002,'Charlie shah', 'HR', 55000, NULL),
(1004,'Umesh lambha','HR', 80000, '2015-08-03');

----Use `Default` value for `salary` column ----
INSERT INTO employee (emp_id, emp_name,department,hire_date)
VALUES
(1005, 'Madhuri patil','Accounts','2021-07-12');
---- USE `Default` value for `hire_Date` column
INSERT INTO employee (emp_id, emp_name, department, salary)
VALUES 
(1003,'Rajesh jani', 'IT', 42000);


------------Step3: Update Rows with missing values--------------------------
UPDATE employee SET department = 'sales' WHERE department is NULL;

UPDATE employee SET Hire_date = '2025-06-01' WHERE Hire_date is NULL;

UPDATE employee SET Salary = 75000 WHERE emp_name like 'char%'

-----------Step4: Delete sepesific recored based on condition-----------
DELETE FROM employee WHERE emp_name like 'R%';
DELETE FROM employee WHERE department = 'Accounts';
-----------Step5: Final Result: Vire All running data--------------------
SELECT * FROM employee;



