show databases;
USE new_schema;
show tables;
select * from grocery_store_data;
select *from grocery_store_data where Category = 'Fresh Fruits';
select count(*) from grocery_store_data where Category = 'Fresh Fruits';
select * from grocery_store_data where Category= "Fresh Vegetables" or Category= "Rice";
select *from grocery_store_data order by Quantity ASC;
SELECT * FROM grocery_store_data WHERE `Product Name` LIKE 'B%';
SELECT `Product ID`, `Product Name`, `Previous Price`, `Current Price`, (`Previous Price` - `Current Price`) AS 'PriceDifference'
FROM grocery_store_data;
select `Product Name`, `Previous Price`, `Current Price` From grocery_store_data where `Previous Price` > `Current Price`;
select count(`Product Name`), count(`Previous Price`), count(`Current Price`) From grocery_store_data where `Previous Price` > `Current Price`;
select `Product Name`, `Quantity` FROM grocery_store_data WHERE `Quantity` > 100;
select count(`Product Name`), count(`Quantity`) FROM grocery_store_data WHERE `Quantity` > 100;
SELECT Units, COUNT(*) AS TotalProducts FROM grocery_store_data GROUP BY Units ORDER BY TotalProducts;
SELECT `Product Name`, `Current Price`, Category FROM grocery_store_data WHERE `Product Name` LIKE '%C%';
SELECT Category, COUNT(*) AS TotalProducts FROM grocery_store_data GROUP BY Category;
SELECT Units, SUM(Quantity) AS TotalQuantity FROM grocery_store_data GROUP BY Units;
SELECT `Product Name`, SUM(Quantity) AS TotalUnitsSold
FROM grocery_store_data
GROUP BY `Product Name`
ORDER BY TotalUnitsSold DESC
LIMIT 10;
SELECT Category, SUM(Quantity) AS TotalUnitsSold
FROM grocery_store_data
GROUP BY Category
ORDER BY TotalUnitsSold DESC
LIMIT 10;
select *from grocery_store_data where `Product Name` Like '%Tomatoes%';
SELECT Units, SUM(Quantity) AS TotalQuantitySold
FROM grocery_store_data
GROUP BY Units
ORDER BY TotalQuantitySold DESC
LIMIT 1;

SELECT Units, SUM(Quantity) AS TotalQuantitySold
FROM grocery_store_data
GROUP BY Units
ORDER BY TotalQuantitySold ASC
LIMIT 1;






