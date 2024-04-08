CREATE TABLE Students_Tbl_Khi(S_Name VARCHAR(50),Father_Name VARCHAR(50),Age INT,Class INT);

INSERT INTO Students_Tbl_Khi VALUES ('Amjad','Muneer',13,7);
INSERT INTO Students_Tbl_Khi VALUES('Osama','Noman',12,6);
INSERT INTO Students_Tbl_Khi VALUES('Fawad','Nasir',14,8);
INSERT INTO Students_Tbl_Khi VALUES('Shoaib','Anwar',11,4);
INSERT INTO Students_Tbl_Khi VALUES('Farhan','Ahmed',14,8);

SELECT * FROM Students_Tbl_Khi;

CREATE TABLE Students_Tbl_Hyd(S_id INT IDENTITY,S_Name VARCHAR(50),Father_Name VARCHAR(50),Age INT,Class INT);

INSERT INTO Students_Tbl_Hyd VALUES ('Amir','Munawwar',15,9);
INSERT INTO Students_Tbl_Hyd VALUES('Hassan','Mjeed',14,8);

SELECT * FROM Students_Tbl_Hyd;


INSERT INTO Students_Tbl_Hyd SELECT * FROM Students_Tbl_Khi;


INSERT INTO Students_Tbl_Hyd (S_Name,Father_Name) 
SELECT S_Name,Father_Name FROM Students_Tbl_Khi ;
