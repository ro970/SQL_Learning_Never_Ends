CREATE TABLE MyDepartment(ID INT, Dept_Name VARCHAR(50));

INSERT INTO MyDepartment VALUES(1,'Accounts');
INSERT INTO MyDepartment VALUES(2,'HR');
INSERT INTO MyDepartment VALUES(3,'Administration');
INSERT INTO MyDepartment VALUES(4,'Counselling');

CREATE TABLE MyEmployees(Emp_ID INT,Emp_Name VARCHAR(50),Gender VARCHAR(50),Salary INT,City VARCHAR(50),Dept_Id INT);

INSERT INTO MyEmployees VALUES(100,'Usman','Male',25000,'Hyderabad',2);
INSERT INTO MyEmployees VALUES(101,'Anas','Male',45000,'Karachi',1);
INSERT INTO MyEmployees VALUES(102,'Anum','Female',35000,'Sukur',3);
INSERT INTO MyEmployees VALUES(103,'Ali','Male',45000,'Hyderabad',4);
INSERT INTO MyEmployees VALUES(104,'Aghar','Male',35000,'Karachi',2);
INSERT INTO MyEmployees VALUES(105,'Oshama','Male',25000,'Sukur',1);

SELECT * FROM MyDepartment;
SELECT * FROM MyEmployees;
GO

CREATE VIEW vW_ForEmployees
AS
(
SELECT m1.Dept_Name,m2.Salary
FROM MyDepartment AS m1 
INNER JOIN 
MyEmployees AS m2
ON m1.ID = m2.Dept_Id
)

					/* ROW LEVEL MECHANISM  /  SECURITY  */
CREATE VIEW vW_ForEmployees1
AS
(
SELECT *
FROM MyDepartment AS m1 
INNER JOIN 
MyEmployees AS m2
ON m1.ID = m2.Dept_Id
WHERE m1.Dept_Name = 'HR'
);

SELECT * FROM vW_ForEmployees1;


					/* COLUM LEVEL MECHANISM / SECURITY  */
CREATE VIEW vW_ForEmployess2
AS
(
SELECT m1.ID,m1.Dept_Name,m2.Emp_ID,m2.Emp_Name,m2.Gender,m2.City  
FROM MyDepartment AS m1
INNER JOIN MyEmployees AS m2
ON m1.ID = m2.Dept_Id
);



ALTER VIEW vW_ForEmployess2
AS
(
SELECT m1.ID,m1.Dept_Name,m2.Emp_ID,m2.Emp_Name,m2.Gender,m2.City  
FROM MyDepartment AS m1
INNER JOIN MyEmployees AS m2
ON m1.ID = m2.Dept_Id
WHERE m1.Dept_Name = 'HR' OR Dept_Name = 'Accounts'
);


SELECT * FROM vW_ForEmployess2;

sp_helptext vW_ForEmployess2;

CREATE VIEW vW_ForMyEmployees
AS
(
	SELECT * FROM MyEmployees
);



INSERT INTO vW_ForMyEmployees VALUES (113,'Areeb','Male',35000,'Hyderabad',3);

UPDATE vW_ForMyEmployees SET Emp_Name = 'Sufyan' WHERE Emp_ID = 113;
DELETE FROM vW_ForMyEmployees WHERE Emp_ID = 113;


SELECT * FROM vW_ForMyEmployees;