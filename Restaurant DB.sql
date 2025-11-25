USE restaurant_db;

-- 1. View the menu_items table.
SELECT * FROM menu_items;

-- 2. Find the numbers of items on the menu.
SELECT COUNT(*) FROM menu_items;

-- 3. What are the least and most expensive items on the menu?
SELECT * FROM menu_items
ORDER BY Price DESC;

SELECT * FROM menu_items
ORDER BY Price DESC;

-- 4. How many italian dishes are on the menu?
SELECT COUNT(*) FROM menu_items
WHERE Category= 'Italian';

-- 5. What are the least and most expensive italian dishes on the menu?
SELECT * FROM menu_items
WHERE Category= 'Italian'
ORDER BY Price;

SELECT * FROM menu_items
WHERE Category= 'Italian'
ORDER BY Price DESC;

-- 6. How many dishes are in each category?
SELECT Category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY Category;

-- 7. What is the average dish price within each category?
SELECT Category, AVG(Price) AS avg_price
FROM menu_items
GROUP BY Category