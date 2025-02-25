-- CREATE DATABASE
CREATE DATABASE SALES;
USE SALES;

-- CREATE TABLE
CREATE TABLE ORDERS 
(
ORDER_ID INT AUTO_INCREMENT PRIMARY KEY,
CUSTOMER_NAME VARCHAR (100) NOT NULL,
PRODUCT_CATEGORY VARCHAR (100) NOT NULL,
ORDERED_ITEM VARCHAR (100) NOT NULL,
CONTACT_NO VARCHAR (20) UNIQUE
);
DESC ORDERS;

#ADD NEW COLUMN
ALTER TABLE ORDERS
ADD COLUMN ORDER_QUANTITY VARCHAR (200);
DESC ORDERS;

-- RENAME A TABLE
rename table ORDERS to SALES_ORDERS;
DESC SALES_ORDERS;

-- INSERTING VALUES
INSERT INTO SALES_ORDERS
VALUES
(DEFAULT, 'JOHNLUTHER', 'ELECTRONICS', 'MOBILEPHONES', '1236547891', '10'),
(DEFAULT, 'DIANAWICK', 'ELECTRONICS', 'LAPTOP', '7894561237', '20'),
(DEFAULT, 'DAVIDMILLER', 'STATIONARY', 'BOOKS', '4561237891', '15'),
(DEFAULT, 'MIAWILLIAMS', 'ELECTRONICS', 'POWERBANK', '1234562579', '150'),
(DEFAULT, 'EMMAJOHNS', 'STATIONARY', 'PAPER', '1597534568', '200'),
(DEFAULT, 'JAMESBROWN', 'ELECTRONICS', 'CPU', '123789451', '20'),
(DEFAULT, 'OLIVIA', 'ELECTRONICS', 'MOBILEPHONES', '438759241', '10'),
(DEFAULT, 'MICHAELMARTINEZ', 'ELECTRONICS', 'MOUSE', '4625798410', '45'),
(DEFAULT, 'AVATYLOR', 'STATIONARY', 'PEN', '1047536980', '150'),
(DEFAULT, 'ETHANWHITE', 'ELECTRONICS', 'EARBUDS', '1204789512', '350');
SELECT * FROM SALES_ORDERS;

SELECT * FROM SALES_ORDERS WHERE ORDER_ID = 5;

SELECT CUSTOMER_NAME FROM SALES_ORDERS;
SELECT ORDERED_ITEM FROM SALES_ORDERS;

#UPDATE 
UPDATE SALES_ORDERS
SET ORDERED_ITEM = 'HARDWARE' WHERE ORDER_ID = 6;

SELECT * FROM SALES_ORDERS;

-- REMOVE TABLE FROM DATABASE
DROP TABLE SALES_ORDERS;
