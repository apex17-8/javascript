--pagination:Split results into pages
--indexing:Speed up queries
--Trigger (Insert/Update):Auto log actions
--Trigger (Delete):Auto log deletions

--voters table with voter_id: unique ID for each voter and registration_date: automatically stores the date/time a record is added
CREATE TABLE voters (
    voter_id INT PRIMARY KEY IDENTITY(1,1),  -- Auto-incrementing ID
    full_name VARCHAR(100),
    county VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    registration_date DATETIME DEFAULT GETDATE()
);

--insert sample data
INSERT INTO voters (full_name, county, age, gender) VALUES
('John Mwangi', 'Nairobi', 28, 'Male'),
('Grace Wambui', 'Kiambu', 32, 'Female'),
('Peter Otieno', 'Kisumu', 41, 'Male'),
('Mary Njeri', 'Nakuru', 26, 'Female'),
('David Kiptoo', 'Uasin Gishu', 35, 'Male'),
('Lilian Achieng', 'Kisumu', 29, 'Female'),
('Samuel Kimani', 'Murang’a', 38, 'Male'),
('Eunice Chebet', 'Bomet', 24, 'Female'),
('Daniel Onyango', 'Siaya', 30, 'Male'),
('Mercy Nduta', 'Nyeri', 33, 'Female');

--an index for faster sorting/filtering 
--If you frequently query by county or age, indexing will improve speed. eg. ORDER BY county or WHERE county = 'Kisumu' will run faster.
CREATE INDEX idx_county ON voters(county);
CREATE INDEX idx_age ON voters(age);

--a log table
--a table to record voter activity automatically.
CREATE TABLE voter_log (
    voter_id INT,
    full_name VARCHAR(100),
    action_type VARCHAR(20),
    action_time DATETIME
);


--a trigger for automatic logging
--logs every INSERT and UPDATE to the voters table.
--inserted = temporary table holding new/updated rows. Each insert or update automatically creates a log record.


--Pagination (viewing data by page), first 5 voters
SELECT *
FROM voters
ORDER BY voter_id
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

--last 5 voters
SELECT *
FROM voters
ORDER BY voter_id
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;

--Test the trigger
--Insert a new voter to see the log entry created automatically.
INSERT INTO voters (full_name, county, age, gender)
VALUES ('Ann Wanjiku', 'Kirinyaga', 27, 'Female');

--Check voter log table
SELECT * FROM voter_log;

--Update a voter’s details
UPDATE voters
SET county = 'Nakuru'
WHERE full_name = 'John Mwangi';

--Trigger for DELETE logging
CREATE TRIGGER trg_voter_delete
ON voters
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO voter_log (voter_id, full_name, action_type, action_time)
    SELECT voter_id, full_name, 'DELETE', GETDATE()
    FROM deleted;
END;



