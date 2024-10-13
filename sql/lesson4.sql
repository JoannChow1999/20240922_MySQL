CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(10),
    age smallint
);


CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id smallint REFERENCES students(student_id),/*欄位constraint,REFERENCES*/
    course_name VARCHAR(20),
    grade VARCHAR(5)
);

INSERT INTO students (name, age) VALUES
    ('張小明', 20),
    ('李美華', 19),
    ('王大寶', 21),
    ('陳雅婷', 20),
    ('林志偉', 22);

INSERT INTO enrollments (student_id, course_name, grade) VALUES
    (1, '資料庫系統', 'A'),
    (1, '程式設計', 'B+'),
    (2, '資料庫系統', 'A-'),
    (2, '網頁設計', 'A'),
    (3, '程式設計', 'B'),
    (3, '資料結構', 'B+'),
    (4, '資料庫系統', 'A+'),
    (4, '作業系統', 'A-'),
    (5, '網頁設計', 'B+'),
    (5, '資料庫系統', 'A-');

SELECT *
FROM enrollments join students on enrollments.student_id = students.student_id

SELECT students.student_id,
	   name,
	   course_name,
	   grade
FROM enrollments join students on enrollments.student_id = students.student_id


SELECT s.student_id AS 學生編號,
	   name AS 學生姓名,
	   age AS AGE,
	   course_name AS 課程名稱,
	   grade AS 成績
FROM enrollments e join students s on e.student_id = s.student_id
WHERE name='張小明'



CREATE TABLE stations(
 station_id SERIAL PRIMARY KEY,
 stationCode VARCHAR(5) UNIQUE NOT NULL,
 station_name VARCHAR(20)NOT NULL,
 name VARCHAR(5),
 stationAddrTw VARCHAR(50),
 stationTel VARCHAR(20),
 gps VARCHAR(30),
 haveBike BOOLEAN
);

SELECT *
FROM stations
WHERE station_name = '後龍'

CREATE TABLE  station_in_out(
 date DATE,
 staCode VARCHAR(5)NOT NULL,
 gateincomingcnt INT ,
 gateoutcomingcnt INT ,
 PRIMARY KEY (date,staCode),
 FOREIGN KEY (staCode) REFERENCES stations(stationCode)
 ON DELETE SET NULL
 ON UPDATE CASCADE
)

SELECT *
FROM station_in_out;

SELECT date AS 日期,
	   gateincomingcnt AS 進站人數,
	   gateoutcomingcnt AS 出站人數,
	   station_name AS 站名,
	   stationaddrtw AS 站址,
	   stationtel AS 電話
FROM station_in_out in_out JOIN stations s ON in_out.stacode = s.stationcode
WHERE station_name = '基隆';

SELECT * FROM public.payment
ORDER BY payment_id ASC;

SELECT customer_id,
		SUM(amount) AS 加總,
		AVG(amount) AS 平均數量,
		COUNT(amount) AS 筆數,
		MAX(amount) AS 最大,
		MIN(amount) AS 最小
FROM payment
GROUP BY customer_id
ORDER BY customer_id ASC;


SELECT customer_id,
		SUM(amount)  加總,
		AVG(amount)  平均數量,
		COUNT(amount)  筆數,
		MAX(amount)  最大,
		MIN(amount)  最小
FROM payment
GROUP BY customer_id
ORDER BY customer_id ASC;

SELECT customer_id,
		SUM(amount) AS 加總,
		AVG(amount) AS 平均數量,
		COUNT(amount) AS 筆數,
		MAX(amount) AS 最大,
		MIN(amount) AS 最小
FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) ASC;

SELECT customer_id,
		SUM(amount) AS 加總,
		AVG(amount) AS 平均數量,
		COUNT(amount) AS 筆數,
		MAX(amount) AS 最大,
		MIN(amount) AS 最小
FROM payment
GROUP BY customer_id
ORDER BY 筆數 ASC;

SELECT *
FROM payment  p JOIN customer c ON p.customer_id = c.customer_id

SELECT (first_name || ''|| last_name) as full_name
FROM payment  p JOIN customer c ON p.customer_id = c.customer_id

SELECT (first_name || ''|| last_name) as full_name ,SUM(amount)as 總和
FROM payment  p JOIN customer c ON p.customer_id = c.customer_id
GROUP BY full_name
ORDER BY 總和 DESC;


/*從PAYMENT資料,取出所有員工的訂單總數*/

--SELECT (staff_id ='1' OR staff_id ='2'),SUM(amount)as 總和
--FROM payment  p JOIN customer c ON p.customer_id = c.customer_id
--GROUP BY staff_id ='1' OR staff_id ='2'
--ORDER BY 總和 DESC;

SELECT staff_id,COUNT(PAYMENT_ID) AS 訂單總和
FROM payment 
GROUP BY staff_id 
ORDER BY 訂單總和

/*取出每個員工,在每一個客戶的訂單金額總合*/

SELECT staff_id, customer_id ,SUM(amount) as 訂單金額總和
FROM payment 
GROUP BY staff_id,customer_id 
ORDER BY staff_id ASC , customer_id ASC

/*取出每日盯單的總和*/

SELECT payment_date :: date AS 日期, SUM(amount) AS 訂單總和
FROM payment
GROUP BY 日期
ORDER BY 訂單總和

SELECT customer_id,SUM(amount) AS 總合
FROM payment
GROUP BY customer_id
HAVING SUM(amount) >200;

SELECT store_id ,COUNT(customer_id) AS 數量
FROM customer
GROUP BY store_id;

SELECT *
FROM country;

SELECT CITY
FROM CITY
WHERE COUNTRY_ID='92'

SELECT CITY
FROM CITY
WHERE COUNTRY_ID = (
	SELECT COUNTRY_ID
	FROM COUNTRY
	WHERE COUNTRY='Taiwan'
)

SELECT *
FROM CITY JOIN COUNTRY ON CITY.COUNTRY_ID = COUNTRY.COUNTRY_ID
WHERE COUNTRY='Taiwan';
