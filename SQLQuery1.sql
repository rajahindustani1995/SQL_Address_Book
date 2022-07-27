----------Address Book System Database-----------
------UC1 Create Address Book Service database--------
create database Address_Book_Service;
use Address_Book_Service;

----UC2 Create Table----
create table AddressBook
(FirstName varchar(50) not null,
LastName varchar(50) not null,
Address varchar(50) not null,
City varchar(50) not null,
State varchar(50) not null,
Zip int not null,
Phone bigint not null,
Email varchar(50) not null);

select * from AddressBook;