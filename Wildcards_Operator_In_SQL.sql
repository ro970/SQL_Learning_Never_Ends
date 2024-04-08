SELECT * FROM MyEmployees;

					/* STARTING WITH A */
SELECT * FROM MyEmployees WHERE Emp_Name LIKE 'a%';

					/* ENDING WITH A */
SELECT * FROM MyEmployees WHERE Emp_Name LIKE '%a';

					/* COMES IN BETWEEN SA */
SELECT * FROM MyEmployees WHERE Emp_Name LIKE '%us%';

					/* COMES TOTAL ELEMENT WITH CHARACTERS */
SELECT * FROM MyEmployees WHERE Emp_Name LIKE 'a___';

SELECT * FROM MyEmployees WHERE Emp_Name LIKE '__a';

SELECT * FROM MyEmployees WHERE Emp_Name LIKE '[A-S]%';

