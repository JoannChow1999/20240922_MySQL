CREATE TABLE StationsNum (
ID SERIAL PRIMARY KEY,
NA VARCHAR(10) NOT NULL UNIQUE,
CName VARCHAR(10) UNIQUE,
EName VARCHAR(50)
);

ALTER TABLE StationsNum
ALTER COLUMN CName type VARCHAR(20);

SELECT na,cname
FROM stationsnum;

SELECT id as 序號, na as 代碼, cname as 車站名稱, ename as 英文名稱
FROM stationsnum;

SELECT id as 序號, na as 代碼, cname as 車站名稱, ename as 英文名稱
FROM stationsnum
WHERE na = '1001' or na = '1002';

SELECT id as 序號, na as 代碼, cname as 車站名稱, ename as 英文名稱
FROM stationsnum
WHERE na IN ('1001' , '1002');

SELECT id as 序號, na as 代碼, cname as 車站名稱, ename as 英文名稱
FROM stationsnum
WHERE na = '1001' or cname = '八堵';

SELECT id , na , cname , ename 
FROM stationsnum
WHERE na = '1001' or cname = '八堵';

SELECT id , na , cname , ename 
FROM stationsnum
WHERE cname LIKE '台_';

SELECT id , na , cname , ename 
FROM stationsnum
WHERE cname LIKE '台%';

SELECT id , na , cname , ename 
FROM stationsnum
WHERE cname LIKE '%港';

SELECT id , na , cname , ename 
FROM stationsnum
WHERE id <= '10';

SELECT id , na , cname , ename 
FROM stationsnum
WHERE id < '10' OR id > '20';

SELECT id , na , cname , ename 
FROM stationsnum
WHERE id BETWEEN 10 AND 20;

SELECT id , na , cname , ename 
FROM stationsnum
ORDER BY na DESC;

SELECT id , na , cname , ename 
FROM stationsnum
ORDER BY ename;

SELECT id , na , cname , ename 
FROM stationsnum
ORDER BY ename
LIMIT 10;

CREATE TABLE student(
  student_id SERIAL,
  name VARCHAR(20),
  major VARCHAR(20),
  PRIMARY KEY(student_id)
)

SELECT *
FROM student;

INSERT INTO student(name,major)
VALUES('小白','歷史');

INSERT INTO student2(major,name)
VALUES('生物','小黑');

INSERT INTO student2(major,name)
VALUES(NULL,'小藍');

/**/

CREATE TABLE student2(
	student_id SERIAL,
	name VARCHAR(20),
	major VARCHAR(20),
	PRIMARY KEY(student_id)
);

SELECT *
FROM student2;

/*新增資料*/
INSERT INTO student2(name,major)
VALUES('小白','歷史');

INSERT INTO student2(major,name)
VALUES('生物','小黑');

INSERT INTO student2(major,name)
VALUES(NULL,'小藍');

INSERT INTO student2(major,name)
VALUES('生物','小線'),('歷史','小綠')
RETURNING * ;

UPDATE
SET
WHERE

DELETE FROM
WHERE

CREATE TABLE student3(
	student_id SERIAL,
	name VARCHAR(20),
	major VARCHAR(20),
	score VARCHAR(20),
	PRIMARY KEY(student_id)
);

INSERT INTO student3 VALUES(1,'小白','英語',50);
INSERT INTO student3 VALUES(2,'小黃','生物',90);
INSERT INTO student3 VALUES(3,'小綠','歷史',70);
INSERT INTO student3 VALUES(4,'小藍','英語',80);
INSERT INTO student3 VALUES(5,'小黑','化學',20);

INSERT INTO student3
VALUES (1, '小白','英語',50),
	   (2, '小黃','生物',90),
	   (3, '小綠','歷史',70),
	   (4, '小藍','英語',80),
	   (5, '小黑','化學',20)
RETURNING *;
	  

SELECT *
FROM student3;

DROP IF EXISTS student3;

DELETE FROM student3;

DELETE FROM student3
WHERE name LIKE '小_';

UPDATE student3
SET major = '英語文學'
WHERE major = '英語'
RETURNING* ;

UPDATE student3
SET  major = '生化'
WHERE major = '生物' OR major = '化學'
RETURNING *



