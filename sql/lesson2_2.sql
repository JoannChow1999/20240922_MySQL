DROP TABLE  IF EXISTS HOSPITAL;

/*城市,啟始時間,結束時間,最高溫度,最低溫度,感覺*/

CREATE TABLE IF NOT EXISTS weather(
    id SERIAL PRIMARY KEY,
	city VARCHAR(20) NOT NULL,
    startDate timestamp,
	endDate timestamp,
	hight real,
	low real,
	status VARCHAR(20)
);