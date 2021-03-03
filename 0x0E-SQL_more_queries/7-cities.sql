-- Script that creates the database hbtn_0d_usa and the table cities
-- (in the database hbtn_0d_usa)
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;
-- State_id INT, can’t be null and must be a FOREIGN KEY that references
-- to id of the states table
CREATE TABLE IF NOT EXISTS hbtn_0d_usa.cities
(
	id INT UNIQUE AUTO_INCREMENT NOT NULL PRIMARY KEY,
	state_id INT NOT NULL,
	name VARCHAR(256) NOT NULL,
	FOREIGN KEY (state_id) REFERENCES states(id)
);
