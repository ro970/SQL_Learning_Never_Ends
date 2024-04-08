
DROP TABLE HockeyParticipants;

CREATE TABLE HockeyParticipants(ID INT PRIMARY KEY IDENTITY,C_Name VARCHAR(50) NOT NULL,C_Email VARCHAR(50));

INSERT INTO HockeyParticipants VALUES('Umair Khan','umair123@gmail.com');
INSERT INTO HockeyParticipants VALUES('Usman Khan','uk123@gmail.com');
INSERT INTO HockeyParticipants VALUES('Arman Jatt','aj123@gmail.com');
INSERT INTO HockeyParticipants VALUES('Amir Nasir','Amir123@gmail.com');

CREATE TABLE FootballParticipants(ID INT PRIMARY KEY IDENTITY,C_Name VARCHAR(50) NOT NULL,C_Email VARCHAR(50));


INSERT INTO FootballParticipants VALUES('Ali Mustafq','Ali123@gmail.com');
INSERT INTO FootballParticipants VALUES('Anas Khan','ansak123@gmail.com');
INSERT INTO FootballParticipants VALUES('Umar Jatt','umar123@gmail.com');
INSERT INTO FootballParticipants VALUES('Amir Nasir','Amir123@gmail.com');



SELECT * FROM HockeyParticipants
UNION ALL
SELECT * FROM FootballParticipants;

