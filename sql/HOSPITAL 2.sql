drop table if exists HOSPITAL;

CREATE TABLE IF NOT EXISTS HOSPITAL (
    id SERIAL PRIMARY KEY,
    state VARCHAR(5) NOT NULL,
    name VARCHAR(30) NOT NULL UNIQUE,
	phone VARCHAR(15),
	ext VARCHAR(7),
	contact VARCHAR(5),
	address VARCHAR(50)
     );

	 /**/
CREATE TABLE IF NOT EXISTS Weather (
    id SERIAL PRIMARY KEY,
	city VARCHAR(5) NOT NULL,
    startDate timestamp,
    endDate timestamp,
	hight real,
	low real,
	status VARCHAR(20)
     );

/**/

CREATE TABLE IF NOT EXISTS StationNumber (
    id SERIAL PRIMARY KEY,
	stationnum INTEGER NOT NULL UNIQUE,
    stationCHINESE VARCHAR(5) UNIQUE,
	stationENGLISH VARCHAR(50) UNIQUE
	);