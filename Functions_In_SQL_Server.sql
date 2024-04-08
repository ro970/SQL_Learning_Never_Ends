								/* CREATE A FUNCTION WITHOUT PARAMETER */

CREATE FUNCTION ShowMessage()
RETURNS VARCHAR(50)
AS
	BEGIN
		RETURN 'Welcome To Function'
	END
GO

SELECT dbo.ShowMessage();
GO


								/* CREATE FUNCTION WITH SINGLE PARAMETER */
CREATE FUNCTION TakeANumber(@num INT)
RETURNS INT
AS
	BEGIN
		RETURN (@num * @num)
	END
GO

SELECT dbo.TakeANumber(6) AS 'Square';
GO


								/* CREATE FUNCTION WITH MULTIPLE PARAMETER */
CREATE FUNCTION SumOfTwoNumber(@num INT,@num1 INT)
RETURNS INT
AS
	BEGIN
		RETURN (@num + @num1)
	END
GO

SELECT dbo.SumOfTwoNumber(10,12) AS 'Sum';
GO



								/* ALTERING A FUNCTION  */

ALTER FUNCTION TakeANumber(@num AS INT)
RETURNS INT
AS
	BEGIN
		RETURN (@num * @num * @num);
	END
GO


SELECT dbo.TakeANumber(5);
GO



									/* DROPPING A FUNCTION */

DROP FUNCTION TakeANumber;


									/* USING IF CONDITION IN FUNCTION */

CREATE FUNCTION CheckVotersAge(@num INT)
RETURNS VARCHAR(50)
AS
	BEGIN 
		DECLARE @str VARCHAR(50)

	IF @num >= 18
		BEGIN
			SET @str = 'You are Eligible To Vote';
		END 
	ELSE 
		BEGIN
			SET @str = 'You are Not Eligible To Vote ';
		END
	RETURN @str
END

SELECT dbo.CheckVotersAge(17);


CREATE OR ALTER FUNCTION GetDateAndTime()
RETURNS DATETIME
AS
	BEGIN
		RETURN getdate()
	END

SELECT dbo.GetDateAndTime();