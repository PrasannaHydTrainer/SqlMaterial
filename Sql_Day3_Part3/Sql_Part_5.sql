drop database if exists batch6_Practice3;

create database batch6_practice3;

use batch6_practice3;

Create Table Employ
(
  Empno INT Auto_increment Primary Key,
  Name varchar(30),
  Salary numeric(9,2)
);

-- Change the Size of Name field to 20 chars 

alter table Employ modify name varchar(20);

Desc Employ;

-- How to add new field to the table (Gender)

alter table Employ add Gender ENUM('MALE','FEMALE');

alter table Employ Drop Column gender;

