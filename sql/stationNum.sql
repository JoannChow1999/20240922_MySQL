CREATE TABLE  StationsNum (
 ID SERIAL PRIMARY KEY, 
 NA VARCHAR(10) NOT NULL UNIQUE,
 CName VARCHAR(10) UNIQUE,
 EName VARCHAR(50) 
); 

