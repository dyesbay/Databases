CREATE DATABASE lab2
CREATE TABLE countries (
country_id SERIAL PRIMARY KEY,
country_name VARCHAR(50),
region_id INTEGER,
population INTEGER
);
SELECT * FROM countries
INSERT INTO countries (country_name, region_id, population) VALUES ('QAZAQSTAN', 1, 17)
INSERT INTO countries (country_id, country_name) VALUES (2, 'RUSSIA')
INSERT INTO countries (region_id) VALUES (NULL) 

INSERT INTO countries (country_name, region_id, population) VALUES ('CHINA', 4, 100), ('USA', 5, 300), ('GERMANY', 6, 400);
ALTER TABLE countries ALTER COLUMN country_name SET DEFAULT 'KAZAKHSTAN'
SELECT * FROM countries_new
INSERT INTO countries (country_name) VALUES (DEFAULT)
INSERT INTO countries  DEFAULT VALUES
CREATE TABLE countries_new (LIKE countries INCLUDING DEFAULTS)
INSERT INTO countries_new SELECT * FROM countries
UPDATE countries SET region_id = 1 WHERE region_id is NULL; 
SELECT * FROM countries
UPDATE countries SET population = population * 1.10 RETURNING  population as NewPopulation;
DELETE FROM countries WHERE population < 100;
DELETE FROM countries_new USING countries WHERE countries_new.country_id = countries.country_id RETURNING * 
DELETE FROM countries RETURNING * 