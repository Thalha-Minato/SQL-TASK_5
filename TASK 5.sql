create database products

use products

-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
)

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)

-- Insert sample data into Customers
INSERT INTO Customers VALUES
(1, 'John', 'New York'),
(2, 'Emma', 'Los Angeles'),
(3, 'Michael', 'Chicago'),
(4, 'Sophia', 'Houston')

-- Insert sample data into Orders
INSERT INTO Orders VALUES
(101, 1, 'Laptop'),
(102, 2, 'Phone'),
(103, 1, 'Tablet'),
(104, 4, 'Camera')  -- Customer ID 5 doesn't exist in Customers

select * from Customers

select *  from Orders

SELECT Customers.customer_id, Customers.customer_name, Orders.product
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id 

SELECT Customers.customer_id, Customers.customer_name, Orders.product
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id

SELECT Customers.customer_id, Customers.customer_name, Orders.product
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id

SELECT Customers.customer_id, Customers.customer_name, Orders.product
FROM Customers
FULL JOIN Orders
ON Customers.customer_id = Orders.customer_id