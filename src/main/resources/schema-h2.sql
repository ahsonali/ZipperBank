DROP TABLE IF EXISTS ACCOUNT;

CREATE TABLE ACCOUNT (
  ID INT NOT NULL AUTO_INCREMENT,
  TYPE VARCHAR2(255) NOT NULL DEFAULT '',
  NICKNAME VARCHAR2(255) NOT NULL DEFAULT '',
  REWARDS INT DEFAULT NULL,
  BALANCE DOUBLE DEFAULT NULL,
  CUSTOMER VARCHAR2(255) NOT NULL DEFAULT '',
  PRIMARY KEY (ID));

DROP TABLE IF EXISTS CUSTOMER;

CREATE TABLE CUSTOMER (
ID INT NOT NULL AUTO_INCREMENT,
FIRST_NAME VARCHAR(255),
LAST_NAME VARCHAR(255));



DROP TABLE IF EXISTS ADDRESS;

CREATE TABLE ADDRESS (
 ID INT NOT NULL AUTO_INCREMENT,
 STREET_NUMBER VARCHAR(255),
 STREET_NAME VARCHAR(255),
 CITY VARCHAR(255),
 STATE VARCHAR (2),
 ZIP NVARCHAR(5));



DROP TABLE IF EXISTS BILL;

CREATE TABLE BILL (
ID INT NOT NULL AUTO_INCREMENT,
STATUS VARCHAR (255),
PAYEE VARCHAR (255),
NICKNAME VARCHAR (255),
CREATION_DATE VARCHAR (255),
PAYMENT_DATE VARCHAR (255),
RECURRING_DATE VARCHAR (255),
UPCOMING_PAYMENT_DATE VARCHAR(255),
PAYMENT_AMOUNT DOUBLE (2),
ACCOUNT_ID INT,
PRIMARY KEY (ID),
FOREIGN KEY (ACCOUNT_ID) REFERENCES ACCOUNT(ID)
);

DROP TABLE IF EXISTS DEPOSIT;

CREATE TABLE DEPOSIT (
  ID INT NOT NULL AUTO_INCREMENT,
  TYPE VARCHAR(255),
  TRANSACTION_DATE VARCHAR(255),
  STATUS VARCHAR(255),
  PAYEE_ID INT,
  MEDIUM VARCHAR(255),
  AMOUNT DOUBLE,
  DESCRIPTION TEXT);


DROP TABLE IF EXISTS WITHDRAWAL;

CREATE TABLE WITHDRAWAL (
  ID INT NOT NULL AUTO_INCREMENT,
  TYPE VARCHAR(255),
  TRANSACTION_DATE VARCHAR(255),
  STATUS VARCHAR(255),
  PAYER_ID INT,
  MEDIUM VARCHAR(255),
  AMOUNT DOUBLE,
  DESCRIPTION TEXT);



