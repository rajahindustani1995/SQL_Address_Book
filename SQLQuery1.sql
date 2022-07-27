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

-------UC3 Insert Contacts into AddressBook table------
insert into AddressBook values
('Ashish', 'Sutar', 'Katraj', 'Pune', 'Maharashtra', 411058, 9545443210, 'ashish.sutar@gmail.com'),
('Sam', 'Lodha', 'Kalleshwara', 'Allipura', 'Karnataka', 583219, 8362331741, 'sam.lodha@gmail.com'),
('Pooja', 'Patil', 'Nerul', 'Navi Mumbai', 'Maharashtra', 400041, 8342587361, 'pooja.patil@gmail.com');