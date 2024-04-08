CREATE TABLE MyEmployees(Emp_Id INT,Emp_Name VARCHAR(50),Gender VARCHAR(50),Salary INT,City VARCHAR(50),Dept_Id INT);

INSERT INTO MyEmployees VALUES(100,'Usman','Male',25000,'Hyderabad',4);
INSERT INTO MyEmployees VALUES(101,'Anas','Male',25000,'Karachi',1);
INSERT INTO MyEmployees VALUES(102,'Anam','Female',25000,'Sukur',3);
INSERT INTO MyEmployees VALUES(103,'Ali','Male',25000,'Hyderabad',4);
INSERT INTO MyEmployees VALUES(104,'Asghar','Male',25000,'Karachi',2);
INSERT INTO MyEmployees VALUES(105,'Oshama','Male',25000,'Sukur',1);
INSERT INTO MyEmployees VALUES(106,'Asmara','Female',25000,'Hyderabad',3);
INSERT INTO MyEmployees VALUES(107,'Sufiyan','Male',25000,'Karachi',2);
INSERT INTO MyEmployees VALUES(108,'Afshan','Female',25000,'Sukur',4);


SELECT * FROM MyEmployees
WHERE Emp_ID IN
(
SELECT Emp_ID FROM MyEmployees WHERE Salary >30000
);


SELECT * FROM MyEmployees
WHERE Emp_ID IN
(
SELECT Emp_ID FROM MyEmployees WHERE City = 'Hyderabad'
);


SELECT Emp_Name,Gender,Salary FROM MyEmployees
WHERE Emp_ID IN
(
SELECT Emp_ID FROM MyEmployees WHERE Gender = 'Male'
);


UPDATE MyEmployees SET Salary = Salary + 2000
WHERE Emp_ID IN
(
SELECT Emp_ID FROM MyEmployees WHERE City = 'Sukur'
);

DELETE FROM MyEmployees
WHERE Emp_ID IN
(
SELECT Emp_ID FROM MyEmployees WHERE City = 'Karachi'
);


SELECT * FROM MyEmployees 
WHERE Dept_Id IN
(
SELECT id FROM MyDepartment WHERE Dept_Name = 'Accounts'
);

SELECT * FROM MyEmployees;