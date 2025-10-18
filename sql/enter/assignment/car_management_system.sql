--  CAR RENTAL MANAGEMENT SYSTEM


--  TABLES:
-- 1. Car
-- 2. Customer
-- 3. Rental
-- 4. Payment
-- 5. Insurance
-- 6. Location
-- 7. Reservation
-- 8. Maintenance

--  RELATIONSHIPS:
-- Customer → Rental: One-to-Many (A customer can make many rentals)
--  Rental → Customer: Many-to-One (Each rental belongs to one customer)
-- Car → Rental: One-to-Many (A car can be rented many times)
--  Rental → Car: Many-to-One (Each rental uses one car)
-- Rental → Payment: One-to-One (Each rental has one payment)
--  Car → Insurance: One-to-One (Each car has one active insurance policy)
-- Car → Maintenance: One-to-Many (A car can have multiple maintenance records)
--  Customer → Reservation: One-to-Many (A customer can make many reservations)
-- Car → Reservation: One-to-Many (A car can be reserved multiple times)
-- Location → Car: One-to-Many (A location can have multiple cars available)

-- OPERATIONS:
-- CREATE → Define database schema using CREATE TABLE statements
-- READ → Use SELECT queries to retrieve data from tables
-- UPDATE → Modify existing records (e.g., update car availability)
-- DELETE → Remove unwanted records (e.g., delete old rentals)

-- ADVANCED QUERIES:
-- Filtering data using WHERE, BETWEEN, LIKE
-- Sorting data using ORDER BY
-- Joining tables (INNER JOIN, LEFT JOIN, RIGHT JOIN)
-- Nested and Correlated Subqueries
-- User Defined Functions (UDFs) for reusable calculations

-- SSMS DATABASE DIAGRAM:
-- A full visual diagram created in SQL Server Management Studio (SSMS) displaying all relationships and foreign key links between tables


