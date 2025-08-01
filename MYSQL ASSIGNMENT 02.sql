create database Suriya
use Suriya

CREATE TABLE Stud(
reg_no INT PRIMARY KEY,
name VARCHAR(10) NOT NULL,
department VARCHAR(40) NOT NULL,
year INT NOT NULL);

INSERT INTO Stud(reg_no,name,department,year) VALUES(
111,'aarthi','Computer Science',4),
(519,'vijay','Computer Science',4),
(160,'suji','Information Technology',3),
(165,'vasu','Cyber Security',2);

SELECT*FROM Stud;

UPDATE Stud
SET name='eswari',
department='MBA',
year=2 WHERE reg_no=111;

UPDATE Stud
SET name='pavi',
department='IT',
year=3 WHERE reg_no=519;

INSERT INTO Stud(reg_no,name,department,year)
VALUES(145,'harini','MSC CS',2);

SELECT COUNT(*) AS tot_Student FROM Stud;

SELECT MAX(year) AS max_yr FROM Stud;
SELECT MIN(year) AS min_yr FROM Stud;

SELECT AVG(year) AS av_yr FROM Stud;

SELECT department,COUNT(*) AS dept_count FROM Stud GROUP BY department;


SELECT department,MAX(year) AS max_yr FROM Stud
GROUP BY department;

SELECT*FROM Stud
ORDER BY year ASC;


SELECT*FROM Stud
ORDER BY name;

SELECT*FROM Stud
ORDER BY department DESC;

SELECT UPPER(department) AS dep_upr FROM Stud;
SELECT LOWER(department) AS dep_low FROM Stud;

SELECT UPPER(name) AS name_up FROM Stud;
SELECT LOWER(name) AS name_lo FROM Stud;

SELECT LEFT(name,3) AS srt FROM Stud;
SELECT RIGHT(name,4) AS srt FROM Stud;
SELECT MIDDLE(name,3) AS srt FROM Stud;

SELECT name,LENGTH(name) AS name_ln FROM Stud;

SELECT CONCAT(name,' - ',department) AS combine
FROM Stud;

SELECT name,year,year+1 AS nx_yr FROM Stud;

SELECT reg_no,MOD(reg_no,2) AS odr FROM Stud; 

ALTER TABLE Stud
ADD Date_Detail DATE;

SELECT*FROM Stud;

UPDATE Stud SET Date_Detail='2020-08-01' WHERE reg_no=111;

UPDATE Stud SET Date_Detail='2020-08-03' WHERE reg_no=145;

UPDATE Stud SET Date_Detail='2020-08-24' WHERE reg_no=160;

UPDATE Stud SET Date_Detail='2020-08-21' WHERE reg_no=165;

UPDATE Stud SET Date_Detail='2020-08-30' WHERE reg_no=519;

ALTER TABLE Stud
DROP COLUMN phone_num;

ALTER TABLE stud
ADD phone_num VARCHAR(13);

UPDATE stud
 SET  phone_num ='9597912166' WHERE reg_no=111;
 
UPDATE  stud
SET phone_num='9790188679' WHERE reg_no =145;

UPDATE  stud
SET phone_num='9944569188' WHERE reg_no =160;

UPDATE stud
SET phone_num = '9361195063' WHERE reg_no = 165;
UPDATE stud
SET phone_num = '9361195063' WHERE reg_no = 519;

SELECT CURDATE();
SELECT CURTIME();

SELECT reg_no,name,year(Date_Detail) AS yr FROM Stud;


