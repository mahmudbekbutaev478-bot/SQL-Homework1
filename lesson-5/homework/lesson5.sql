✅ Easy-Level Tasks

1. Rename ProductName as Name

SELECT ProductName AS Name
FROM Products;


2. Alias Customers table as Client

SELECT *
FROM Customers AS Client;


3. UNION Products & Products_Discounted (ProductName)

SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;


4. INTERSECT Products & Products_Discounted

SELECT ProductName FROM Products
INTERSECT
SELECT ProductName FROM Products_Discounted;


5. DISTINCT customer names and Country

SELECT DISTINCT FirstName, LastName, Country
FROM Customers;


6. CASE column High/Low Price

SELECT ProductName,
       Price,
       CASE 
           WHEN Price > 1000 THEN 'High'
           ELSE 'Low'
       END AS PriceLevel
FROM Products;


7. IIF StockQuantity > 100

SELECT ProductName,
       StockQuantity,
       IIF(StockQuantity > 100, 'Yes', 'No') AS OverStocked
FROM Products_Discounted;

✅ Medium-Level Tasks

8. UNION Products + Products_Discounted

SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;


9. Products EXCEPT Products_Discounted

SELECT ProductName FROM Products
EXCEPT
SELECT ProductName FROM Products_Discounted;


10. IIF Expensive / Affordable

SELECT ProductName,
       Price,
       IIF(Price > 1000, 'Expensive', 'Affordable') AS PriceCategory
FROM Products;


11. Employees Age < 25 OR Salary > 60000
👉 У тебя пока нет таблицы Employees в скрипте. Нужно создать её для выполнения. Например:

SELECT *
FROM Employees
WHERE Age < 25 OR Salary > 60000;


12. Update salary (HR or EmployeeID = 5)

UPDATE Employees
SET Salary = Salary * 1.10
WHERE Department = 'HR' OR EmployeeID = 5;

✅ Hard-Level Tasks

13. CASE on Sales (Top/Mid/Low Tier)

SELECT SaleID, CustomerID, SaleAmount,
       CASE
           WHEN SaleAmount > 500 THEN 'Top Tier'
           WHEN SaleAmount BETWEEN 200 AND 500 THEN 'Mid Tier'
           ELSE 'Low Tier'
       END AS SaleCategory
FROM Sales;


14. Customers with Orders but not in Sales

SELECT CustomerID FROM Orders
EXCEPT
SELECT CustomerID FROM Sales;


15. Discount % based on quantity (Orders table)

SELECT CustomerID,
       Quantity,
       CASE
           WHEN Quantity = 1 THEN '3%'
           WHEN Quantity BETWEEN 2 AND 3 THEN '5%'
           ELSE '7%'
       END AS DiscountPercentage
FROM Orders;
