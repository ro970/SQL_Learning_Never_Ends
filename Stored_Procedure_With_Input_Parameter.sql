CREATE TABLE Employee_Details(Emp_ID INT,Emp_Name VARCHAR(50),Gender VARCHAR(50),Salary INT,City VARCHAR(50));

SELECT * FROM Employee_Details;

INSERT INTO Employee_Details VALUES(1,'Ali','Male',11000,'Hyderabad');
INSERT INTO Employee_Details VALUES(3,'Anum','Female',11500,'Sukur');
INSERT INTO Employee_Details VALUES(4,'Osama','Male',14000,'Hyderabad');
INSERT INTO Employee_Details VALUES(6,'Shumala','Female',12500,'Sukur');
INSERT INTO Employee_Details VALUES(7,'Ahmed','Male',8000,'Hyderabad');
INSERT INTO Employee_Details VALUES(9,'Maryam','Female',12500,'Sukur');


							/* CREATING A STORED PROCEDURE WITHOUT PASSING ANY PARAMETER */
CREATE PROCEDURE spGetEmployees
AS
BEGIN
		SELECT Emp_Name,Gender FROM Employee_Details
END

EXEC spGetEmployees;

							/*  CREATING A STORED PROCEDURE WITH SINGLE PARAMETER  */


CREATE PROCEDURE spGetEmployessById
@id INT
AS
BEGIN
	SELECT * FROM Employee_Details WHERE Emp_ID = @id;
END

EXEC spGetEmployessById 3;

							/*  CREATING A STORED PROCEDURE WITH MULTIPLE PARAMETER  */

CREATE PROCEDURE spGetEmployessByIdAndName
@id INT,
@Emp_Name VARCHAR(50)
AS
	BEGIN
		SELECT * FROM Employee_Details WHERE Emp_ID = @id AND Emp_Name = @Emp_Name;
	END

EXEC spGetEmployessByIdAndName 9,'Maryam';

							/* USING ALTERING CHANGING IN STORED PROCEDURE */
ALTER PROCEDURE spGetEmployessByIdAndName
@id INT,
@Emp_Name VARCHAR(50)
AS
	BEGIN
		SELECT Emp_Name,Salary FROM Employee_Details WHERE Emp_ID = @id AND Emp_Name = @Emp_Name;
	END

EXEC spGetEmployessByIdAndName 9,'Maryam';

							/* USING WITH ENCRYPTION NO ONE ALLOWED TO SEE CODE */
ALTER PROCEDURE spGetEmployessByIdAndName
@id INT,
@Emp_Name VARCHAR(50)
WITH ENCRYPTION
AS
	BEGIN
		SELECT Emp_Name,Salary FROM Employee_Details WHERE Emp_ID = @id AND Emp_Name = @Emp_Name;
	END

EXEC spGetEmployessByIdAndName 9,'Maryam';

						/* THIS COMMAND IS USED TO CHECK THE QUERY OF ANY CREATED STORD PROCEDURE */
sp_helptext spGetEmployessByIdAndName;

							/* TO DELETE STORED PROCEDURE FROM SYSTEM */

DROP PROCEDURE spGetEmployessByIdAndName;