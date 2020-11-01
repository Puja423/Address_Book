Create Database Address_Book_Service;
Use Address_Book_Service;

Select DB_NAME()
Create TABLE ADDRESS_BOOK
(
FIRSTNAME VARCHAR(25) not null,
LASTNAME VARCHAR(25) not null,
ADDRESS VARCHAR(25) not null,
CITY VARCHAR(25) not null,
ZIP VARCHAR(25) not null,
PHONE VARCHAR(25) not null,
EMAIL VARCHAR(25) not null,
)
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='ADDRESS_BOOK';

INSERT INTO ADDRESS_BOOK VALUES
('KAMINEE','UIKEY','MPNAGAR','SEONI','12345','9835456632','KAMINEE123@GMAIL.COM'),
('RANI','AHIRWAR','CAMPUS' ,'BHOPAL','462003','6789765643','ABCDSWRT@GMAIL.COM')

SELECT *FROM ADDRESS_BOOK;
UPDATE ADDRESS_BOOK  SET CITY = 'LUCKNOW' WHERE  FIRSTNAME = 'KAMINEE'
SELECT * FROM ADDRESS_BOOK;

SELECT *FROM ADDRESS_BOOK;
DELETE ADDRESS_BOOK WHERE FIRSTNAME = 'KAMINEE';
SELECT *FROM ADDRESS_BOOK;