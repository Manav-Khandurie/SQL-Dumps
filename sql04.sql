CREATE DATABASE IF NOT EXISTS db01;

USE db01;

SELECT now();

SELECT * FROM worker;

SELECT * from worker where id=7;

SELECT * FROM worker where id between 1 AND 3;

SELECT name,department FROM worker WHERE id IN (1,5,7);

SELECT name,department FROM worker WHERE id NOT IN (1,5,7);

SELECT name,department FROM worker WHERE id is NULL;

SELECT name FROM worker WHERE name LIKE '%son';

SELECT name FROM worker WHERE name LIKE '_ob Smith';