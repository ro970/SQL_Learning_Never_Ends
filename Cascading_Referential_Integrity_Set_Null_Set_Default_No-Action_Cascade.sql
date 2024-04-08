SELECT * FROM Customer_tbl;
SELECT * FROM [order];

DELETE FROM Customer_tbl WHERE C_id = 2;
UPDATE Customer_tbl SET C_id = 7 WHERE C_id = 2;


DROP TABLE Customer_tbl;
DROP TABLE [order];

CREATE TABLE Customer_tbl
(
	C_id INT PRIMARY KEY,
	C_Name VARCHAR(50),
	C_Address VARCHAR(MAX),
	City VARCHAR(50)
);

INSERT INTO  Customer_tbl VALUES(1,'Ali','Latifabad No:8','Hyderabad');
INSERT INTO  Customer_tbl VALUES(2,'Anas','Latifabad No:3','Hyderabad');
INSERT INTO  Customer_tbl VALUES(3,'Zain','Latifabad No:6','Hyderabad');
INSERT INTO  Customer_tbl VALUES(4,'Amir','Latifabad No:7','Hyderabad');
INSERT INTO  Customer_tbl VALUES(5,'Usman','Latifabad No:5','Hyderabad');

CREATE TABLE [order]
(
	Ord_Id INT PRIMARY KEY,
	Item VARCHAR(50),
	Quantity INT,
	Price_Of_1 INT,
	C_Id INT FOREIGN KEY REFERENCES Customer_tbl(C_id)
);

INSERT INTO [order] VALUES(111,'Hardisk',2,500,3);
INSERT INTO [order] VALUES(222,'Ram',1,300,1);
INSERT INTO [order] VALUES(333,'Keyboard',3,400,4);
INSERT INTO [order] VALUES(444,'Mouse',2,300,2);
INSERT INTO [order] VALUES(555,'Speaker',1,3000,2);
INSERT INTO [order] VALUES(666,'USB',2,1000,5);

SELECT * FROM Customer_tbl;
SELECT * FROM [order];


					/*  CASCADE  */

CREATE TABLE [order]
(
	Ord_Id INT PRIMARY KEY,
	Item VARCHAR(50),
	Quantity INT,
	Price_Of_1 INT,
	C_Id INT FOREIGN KEY REFERENCES Customer_tbl(C_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

INSERT INTO [order] VALUES(111,'Hardisk',2,500,3);
INSERT INTO [order] VALUES(222,'Ram',1,300,1);
INSERT INTO [order] VALUES(333,'Keyboard',3,400,4);
INSERT INTO [order] VALUES(444,'Mouse',2,300,2);
INSERT INTO [order] VALUES(555,'Speaker',1,3000,2);
INSERT INTO [order] VALUES(666,'USB',2,1000,5);

SELECT * FROM Customer_tbl;
SELECT * FROM [order];

DELETE FROM Customer_tbl WHERE C_id = 2;
UPDATE Customer_tbl SET C_id = 7 WHERE C_id = 1;


								/* SET NULL  */

CREATE TABLE Customer_tbl
(
	C_id INT PRIMARY KEY,
	C_Name VARCHAR(50),
	C_Address VARCHAR(MAX),
	City VARCHAR(50)
);

INSERT INTO  Customer_tbl VALUES(1,'Ali','Latifabad No:8','Hyderabad');
INSERT INTO  Customer_tbl VALUES(2,'Anas','Latifabad No:3','Hyderabad');
INSERT INTO  Customer_tbl VALUES(3,'Zain','Latifabad No:6','Hyderabad');
INSERT INTO  Customer_tbl VALUES(4,'Amir','Latifabad No:7','Hyderabad');
INSERT INTO  Customer_tbl VALUES(5,'Usman','Latifabad No:5','Hyderabad');

CREATE TABLE [order]
(
	Ord_Id INT PRIMARY KEY,
	Item VARCHAR(50),
	Quantity INT,
	Price_Of_1 INT,
	C_Id INT FOREIGN KEY REFERENCES Customer_tbl(C_id)
	ON DELETE SET NULL
	ON UPDATE SET NULL
);

INSERT INTO [order] VALUES(111,'Hardisk',2,500,3);
INSERT INTO [order] VALUES(222,'Ram',1,300,1);
INSERT INTO [order] VALUES(333,'Keyboard',3,400,4);
INSERT INTO [order] VALUES(444,'Mouse',2,300,2);
INSERT INTO [order] VALUES(555,'Speaker',1,3000,2);
INSERT INTO [order] VALUES(666,'USB',2,1000,5);

DELETE FROM Customer_tbl WHERE C_id = 2;
UPDATE Customer_tbl SET C_id = 7 WHERE C_id = 1;


									/* SET DEFAULT */

CREATE TABLE Customer_tbl
(
	C_id INT PRIMARY KEY,
	C_Name VARCHAR(50),
	C_Address VARCHAR(MAX),
	City VARCHAR(50)
);

INSERT INTO  Customer_tbl VALUES(0,'Unknown','No Address','No City');
INSERT INTO  Customer_tbl VALUES(1,'Ali','Latifabad No:8','Hyderabad');
INSERT INTO  Customer_tbl VALUES(2,'Anas','Latifabad No:3','Hyderabad');
INSERT INTO  Customer_tbl VALUES(3,'Zain','Latifabad No:6','Hyderabad');
INSERT INTO  Customer_tbl VALUES(4,'Amir','Latifabad No:7','Hyderabad');
INSERT INTO  Customer_tbl VALUES(5,'Usman','Latifabad No:5','Hyderabad');

CREATE TABLE [order]
(
	Ord_Id INT PRIMARY KEY,
	Item VARCHAR(50),
	Quantity INT,
	Price_Of_1 INT,
	C_Id INT FOREIGN KEY REFERENCES Customer_tbl(C_id)
);

INSERT INTO [order] VALUES(111,'Hardisk',2,500,3);
INSERT INTO [order] VALUES(222,'Ram',1,300,1);
INSERT INTO [order] VALUES(333,'Keyboard',3,400,4);
INSERT INTO [order] VALUES(444,'Mouse',2,300,2);
INSERT INTO [order] VALUES(555,'Speaker',1,3000,2);
INSERT INTO [order] VALUES(666,'USB',2,1000,5);

DELETE FROM Customer_tbl WHERE C_id = 2;
UPDATE Customer_tbl SET C_id = 7 WHERE C_id = 1;

SELECT * FROM Customer_tbl;
SELECT * FROM [order];

			/*		CHANGING THE NAME OF TABLE	*/

execute sp_rename 'Customer_tbl','Customer_Data';



