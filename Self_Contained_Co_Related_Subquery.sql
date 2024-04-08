			
					
					/* SELF CONTAINED SUB - QUERY */

SELECT * FROM MyEmployees
WHERE Dept_Id =
(
SELECT ID FROM MyDepartment 
WHERE Dept_Name = 'HR'
);	


					/* CO - RELATED SUBQUERY */

SELECT * FROM MyEmployees AS e
WHERE e.Dept_Id IN
( 
	SELECT d.id FROM MyDepartment AS d 
	WHERE e.Gender = 'Male'
);

SELECT * FROM MyEmployees AS e
WHERE e.Dept_Id IN
( 
	SELECT d.id FROM MyDepartment AS d 
	WHERE e.Gender = 'Female'
);


SELECT * FROM MyEmployees AS e
WHERE e.Dept_Id IN
( 
	SELECT d.id FROM MyDepartment AS d 
	WHERE e.Gender = 'Female'
);

SELECT * FROM MyEmployees AS e
WHERE e.Dept_Id IN
( 
	SELECT d.id FROM MyDepartment AS d 
	WHERE e.Salary > 25000
);

SELECT * FROM MyEmployees
WHERE Salary 
IN
(SELECT MIN(Salary) FROM MyEmployees);


SELECT * FROM MyEmployees
WHERE Salary 
IN
(SELECT MAX(Salary) FROM MyEmployees);

SELECT * FROM MyEmployees;

SELECT * INTO Employee_Backup FROM MyEmployees;

SELECT * FROM Employee_Backup;

SELECT Emp_ID,Emp_Name,Salary INTO Employee_Backup FROM MyEmployees;