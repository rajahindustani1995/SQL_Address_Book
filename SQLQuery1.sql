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

-------UC4 Edit contacts in AddressBook table using their name------
update AddressBook set Phone = 89767364703 where FirstName = 'Sam';

-------UC5 Detele contact using first name-------
delete from AddressBook where FirstName = 'Pooja';

-------UC6 Retrieve person belonging to City or State from the AddressBook-----
select * from AddressBook where City = 'Pune';

select * from AddressBook where State = 'Karnataka';

--------UC7 size of AddressBook table by City and State------
------Insert Deleted Contacts-----
insert into AddressBook values
('Pooja', 'Patil', 'Nerul', 'Navi Mumbai', 'Maharashtra', 400041, 8342587361, 'pooja.patil@gmail.com');

-- size by City
select City, count(City) as 'Total Contacts' from AddressBook group by City;

-- size by State
select State, count(State) as 'Total Contacts' from AddressBook group by State;

-------UC8 retrieve entries sorted alphabetically by name for a given city------
------Insert new contact details
insert into AddressBook values
('Priya', 'Tupe', 'Karad', 'Pune', 'Maharashtra', 411067, 8434254340, 'priya.tupe@gmail.com');
select * from AddressBook;

select * from AddressBook where City = 'Pune' order by FirstName;
-------For Learning trail by State 
select * from AddressBook where State = 'Maharashtra' order by FirstName;

-------UC9 Add Type of Contact in AddressBook Table-------
Alter table AddressBook add Type varchar(200);

update AddressBook set Type='Friends' where FirstName='Ashish';
update AddressBook set Type='Proffession' where FirstName='Sam';
update AddressBook set Type='Friends' where FirstName='Pooja';
update AddressBook set Type='Family' where FirstName='Priya';

-------UC10 Count Number of contacts in AddressBook-------
select count(Type) as NumberOfPersons from AddressBook;

------UC11 Add contact in both Friends And Family-------
insert into AddressBook(FirstName,LastName,Address,City,State,Zip,Phone,Email,Type) 
values('Pramod', 'Ambavale', 'Chembur', 'Mumbai', 'Maharashtra', 400034, 9865443486, 'pramod.ambavale@gmail.com', 'Friends'),
('Pramod', 'Ambavale', 'Chembur', 'Mumbai', 'Maharashtra', 400034, 9865443486, 'pramod.ambavale@gmail.com','Family');

select * from AddressBook;