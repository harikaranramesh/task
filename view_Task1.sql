
CREATE VIEW ElectronicsUnder1000 AS
SELECT ProductId, ProductName, Category, Price, Description
FROM Products
WHERE Category = 'Electronics' AND Price < 1000;

SELECT * FROM Products;

SELECT * FROM ElectronicsUnder1000;
