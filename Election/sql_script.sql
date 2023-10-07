CREATE DATABASE IF NOT EXISTS election;

USE election;

CREATE TABLE IF NOT EXISTS election.election_result(
	ballot_id INT NOT NULL PRIMARY KEY,
    county VARCHAR(50) NOT NULL,
    candidate VARCHAR(200)
    );
    


-- Loading CSV file from the MySQL upload directory    
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/election_data.csv' 
INTO TABLE election_result 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS (`Ballot ID`, `County`, `Candidate`)
