use hexa_batch6;

drop table if exists Employ;

Create Table Employ
(
   Empno INT Primary Key auto_increment,
   Name varchar(30),
   Gender ENUM('MALE','FEMALE'),
   Dept varchar(30),
   Desig varchar(30),
   Basic Numeric(9,2)
);

Insert INTO Employ(Name, Gender, Dept, Desig, Basic) 
		values('Aditis','FEMALE','Java','Developer',84823),
        ('Ravi Prasanna','MALE','Sql','Manager',98423),
        ('Santosh','MALE','Java','Expert',88422),
        ('Hasha Sree','FEMALE','Sql','Developer',88423),
        ('Manali','FEMALE','Java','Programmer',88324),
        ('Sriram varma','MALE','Dotnet','Programmer',84823); 

select * from Employ;


