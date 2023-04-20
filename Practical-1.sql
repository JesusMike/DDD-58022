CREATE DATABASE ABC_Computer;

USE ABC_Computer;

CREATE TABLE Computer (
   ComputerID INT PRIMARY KEY,
   Model VARCHAR(50),
   Processor VARCHAR(50),
   ProcessorSpeed FLOAT,
   RAM INT,
   Storage INT,
   Price DECIMAL(10,2) );
   
   INSERT INTO Computer VALUES
   (1, 'ModelA', 'Intel Core i7', 3.4, 16, 512, 1200.00),
   (2, 'ModelB', 'Intel Core i5', 2.8, 8, 256, 800.00),
   (3, 'ModelA', 'Intel Core i5', 2.8, 8, 256, 900.00),
   (4, 'ModelB', 'Intel Core i3', 2.4, 4, 128, 500.00);
   

ALTER TABLE Computer
ADD Graphics TEXT(40) NOT NULL COMMENT 'Must be all "Integrated Intel HD Graphics 4600"';

ALTER TABLE Computer
DROP COLUMN ProcessorSpeed;


UPDATE Computer SET Graphics = 'Integrated Intel HD Graphics 4600' WHERE ComputerID = 1;
UPDATE Computer SET Graphics = 'Integrated Intel HD Graphics 4600' WHERE ComputerID = 2;
UPDATE Computer SET Graphics = 'Integrated Intel HD Graphics 4600' WHERE ComputerID = 3;
UPDATE Computer SET Graphics = 'Integrated Intel HD Graphics 4600' WHERE ComputerID = 4;

SELECT * FROM Computer;

SELECT * FROM Computer WHERE Model = 'ModelA';

SELECT * FROM Computer WHERE Model = 'ModelB';