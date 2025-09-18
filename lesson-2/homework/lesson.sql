✅ Basic-Level Tasks (10)

1. Create Employees table

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary DECIMAL(10,2)
);


2. Insert 3 records using different approaches

-- Single row insert
INSERT INTO Employees (EmpID, Name, Salary)
VALUES (1, 'John Doe', 6000.00);

-- Another single row insert (with column order)
INSERT INTO Employees
VALUES (2, 'Jane Smith', 5000.00);

-- Multiple row insert
INSERT INTO Employees (EmpID, Name, Salary)
VALUES 
(3, 'Michael Brown', 4500.00),
(4, 'Emily Davis', 5200.00);


3. Update Salary

UPDATE Employees
SET Salary = 7000
WHERE EmpID = 1;


4. Delete a record

DELETE FROM Employees
WHERE EmpID = 2;


5. Difference: DELETE vs TRUNCATE vs DROP

DELETE → removes rows one by one, can use WHERE, logs each deletion, structure remains.

TRUNCATE → removes all rows quickly, cannot use WHERE, minimal logging, structure remains.

DROP → removes the entire table structure and data permanently.

6. Modify column size

ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);


7. Add Department column

ALTER TABLE Employees
ADD Department VARCHAR(50);


8. Change Salary datatype

ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;


9. Create Departments table

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);


10. Remove all records but keep structure

TRUNCATE TABLE Employees;
