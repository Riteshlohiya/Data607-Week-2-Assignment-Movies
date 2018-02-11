-- loadflights.sql

DROP TABLE IF EXISTS demo;
DROP TABLE IF EXISTS ratings;

CREATE TABLE demo (
  name varchar(30) NOT NULL,
  name_id varchar(3) PRIMARY KEY,
  state varchar(02) NOT NULL,
  age integer
  );
  
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/flights/demo.csv' 
INTO TABLE demo 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


CREATE TABLE ratings (
   name_id varchar(3),
  movie_name varchar(30) NOT NULL,
  rating integer
  );
  
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/flights/ratings.csv' 
INTO TABLE ratings
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


SELECT 'demo', COUNT(*) FROM demo
  UNION
SELECT 'ratings', COUNT(*) FROM ratings;
  

