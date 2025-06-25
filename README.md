# ElevateLabs_Task2_sql
Author- Darji Chintankumar Dineshchandra
<br>
# ElevatLabs Task 2: SQL Data Insertion and Handling NULLs and DEFAULT

This repository contains an SQL script designed to practice basic **data manipulation tasks** using SQL, including:

- Creating tables
- Inserting data with `NULL` and `DEFAULT` values
- Updating missing values
- Deleting specific records
- Viewing final clean data

# Tools : DB Fiddle / SQLiteStudio

##  Step 0: Create Database (for MySQL/PostgreSQL only)

> Note: This step is **not applicable in SQLite** as it doesn't support multiple databases in the same session.

## Step 1:  Step 1: Create a Sample `employee` Table (SQLLiteStudio)
> created `employee` table with `emp_id` primary key, used `DEFAULT` constraints in `salary` and `hire_date`.
```sql
CREATE TABLE employee
(
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50),
  department VARCHAR(25),
  salary decimal(10,2) DEFAULT 25000,
  hire_date DATE DEFAULT CURRENT_DATE  
);
```


##  Step 2: Insert Data (with NULL and DEFAULT handling)

demonstrate:

>Inserting explicit values
>Leaving some fields NULL
```sql
INSERT INTO employee (emp_id, emp_name, department, salary, hire_date)
VALUES 
(1001,'Ramesh Jadhav', NULL,30000, '2022-09-27'),
(1002,'Charlie shah', 'HR', 55000, NULL),
(1004,'Umesh lambha','HR', 80000, '2015-08-03');
```

>Using DEFAULT implicitly by omitting certain fields
```sql
INSERT INTO employee (emp_id, emp_name,department,hire_date)
VALUES
(1005, 'Madhuri patil','Accounts','2021-07-12');
INSERT INTO employee (emp_id, emp_name, department, salary)
VALUES 
(1003,'Rajesh jani', 'IT', 42000);
```
>Note:  SQLite does not support DEFAULT in VALUES (..., DEFAULT, ...). Avoid this style:
```sql
-- XXXX---This will fail in SQLite
(1003,'Rajesh jani', 'IT', 42000, DEFAULT)
```

## Step 3: Update Rows with Missing Data
> Update the rows by using update statements. In the ststement, I am using `WHERE` conditions used `LIKE`, `IS` oprators , we can also use other oprators like `=`,`>`,`<`, etc.

##  Step 4: Delete Specific Records
> We remove employees based on patterns `like 'R%'` or department `= 'Account'`.

## Step 5: View Final Cleaned Table
> Final result retrive by using `SELECT` query.

