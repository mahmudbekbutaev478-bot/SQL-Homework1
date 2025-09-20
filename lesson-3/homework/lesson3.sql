✅ Lesson 3: Importing and Exporting Data
🟢 Easy-Level Tasks (10)

1. Define and explain the purpose of BULK INSERT in SQL Server.
BULK INSERT — это команда SQL Server, используемая для быстрой загрузки большого объёма данных из внешнего файла (например, .txt или .csv) в таблицу базы данных. Она работает быстрее, чем обычные INSERT INTO.

2. List four file formats that can be imported into SQL Server.

CSV (Comma-Separated Values)

TXT (Text File, Fixed/Delimited)

Excel (XLS, XLSX)

XML / JSON

3. Create a table Products with columns:

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);


4. Insert three records into the Products table using INSERT INTO.

INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
(1, 'Laptop', 1200.50),
(2, 'Phone', 850.00),
(3, 'Tablet', 450.75);


5. Explain the difference between NULL and NOT NULL.

NULL → означает отсутствие значения (пустое поле).

NOT NULL → означает, что поле обязательно должно содержать значение.

6. Add a UNIQUE constraint to the ProductName column.

ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);


7. Write a comment in a SQL query explaining its purpose.

-- This query selects all products with price greater than 500
SELECT * FROM Products WHERE Price > 500;


8. Add CategoryID column to the Products table.

ALTER TABLE Products
ADD CategoryID INT;


9. Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE
);


10. Explain the purpose of the IDENTITY column in SQL Server.
IDENTITY используется для автоматической генерации последовательных значений (обычно для первичных ключей). Например: IDENTITY(1,1) — начнёт с 1 и будет увеличиваться на 1.

🟠 Medium-Level Tasks (10)

11. BULK INSERT example:

BULK INSERT Products
FROM 'C:\Data\products.txt'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);


12. Create a FOREIGN KEY in Products referencing Categories.

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);


13. Explain PRIMARY KEY vs UNIQUE KEY.

PRIMARY KEY:

Uniquely identifies each row.

Automatically NOT NULL.

Only one per table.

UNIQUE KEY:

Ensures all values are unique.

Can allow one NULL.

Multiple UNIQUE constraints per table allowed.

14. Add CHECK constraint ensuring Price > 0.

ALTER TABLE Products
ADD CONSTRAINT CK_Products_Price CHECK (Price > 0);


15. Modify Products table to add Stock (NOT NULL).

ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0;


16. Use ISNULL to replace NULL Price with 0.

SELECT ProductID, ProductName, ISNULL(Price, 0) AS Price
FROM Products;


17. Purpose of FOREIGN KEY constraint.

Ensures referential integrity between two tables.

Prevents inserting values in child table that don’t exist in parent.

Ensures consistent relationships (e.g., Product must belong to an existing Category).

🔴 Hard-Level Tasks (10)

18. Create Customers table with CHECK Age >= 18.

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Age INT CHECK (Age >= 18)
);


19. Create table with IDENTITY (100, 10).

CREATE TABLE Invoice (
    InvoiceID INT IDENTITY(100,10) PRIMARY KEY,
    Amount DECIMAL(10,2)
);


20. Composite PRIMARY KEY in OrderDetails.

CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
);


21. Explain COALESCE vs ISNULL.

ISNULL(expr, replacement) → заменяет только одно значение NULL.

COALESCE(expr1, expr2, expr3, …) → возвращает первое ненулевое значение из списка.

COALESCE более универсален, т.к. принимает несколько аргументов.

22. Employees table with PRIMARY KEY and UNIQUE KEY.

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);


23. FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE.

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories_Cascade
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
ON DELETE CASCADE
ON UPDATE CASCADE;
