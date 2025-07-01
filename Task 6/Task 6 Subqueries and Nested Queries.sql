CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(100),
  Category VARCHAR(50),
  Price DECIMAL(10,2)
);

INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics', 800),
(2, 'Smartphone', 'Electronics', 600),
(3, 'Desk Chair', 'Furniture', 150),
(4, 'Notebook', 'Stationery', 10),
(5, 'Pen Pack', 'Stationery', 5);

-- Sales table
CREATE TABLE Sales (
  SaleID INT PRIMARY KEY,
  ProductID INT,
  Quantity INT,
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Sales VALUES
(1, 1, 5),   -- Laptop x5
(2, 2, 8),   -- Smartphone x8
(3, 3, 15),  -- Chair x15
(4, 4, 100), -- Notebook x100
(5, 5, 200); -- Pen Pack x200


SELECT ProductName 
FROM Products 
WHERE ProductID IN (
  SELECT ProductID 
  FROM Sales 
  WHERE Quantity > (SELECT AVG(Quantity) FROM Sales)
);

SELECT 
  ProductName,
  Price,
  (SELECT SUM(Quantity) FROM Sales WHERE Sales.ProductID = Products.ProductID) AS TotalUnitsSold,
  (Price * (SELECT SUM(Quantity) FROM Sales WHERE Sales.ProductID = Products.ProductID)) AS TotalRevenue
FROM Products;


SELECT Category 
FROM Products
  SELECT ProductID 
  FROM Sales 
  ORDER BY Quantity DESC 
  LIMIT 1
);