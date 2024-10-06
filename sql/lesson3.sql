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

