-- Script that lists the number of records with the same score in the
-- table second_table of the database hbtn_0c_0 in your MySQL
SELECT score, COUNT(id) AS number FROM second_table GROUP BY score DESC;
