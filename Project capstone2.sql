CREATE TABLE IF NOT EXISTS Customers(
name TEXT,
city TEXT,
country TEXT
);

CREATE TABLE IF NOT EXISTS Products(
product TEXT,
price REAL,
customer TEXT,
export_country TEXT
);

INSERT INTO Customers VALUES
('Andrew', 'London', 'UK'),
('Gordon', 'Manchester', 'UK'),
('Alice', 'Birmingham', 'UK'),
('George', 'Leeds', 'UK'),
('Robert', 'Bristol', 'UK');

INSERT INTO Products VALUES
('Laptop', 750, 'Andrew', 'France'),
('Phone', 400, 'Gordon', 'Spain'),
('Tablet', 250, 'Alice', 'Italy'),
('Monitor', 180, 'George', 'Canada'),
('Keyboard', 50, 'Robert', 'Australia');

SELECT * FROM Customers
WHERE name LIKE 'A%';

SELECT * FROM Customers
WHERE name LIKE '%or%';

SELECT DISTINCT product FROM Products;

SELECT * FROM Products
WHERE price >= 200;

SELECT Customers.name, Products.product, Products.price
FROM Customers
JOIN Products ON Customers.name = Products.customer;

SELECT customer, product, export_country
FROM Products;

SELECT DISTINCT export_country FROM Products;

DROP TABLE Products;
DROP TABLE Customers;
