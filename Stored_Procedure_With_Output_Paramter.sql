CREATE OR ALTER PROCEDURE spGetEmployeesByGender
@Gender VARCHAR(50),
@EmployeeCount INT OUTPUT
AS
	BEGIN 
		SELECT @EmployeeCount = COUNT(Emp_ID) 
		FROM MyEmployees 
		WHERE Gender = @Gender;
	END

DECLARE @TotalEmployee INT
EXEC spGetEmployeesByGender 'Male',@TotalEmployee OUTPUT
SELECT @TotalEmployee AS 'Total_Employee_Count';


CREATE OR ALTER PROCEDURE spGetEmployeeNameAndShowSalary
@Name VARCHAR(50),
@Salary INT OUTPUT
AS
	BEGIN
		SELECT @Salary=Salary 
		FROM MyEmployees
		WHERE Emp_Name = @Name
	END

DECLARE @Emp_Salary INT 
EXEC spGetEmployeeNameAndShowSalary 'Usman',@Emp_Salary OUTPUT
SELECT @Emp_Salary AS 'Emp_Salary'


SELECT * FROM MyEmployees;
