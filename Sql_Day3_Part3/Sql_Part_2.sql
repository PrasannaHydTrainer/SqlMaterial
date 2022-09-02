use hexa_batch6;

Drop Table If Exists LeaveDetails;

Drop Table if exists EmployNew;

Create Table EmployNew
(
   Empno INT primary key auto_increment,
   Name varchar(30) NOT NULL,
   Gender ENUM('MALE','FEMALE'),
   Dept varchar(30),
   Desig varchar(30),
   Basic Numeric(9,2)
);

Insert into EmployNew(Name, Gender, Dept, Desig, Basic) 
values('Rajeshwari','FEMALE','Java','Programmer',84823),
('Prasad Patil','MALE','Sql','Developer',88423),
('Sai Pavan','MALE','Java','Expert',88343),
('Solomon','MALE','Sql','Manager',88423),
('Shikha','FEMALE','Java','Expert',88324);

select * from EmployNew;

Create Table LeaveDetails 
(
    LeaveID INT Primary key auto_increment,
    Empno INT,
    LeaveAvail INT,
    LeaveTaken INT,
    LossofPay INT,
    Constraint Foreign Key(Empno) References Employnew(Empno)
);

Insert into LeaveDetails(Empno, LeaveAvail, LeaveTaken, LossOfPay)
values(1,2,3,1000),
      (2,3,3,0),
	  (1,2,2,0),
	  (2,3,5,3000),
	  (1,3,3,0);
     -- (6,6,6,0);
      
select * from LeaveDetails;
