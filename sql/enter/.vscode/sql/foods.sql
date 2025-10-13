-- Active: 1735465515715@@127.0.0.1@3306@foods
create database Foods;
use Foods;
CREATE Table vegetables(
    id int primary key ,
    name varchar(50)
);
SELECT * FROM vegetables;
INSERT INTO vegetables VALUES(1,'cabbage');
INSERT INTO vegetables VALUES(2,'carrot');
INSERT INTO vegetables VALUES(3,'broccoli');
INSERT INTO vegetables VALUES(4,'spinach'); 
INSERT INTO vegetables VALUES(5,'lettuce');
INSERT INTO vegetables VALUES(6,'potato');
select *from vegetables;
INSERT into vegetables ( color,price,taste) VALUES('green',20,'bitter');
ALTER TABLE vegetables ADD color varchar(50);
ALTER TABLE vegetables ADD price int;
ALTER TABLE vegetables ADD taste varchar(50);
alter TABLE vegetables modify id AUTO_INCREMENT;