CREATE TABLE Employee(EmpID INT,EmpName VARCHAR(50), EmpDept VARCHAR(50), Salary VARCHAR(50));

SELECT * FROM Employee;

INSERT INTO Employee VALUES(1,'Ali','Accounts',75000);
INSERT INTO Employee VALUES(2,'Usman','Finance',45000);
INSERT INTO Employee VALUES(3,'Amir','Admin',55000);

UPDATE Employee SET Salary = 50000 WHERE EmpID = 2;
UPDATE Employee SET EmpName = 'Mohmmad Amir' WHERE EmpID = 3;
UPDATE Employee SET EmpDept = 'Accounts' WHERE EmpID = 2;

CREATE TABLE Customer_tbl
(
	C_id INT PRIMARY KEY,
	C_Name VARCHAR(50),
	C_Address VARCHAR(MAX),
	City VARCHAR(50)
);

SELECT * FROM Customer_tbl;

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

ALTER TABLE Customer_tbl RENAME TO Customer_Data;