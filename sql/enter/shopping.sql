--user defined functions
--scalar functions
--table valued functions: Multi-Statement Table-Valued Function, Inline Table-Valued Function
--case defined functions


CREATE DATABASE Shopping_centres;
use Shopping_centres;

CREATE TABLE Shopping_centres(
    Shopping_centre_id INT PRIMARY KEY,
    Shopping_centre_name VARCHAR(50) NOT NULL,
    Location VARCHAR(50) NOT NULL,
    Number_of_stores INT,
    Opening_hours VARCHAR(50)
)
;
CREATE TABLE Stores(
    Store_id INT PRIMARY KEY,
    store_name VARCHAR(50) NOT NULL,
    Shopping_centre_id INT,
    FOREIGN KEY (Shopping_centre_id) REFERENCES Shopping_centres(Shopping_centre_id)
)
;

CREATE TABLE Products(
    Product_id INT PRIMARY KEY,
    Product_name VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Store_id INT,
    FOREIGN KEY (Store_id) REFERENCES Stores(Store_id)
)
;

CREATE TABLE Customers(
    Customer_id INT PRIMARY KEY,
    Customer_name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) UNIQUE,
    Phone VARCHAR(15) UNIQUE
);
CREATE TABLE Purchases(
    Purchase_id INT PRIMARY KEY,
    Customer_id INT,
    Product_id INT,
    Purchase_date DATE,
    Quantity INT,
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Products(Product_id)
);

INSERT INTO Shopping_centres(Shopping_centre_id, Shopping_centre_name, Location, Number_of_stores, Opening_hours)
VALUES
    (1, 'City Centre', '123 Main St', 10, 'Mon-Fri 9am-6pm'),
    (2, 'Mall of Town', '456 Elm St', 20, 'Mon-Sun 10am-9pm'); 
INSERT INTO Stores(Store_id, store_name, Shopping_centre_id)
VALUES
    (1, 'Tech World', 1),
    (2, 'Fashion Hub', 1),
    (3, 'Gadget Galaxy', 2),
    (4, 'Style Street', 2); 
INSERT INTO Products(Product_id, Product_name, Price, Store_id)
VALUES
    (1, 'Laptop', 999.99, 1),
    (2, 'Smartphone', 699.99, 1),
    (3, 'Jeans', 49.99, 2),
    (4, 'T-Shirt', 19.99, 2),
    (5, 'Tablet', 399.99, 3),
    (6, 'Headphones', 89.99, 3),
    (7, 'Dress', 79.99, 4),
    (8, 'Jacket', 119.99, 4);
INSERT INTO Customers(Customer_id, Customer_name, Email, Phone)
VALUES
    (1, 'John Doe', '9yEY3@example.com', '123-456-7890'),
    (2, 'Jane Smith', 'zgV9q@example.com', '987-654-3210'),
    (3, 'Alice Johnson', 'lTm0J@example.com', '555-123-4567'),
    (4, 'Bob Brown', 'o1x5G@example.com', '111-222-3333'),
    (5, 'Charlie Davis', 'eKk3T@example.com', '444-555-6666'),
    (6, 'Diana Evans', 'WtRdH@example.com', '777-888-9999'),
    (7, 'Frank Green', 'lTm0J@example.com', '555-123-4567'),
    (8, 'Grace Harris', 'eKk3T@example.com', '444-555-6666'),
    (9, 'Hannah White', 'WtRdH@example.com', '777-888-9999'),
    (10, 'Ian Black', 'lTm0J@example.com', '555-123-4567');

INSERT INTO Purchases(Purchase_id, Customer_id, Product_id, Purchase_date, Quantity)
VALUES
    (1, 1, 1, '2022-01-01', 1),
    (2, 2, 2, '2022-01-02', 1),
    (3, 3, 3, '2022-01-03', 1),
    (4, 4, 4, '2022-01-04', 2),
    (5, 5, 5, '2022-01-05', 1),
    (6, 6, 6, '2022-01-06', 1),
    (7, 7, 7, '2022-01-07', 1),
    (8, 8, 8, '2022-01-08', 1),
    (9, 9, 1, '2022-01-09', 1),
    (10, 10, 2, '2022-01-10', 1);
    
--user defined functions
SELECT * FROM Shopping_centres;
SELECT * FROM Stores;
SELECT * FROM Products;
SELECT * FROM Customers;
SELECT * FROM Purchases;

