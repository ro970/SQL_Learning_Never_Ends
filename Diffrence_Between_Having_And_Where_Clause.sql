CREATE TABLE Employee_Details
(
	Id INT PRIMARY KEY IDENTITY,Emp_Name VARCHAR(50),
	Emp_Gender VARCHAR(50),
	Emp_Salary INT,
	Emp_City VARCHAR(50)
	
);

INSERT INTO Employee_Details VALUES('Ali','Male',14000,'Hyderabad');
INSERT INTO Employee_Details VALUES('Usman','Male',12000,'Karachi');
INSERT INTO Employee_Details VALUES('Osama','Male',17000,'Hyderabad');
INSERT INTO Employee_Details VALUES('Amir','Male',11500,'Karachi');
INSERT INTO Employee_Details VALUES('Ahmed','Male',11000,'Hyderabad');
INSERT INTO Employee_Details VALUES('Ahmed','Male',20000,'Karachi');
INSERT INTO Employee_Details VALUES('Afshan','Female',24000,'Sukur');
INSERT INTO Employee_Details VALUES('Uzar','Male',21000,'Hyderabad');
INSERT INTO Employee_Details VALUES('Moomal','Female',14000,'Karachi');
INSERT INTO Employee_Details VALUES('Afnan','Male',16000,'Sukur');
INSERT INTO Employee_Details VALUES('Ammara','Female',26000,'Hyderabad');



CREATE TABLE Product_Sales(Product_Name VARCHAR(50),Sales_Amount INT);

INSERT INTO Product_Sales VALUES('Monitor',1000);
INSERT INTO Product_Sales VALUES('Mouse',400);
INSERT INTO Product_Sales VALUES('Hardisk',600);
INSERT INTO Product_Sales VALUES('Keyboard',300);
INSERT INTO Product_Sales VALUES('Hardisk',600);
INSERT INTO Product_Sales VALUES('Monitor',1000);
INSERT INTO Product_Sales VALUES('Mouse',400);
INSERT INTO Product_Sales VALUES('Hardisk',600);
INSERT INTO Product_Sales VALUES('Mouse',400);
INSERT INTO Product_Sales VALUES('Monitor',1000);
INSERT INTO Product_Sales VALUES('Hardisk',600);

SELECT * FROM Employee_Details;
SELECT * FROM Product_Sales;

SELECT Emp_City,SUM(Emp_Salary) AS 'Total_Salary'
FROM Employee_Details
GROUP BY Emp_City
HAVING Emp_City = 'Hyderabad';

SELECT Emp_City,SUM(Emp_Salary) AS 'Total_Salary'
FROM Employee_Details
WHERE Emp_City = 'Hyderabad'
GROUP BY Emp_City;


SELECT Emp_City,SUM(Emp_Salary) AS 'Total Salary'
FROM Employee_Details
GROUP BY Emp_City
HAVING SUM(Emp_Salary) > 40000;


			/* THIS CODE WILL GENERATE AN ERROR BECAUSE WHERE CLAUSE WILL NOT WORK WITH AGGREGATE FUNCTIONS */
SELECT Emp_City,SUM(Emp_Salary) AS 'Total Salary'
FROM Employee_Details
WHERE SUM(Emp_Salary) > 40000
GROUP BY Emp_City;


SELECT Emp_City,SUM(Emp_Salary) AS 'Total Salary'
FROM Employee_Details
WHERE Emp_City IN ('Hyderabad','Karachi')
GROUP BY Emp_City
HAVING SUM(Emp_Salary) >=20000;

SELECT Product_Name,SUM(Sales_Amount) FROM Product_Sales
GROUP BY Product_Name;

SELECT Product_Name,SUM(Sales_Amount) AS 'Total_Sales'
FROM Product_Sales
WHERE Product_Name IN ('Hardisk')
GROUP BY Product_Name
HAVING SUM(Sales_Amount) > 1000;

CREATE VIEW
