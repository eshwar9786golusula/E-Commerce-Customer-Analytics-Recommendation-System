CREATE TABLE ecommerce(
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice FLOAT,
    CustomerID VARCHAR(20),
    Country VARCHAR(50)
);
SELECT CustomerID,
       SUM(Quantity*UnitPrice) AS Revenue
FROM ecommerce
GROUP BY CustomerID
ORDER BY Revenue DESC;

SELECT Description,
       SUM(Quantity) AS TotalSold
FROM ecommerce
GROUP BY Description
ORDER BY TotalSold DESC;

SELECT Country,
       SUM(Quantity*UnitPrice) AS Revenue
FROM ecommerce
GROUP BY Country
ORDER BY Revenue DESC;