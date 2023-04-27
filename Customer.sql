CREATE DATABASE Customer;
CREATE TABLE tblcustomer ( CustomerID INT, CustomerName varchar(45) NOT NULL, Municipality varchar(45) NOT NULL, City varchar(45) NOT NULL, Salary_in_Peso INT);
SELECT * FROM tblcustomer;
INSERT INTO tblcustomer VALUES ('1', 'Gina de Leon', 'Apalt', 'Pampanga', '5000'),
('2', 'Amara Luna', 'Mexico', 'Pampanga', '6000'),
('3', 'Lucila Maulon', 'Angat', 'Bulacan', '1000'),
('4', 'Rafael Santos', 'Lumban', 'Laguna', '4500'),
('5', 'Maricel Moran', 'Calumpit', 'Bulacan', '12000'),
('6', 'Antonio Moreno', 'Santa Maria', 'Bulacan', '8500'),
('7', 'Hanna Moos', 'Alaminos', 'Laguna', '6000'),
('8', 'Fred Gregorio', 'Lumban', 'Laguna', '5000'),
('9', 'Maria Andres', 'Porac', 'Pampanga', '1800'),
('10', 'Liza Ramos', 'Alimanos', 'Laguna', '14000');

-- select highest salary
Select max(Salary_in_Peso)
From tblcustomer;

-- select lowest salary
Select min(Salary_in_Peso)
From tblcustomer;

-- select all pampanga
SELECT * FROM tblcustomer WHERE City = 'Pampanga';

-- select all pampanga and porac
SELECT * FROM tblcustomer WHERE City = 'Pampanga'  AND Municipality = 'Porac';

-- select not pampanga
SELECT * FROM tblcustomer WHERE NOT City = 'Pampanga';

-- select lowest salary from laguna
Select min(Salary_in_Peso)
From tblcustomer WHERE City = 'Laguna';