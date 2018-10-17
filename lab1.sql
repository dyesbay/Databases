﻿CREATE DATABASE lab1
WITH OWNER = postgres
CREATE TABLE USERS (
id SERIAL PRIMARY KEY,
firstname VARCHAR(50),
secondname VARCHAR(50)
);
ALTER TABLE USERS
ADD COLUMN isadmin INTEGER;
ALTER TABLE USERS
ALTER COLUMN isadmin SET DATA TYPE BOOLEAN USING isadmin::boolean;
ALTER TABLE USERS
ALTER COLUMN isadmin SET DEFAULT false;
CREATE TABLE tasks (
id SERIAL PRIMARY KEY,
name VARCHAR(50),
user_id INTEGER
);
DROP TABLE IF EXISTS tasks RESTRICT;
DROP DATABASE lab1;