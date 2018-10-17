CREATE DATABASE lab5;
CREATE TABLE customers (
customer_id INTEGER PRIMARY KEY,
cust_name VARCHAR(50),
city VARCHAR(50),
grade INTEGER,
salesman_id INTEGER
);
INSERT INTO customers (customer_id,cust_name,city,grade,salesman_id) VALUES (3002, 'Nick', 'New York', 100, 5001),(3005, 'Gragh', 'California', 120, 5002);
INSERT INTO orders VALUES (1, 3002, 'sos', 5001) , (2, 3005, 'sos1', 5002);

SELECT * FROM customers WHERE grade > 100;
SELECT * FROM customers WHERE grade > 100 AND city = 'New York';
SELECT * FROM customers WHERE city = 'New York' OR grade > 100;
SELECT * FROM customers WHERE city = 'Rome' OR city = 'Paris;
SELECT * FROM customers WHERE city LIKE 'B%';

CREATE TABLE orders (
order_id SERIAL PRIMARY KEY,
customer_id INTEGER REFERENCES customers(customer_id),
descrtiption VARCHAR(50),
purch_amt INTEGER
);
SELECT * FROM orders WHERE customer_id IN (SELECT customer_id FROM customers WHERE city = 'New York');
SELECT * FROM customers WHERE customer_id IN (SELECT customer_id FROM orders WHERE purch_amt > 10);
SELECT sum(purch_amt) FROM orders;
SELECT avg(purch_amt) FROM orders;
SELECT * FROM customers WHERE cust_name IS NOT NULL;
SELECT max(purch_amt) FROM orders;