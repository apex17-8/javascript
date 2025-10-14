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

use foods;
select * from vegetables;
ALTER TABLE vegetables ADD PRIMARY KEY (id);
ALTER TABLE vegetables MODIFY id INT NOT NULL AUTO_INCREMENT;
select * from vegetables;
INSERT into vegetables ( color,price,taste) VALUES('green',20,'bitter');
INSERT into vegetables ( color,price,taste) VALUES('orange',30,'sweet');
INSERT INTO vegetables (name, color, price, taste)
VALUES ('Pumpkin', 'orange', 30, 'sweet');
SELECT * FROM vegetables;
INSERT INTO vegetables (id, name, color, price, taste)
VALUES (1, 'Orange Veggie', 'orange', 30, 'sweet');

UPDATE vegetables
SET color = 'orange', price = 30, taste = 'sweet'
WHERE id = 1;

INSERT INTO vegetables (id, name, color, price, taste)
VALUES (10, 'Orange Veggie', 'orange', 30, 'sweet');

update vegetables
set color='orange'
where id=2;
delete  from vegetables
where id=10;


