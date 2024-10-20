/*全省各站點2022年進站人數*/

SELECT station_name AS 站名 , SUM(gateincomingcnt) AS 進站總人數
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE date BETWEEN '2022-01-01' AND '2022-12-31'
/* WHERE EXTRACT(YEAR FROM date) = 2022 */
GROUP BY station_name
ORDER BY 進站總人數 DESC;

/*全省各站點2022年進站人數大於5百萬人的站點*/

SELECT station_name AS 站名 , SUM(gateincomingcnt) AS 進站總人數
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE date BETWEEN '2022-01-01' AND '2022-12-31'
/* WHERE EXTRACT(YEAR FROM date) = 2022 */
GROUP BY station_name
HAVING SUM(gateincomingcnt) >= 5000000
ORDER BY 進站總人數 DESC;

/*基隆火車站2020年,每月份進站人數*/

SELECT station_name AS 站名 , TO_CHAR(date,'YYYY-MM') AS 日期, SUM(gateincomingcnt) AS 當月進站總人數
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE date BETWEEN '2020-01-01' AND '2020-12-31' 
AND station_name  = '基隆'
GROUP BY 站名,日期;

/*基隆火車站2020年,每月份進站人數,由多至少*/

SELECT station_name AS 站名 , TO_CHAR(date,'YYYY-MM') AS 日期, SUM(gateincomingcnt) AS 當月進站總人數
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE date BETWEEN '2020-01-01' AND '2020-12-31' 
AND station_name  = '基隆'
GROUP BY 站名,日期
ORDER BY 當月進站總人數 DESC;

/*基隆火車站2020,2021,2022,每年進站人數*/

SELECT station_name AS 站名 , EXTRACT(YEAR FROM date) AS 年分 ,SUM(gateincomingcnt) AS 每年進站總人數
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE EXTRACT(YEAR FROM date) IN ( 2020,2021,2022)
AND station_name  = '基隆'
GROUP BY 站名,年分;

SELECT station_name AS 站名 , TO_CHAR(date,'YYYY') AS 年分 ,SUM(gateincomingcnt) AS 每年進站總人數
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE (date BETWEEN '2020-01-01' AND '2022-12-31')
AND station_name  = '基隆'
GROUP BY 站名,年分;


/*基隆火車站,臺北火車站2020,2021,2022,每年進站人數*/

SELECT station_name AS 站名 , EXTRACT(YEAR FROM date) AS 年分 ,SUM(gateincomingcnt) AS 每年進站總人數
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE EXTRACT(YEAR FROM date) IN ( 2020,2021,2022)
AND station_name  IN  ('基隆','臺北')
GROUP BY 站名,年分;

/*SUB 進站人數最多的一筆*/

SELECT station_name AS 站名 , gateincomingcnt AS 進站總人數
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE gateincomingcnt = (
      SELECT MAX(gateincomingcnt) 
	  FROM  station_in_out	  
);

/*SUB 各站點進站人數最多的一筆*/

SELECT *
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE (station_name,GAteincomingcnt) IN  (
      SELECT station_name AS 站名,MAX(gateincomingcnt) AS 最多人數
	  FROM  stations JOIN station_in_out ON stationcode = stacode 
	  GROUP BY 站名
)
 ORDER BY gateincomingcnt ;


 SELECT *
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE station_name = (
      SELECT DISTINCT station_name
	  FROM stations
	  )
AND 	  
WHERE gateincomingcnt = (
      SELECT MAX(gateincomingcnt) 
	  FROM  station_in_out	  
);


