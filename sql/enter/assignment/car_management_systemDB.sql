
-- CAR RENTAL MANAGEMENT SYSTEM

-- Tables: Car, Customer, Rental, Payment, Insurance, Location, Reservation, Maintenance
-- Operations: CREATE, READ, UPDATE, DELETE
-- Advanced Queries: Joins, Subqueries, and UDFs


CREATE DATABASE CarRentalDB;
USE CarRentalDB;


-- TABLES


CREATE TABLE Location (
    LocationID INT PRIMARY KEY,
    LocationName VARCHAR(100),
    Address VARCHAR(255),
    ContactNumber VARCHAR(20)
);

CREATE TABLE Car (
    CarID INT PRIMARY KEY,
    CarModel VARCHAR(100),
    Manufacturer VARCHAR(100),
    Year INT,
    Color VARCHAR(50),
    RentalRate DECIMAL(10,2),
    Availability BIT,
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);

CREATE TABLE Rental (
    RentalID INT PRIMARY KEY,
    CarID INT,
    CustomerID INT,
    RentalStartDate DATE,
    RentalEndDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CarID) REFERENCES Car(CarID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    RentalID INT UNIQUE,
    PaymentDate DATE,
    Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (RentalID) REFERENCES Rental(RentalID)
);

CREATE TABLE Insurance (
    InsuranceID INT PRIMARY KEY,
    CarID INT UNIQUE,
    InsuranceProvider VARCHAR(100),
    PolicyNumber VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (CarID) REFERENCES Car(CarID)
);

CREATE TABLE Reservation (
    ReservationID INT PRIMARY KEY,
    CarID INT,
    CustomerID INT,
    ReservationDate DATE,
    PickupDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (CarID) REFERENCES Car(CarID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE Maintenance (
    MaintenanceID INT PRIMARY KEY,
    CarID INT,
    MaintenanceDate DATE,
    Description VARCHAR(255),
    Cost DECIMAL(10,2),
    FOREIGN KEY (CarID) REFERENCES Car(CarID)
);


-- DATA 


-- Locations
INSERT INTO Location VALUES
(050, 'Nairobi CBD', 'Moi Avenue, Nairobi', '+254700111222'),
(051, 'Westlands', 'Waiyaki Way, Nairobi', '+254711222333'),
(052, 'Karen', 'Karen Road, Nairobi', '+254722333444'),
(053, 'Thika', 'Kenyatta Highway, Thika', '+254733444555'),
(054, 'Juja', 'Gachororo, Juja', '+254744555666');

-- Cars
INSERT INTO Car VALUES
(100, 'Toyota Axio', 'Toyota', 2020, 'White', 4000.00, 1, 050),
(101, 'Mazda Demio', 'Mazda', 2019, 'Blue', 3500.00, 1, 051),
(102, 'Subaru Impreza', 'Subaru', 2021, 'Red', 5000.00, 1, 051),
(103, 'Nissan Note', 'Nissan', 2018, 'Silver', 3200.00, 1, 052),
(104, 'Toyota Prado', 'Toyota', 2022, 'Black', 10000.00, 1, 050),
(105, 'Honda Fit', 'Honda', 2019, 'Grey', 3300.00, 1, 053),
(106, 'Mitsubishi Outlander', 'Mitsubishi', 2021, 'White', 7500.00, 1, 052),
(107, 'Suzuki Swift', 'Suzuki', 2020, 'Blue', 3800.00, 1, 054);

-- Customers
INSERT INTO Customer VALUES
(200, 'Brian', 'Mwangi', 'brian.mwangi@example.com', '+254700123456', 'Nairobi'),
(201, 'Aisha', 'Omondi', 'aisha.omondi@example.com', '+254711654321', 'Kisumu'),
(202, 'Kelvin', 'Mutua', 'kelvin.mutua@example.com', '+254722777888', 'Machakos'),
(203, 'Grace', 'Njeri', 'grace.njeri@example.com', '+254733999000', 'Thika'),
(204, 'Peter', 'Otieno', 'peter.otieno@example.com', '+254744888999', 'Nakuru');

-- Rentals
INSERT INTO Rental VALUES
(300, 100, 200, '2025-01-10', '2025-01-15', 20000.00),
(301, 101, 201, '2025-02-05', '2025-02-10', 17500.00),
(302, 102, 202, '2025-03-12', '2025-03-17', 25000.00),
(303, 103, 203, '2025-04-02', '2025-04-06', 12800.00),
(304, 104, 204, '2025-05-20', '2025-05-25', 50000.00);

-- Payments
INSERT INTO Payment VALUES
(400, 300, '2025-01-10', 20000.00, 'M-Pesa'),
(401, 301, '2025-02-05', 17500.00, 'Bank'),
(402, 302, '2025-03-12', 25000.00, 'M-Pesa'),
(403, 303, '2025-04-02', 12800.00, 'Bank'),
(404, 304, '2025-05-20', 50000.00, 'M-Pesa');

-- Insurance
INSERT INTO Insurance VALUES
(500, 100, 'Jubilee Insurance', 'POL001AX', '2025-01-01', '2025-12-31'),
(501, 101, 'APA Insurance', 'POL002DM', '2025-02-01', '2026-01-31'),
(502, 102, 'Britam', 'POL003IM', '2025-03-01', '2026-02-28'),
(503, 103, 'Madison', 'POL004NN', '2025-04-01', '2026-03-31'),
(504, 104, 'CIC Insurance', 'POL005PR', '2025-05-01', '2026-04-30');

-- Reservation
INSERT INTO Reservation VALUES
(600, 100, 200, '2025-01-05', '2025-01-10', '2025-01-15'),
(601, 101, 201, '2025-02-01', '2025-02-05', '2025-02-10'),
(602, 102, 202, '2025-03-08', '2025-03-12', '2025-03-17'),
(603, 103, 203, '2025-04-01', '2025-04-02', '2025-04-06'),
(604, 104, 204, '2025-05-18', '2025-05-20', '2025-05-25');

-- Maintenance
INSERT INTO Maintenance VALUES
(700, 100, '2025-01-25', 'Oil Change', 3000.00),
(701, 101, '2025-02-20', 'Brake Pad Replacement', 5000.00),
(702, 102, '2025-03-25', 'Tire Replacement', 10000.00),
(703, 103, '2025-04-15', 'Engine Tune-up', 8000.00),
(704, 104, '2025-05-28', 'Car Wash & Service', 2000.00);


--OPERATIONS
-- SORTING AND FILTERING

--Filtering
-- Filtering cars available in Nairobi
SELECT * 
FROM Car 
WHERE Availability = 1 AND LocationID = 251;

-- Filtering rentals between January and March 2025
SELECT * 
FROM Rental 
WHERE RentalStartDate BETWEEN '2025-01-01' AND '2025-03-31';

-- Filtering customers whose name starts with 'A'
SELECT * 
FROM Customer 
WHERE FirstName LIKE 'A%';

--sorting

-- Sorting cars by rental rate (highest first)
SELECT * 
FROM Car 
ORDER BY RentalRate DESC;

-- Sorting customers alphabetically by last name
SELECT * 
FROM Customer 
ORDER BY LastName ASC;

-- Sorting rentals by start date
SELECT * 
FROM Rental 
ORDER BY RentalStartDate;

-- READ
SELECT * FROM Car;
SELECT * FROM Customer;

-- UPDATE
UPDATE Car SET Availability = 0 WHERE CarID = 100;

-- DELETE
DELETE FROM Maintenance WHERE MaintenanceID = 704;


-- ADVANCED QUERIES

-- INNER JOIN
SELECT R.RentalID, C.FirstName, C.LastName, Car.CarModel, R.TotalAmount
FROM Rental R
INNER JOIN Customer C ON R.CustomerID = C.CustomerID
INNER JOIN Car ON R.CarID = Car.CarID;

-- LEFT JOIN
SELECT Car.CarModel, Rental.RentalStartDate
FROM Car
LEFT JOIN Rental ON Car.CarID = Rental.CarID;

-- RIGHT JOIN
SELECT C.FirstName, C.LastName, Rental.TotalAmount
FROM Customer C
RIGHT JOIN Rental ON C.CustomerID = Rental.CustomerID;

-- FULL JOIN
SELECT C.FirstName, R.TotalAmount
FROM Customer C
FULL JOIN Rental R ON C.CustomerID = R.CustomerID;


-- SUBQUERIES


-- Nested Subquery
SELECT FirstName, LastName 
FROM Customer
WHERE CustomerID IN (
    SELECT CustomerID FROM Rental WHERE TotalAmount > 20000
);

-- Correlated Subquery
SELECT CarModel, RentalRate 
FROM Car c
WHERE RentalRate > (SELECT AVG(RentalRate) FROM Car WHERE LocationID = c.LocationID);


-- USER DEFINED FUNCTIONS (UDFs)


-- 1. Scalar Function
CREATE FUNCTION dbo.fn_RentalDuration(@StartDate DATE, @EndDate DATE)
RETURNS INT
AS
BEGIN
    RETURN DATEDIFF(DAY, @StartDate, @EndDate);
END;

SELECT RentalID, dbo.fn_RentalDuration(RentalStartDate, RentalEndDate) AS DurationDays
FROM Rental;

-- 2. Inline Table-Valued Function
CREATE FUNCTION dbo.fn_CarsByLocation(@LocID INT)
RETURNS TABLE
AS
RETURN (
    SELECT CarModel, Manufacturer, RentalRate
    FROM Car
    WHERE LocationID = @LocID
);

SELECT * FROM dbo.fn_CarsByLocation(051);

-- 3. Multi-Statement Table-Valued Function
CREATE FUNCTION dbo.fn_HighValueRentals(@MinAmount DECIMAL(10,2))
RETURNS @HighRentals TABLE (
    RentalID INT,
    CustomerName VARCHAR(100),
    Amount DECIMAL(10,2)
)
AS
BEGIN
    INSERT INTO @HighRentals
    SELECT R.RentalID, CONCAT(C.FirstName, ' ', C.LastName), R.TotalAmount
    FROM Rental R
    JOIN Customer C ON R.CustomerID = C.CustomerID
    WHERE R.TotalAmount > @MinAmount;
    RETURN;
END;

SELECT * FROM dbo.fn_HighValueRentals(20000);

-- 4. Case-defined Function
CREATE FUNCTION dbo.fn_CarCategory(@Rate DECIMAL(10,2))
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @Category VARCHAR(50);
    SET @Category = CASE 
        WHEN @Rate < 4000 THEN 'Economy'
        WHEN @Rate BETWEEN 4000 AND 7000 THEN 'Standard'
        ELSE 'Luxury'
    END;
    RETURN @Category;
END;

SELECT CarModel, RentalRate, dbo.fn_CarCategory(RentalRate) AS Category
FROM Car;



