Create Database Address_Book_Service;
Use Address_Book_Service;

Select DB_NAME()
Create TABLE ADDRESS_BOOK
(
FIRSTNAME VARCHAR(25) not null,
LASTNAME VARCHAR(25) not null,
ADDRESS VARCHAR(25) not null,
CITY VARCHAR(25) not null,
STATE VARCHAR(25) NOT NULL,
ZIP VARCHAR(25) not null,
PHONE VARCHAR(25) not null,
EMAIL VARCHAR(25) not null,
)
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='ADDRESS_BOOK';

INSERT INTO ADDRESS_BOOK VALUES
('KAMINEE','UIKEY','MPNAGAR','SEONI','MP','12345','9835456632','KAMINEE123@GMAIL.COM'),
('RANI','AHIRWAR','MANIT' ,'BHOPAL','UP','462003','6789765643','ABCDSWRT@GMAIL.COM')

SELECT *FROM ADDRESS_BOOK;
UPDATE ADDRESS_BOOK  SET CITY = 'LUCKNOW' WHERE  FIRSTNAME = 'KAMINEE'
SELECT * FROM ADDRESS_BOOK;

SELECT *FROM ADDRESS_BOOK;
DELETE FROM ADDRESS_BOOK WHERE FIRSTNAME = 'KAMINEE';
SELECT *FROM ADDRESS_BOOK;

alter table Address_Book
add Contact_Type varchar(20)
--Update Contacts for contact_type
update Address_Book set Contact_Type ='Friends' where FirstName in ('Bill', 'Terrisa', 'Priyanka');
update Address_Book set Contact_Type ='Family' where FirstName in ('Leena','Karishma');
update Address_Book set Contact_Type ='Professional' where FirstName='Rakhi';
select * from Address_Book;
--Add Book_Name attribute to address_book
alter table Address_Book
add Book_Name varchar(20)
--Update Contacts for book_name
update Address_Book set  Book_Name ='Office' where FirstName in ('Bill', 'Terrisa', 'Priyanka', 'Rakhi');
update Address_Book set  Book_Name ='Home' where FirstName in ('Leena','Karishma');
select * from Address_Book;
--Count contacts by contact type
select Contact_Type, COUNT(Contact_Type) from Address_Book
group by Contact_Type
insert into Address_Book values
('Bill','Jones','Street 4','Mumbai','Maharashtra','452856','9856985696','billjones@gmail.com','Family','Home');
