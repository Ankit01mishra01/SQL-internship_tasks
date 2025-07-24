-- Step 1: Create a sample table
DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product VARCHAR(100),
    category VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2)
);

-- Step 2: Insert sample data
INSERT INTO sales (product, category, quantity, price) VALUES
('Laptop', 'Electronics', 5, 60000),
('Headphones', 'Electronics', 10, 2000),
('Keyboard', 'Electronics', 15, 1500),
('Shirt', 'Clothing', 20, 800),
('Jeans', 'Clothing', 10, 1200),
('Shoes', 'Clothing', 8, 2500);

-- Query 1: Total Sales per Category (SUM)
SELECT category, SUM(quantity * price) AS total_sales
FROM sales
GROUP BY category;

-- Query 2: Average Price per Product (AVG)
SELECT product, AVG(price) AS average_price
FROM sales
GROUP BY product;

-- Query 3: Count of Products per Category (COUNT)
SELECT category, COUNT(*) AS product_count
FROM sales
GROUP BY category;

-- Query 4: Total Quantity Sold by Product with HAVING
SELECT product, SUM(quantity) AS total_quantity
FROM sales
GROUP BY product
HAVING total_quantity > 10;

-- Query 5: Average Revenue per Category
SELECT category, AVG(quantity * price) AS avg_revenue
FROM sales
GROUP BY category;
