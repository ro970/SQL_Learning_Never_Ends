SELECT * FROM MyEmployees
WHERE Dept_Id IN
(
SELECT ID FROM MyDepartment 
WHERE Dept_Name = 'Accounts'
);	



SELECT * FROM MyEmployees
WHERE Dept_Id =
(
SELECT ID FROM MyDepartment 
WHERE Dept_Name = 'Accounts'
);	


SELECT * FROM MyEmployees
WHERE Dept_Id IN
(
SELECT ID FROM MyDepartment 
WHERE Gender = 'Male'
);	



SELECT * FROM MyEmployees
WHERE Salary < any
(
SELECT Salary FROM MyEmployees 
WHERE Emp_Name = 'Anas' OR Emp_Name = 'Anum'
);	

SELECT * FROM MyEmployees
WHERE Salary < all
(
SELECT Salary FROM MyEmployees 
WHERE Emp_Name = 'Anas' OR Emp_Name = 'Anum'
);	
