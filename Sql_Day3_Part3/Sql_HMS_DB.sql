drop database if exists hms;

create database hms;

use hms;

Drop Table If Exists ROOM_ALLOCATION;

drop table if exists PATIENT_MASTER;

drop table if exists Doctor_Master;

create table Doctor_Master
(
   Doctor_id varchar(15) primary key,
   Doctor_Name varchar(15),
   Dept varchar(15)
);

Insert into Doctor_Master(Doctor_id,Doctor_name,Dept)
values('D0001','Ram','ENT'),
('D0002','Ranjan','ENT'),
('D0003','Smita','Eye'),
('D0004','Bhavan','Surgery'),
('D0005','Sheela','Surgery'),
('D0006','Nethra','Surgery');

select * from Doctor_master;

Drop table if exists Room_Master;

Create table Room_Master
(
   Room_no varchar(15) primary key,
   room_type varchar(15),
   status varchar(15)
);

Insert into Room_Master(Room_no,Room_Type,Status)
values('R0001','AC','Occupied'),
('R0002','Suite','Vacant'),
('R0003','NonAC','Vacant'),
('R0004','NonAC','Occupied'),
('R0005','AC','Vacant'),
('R0006','AC','Occupied');

select * from ROOM_Master;

Create table PATIENT_MASTER
(
   PID varchar(15) Primary key,
   Name varchar(15),
   Age INT,
   Weight numeric(9,2),
   Gender ENUM('M','F'),
   Address varchar(50),
   PhoneNo varchar(10),
   Disease varchar(50),
   Doctor_id varchar(15),
   constraint foreign key(Doctor_Id) References Doctor_Master(Doctor_Id)
);

Insert into PATIENT_MASTER(Pid,Name,Age,Weight,gender,Address,PhoneNo,
Disease,Doctor_Id) 
values('P0001','Gita',35,65,'F','Chennai','9867145678','Eye Infection',
'D0003'),
('P0002','Ashish',40,70,'M','Delhi','9845675678','Asthama','D0003'),
('P0003','Radha',25	,60,'F','Chennai','9867166678','Pain in Heart','D0005'),
('P0004','Chandra',28,55,'F','Bangalore','9978675567','Asthama','D0001'),
('P0005','Goyal',42,65,'M','Delhi','8967533223','Pain in Stomach','D0004');

select * from PATIENT_MASTER;

Create table ROOM_ALLOCATION
(
    Room_No varchar(15),
    PID varchar(15),
    admission_date date,
    Release_date date,
    constraint foreign key(Room_No) references Room_Master(Room_No),
    constraint Foreign key(PID) References PATIENT_MASTER(PID)
);

Insert into ROOM_ALLOCATION(Room_No,PID,Admission_date,Release_Date)
values('R0001','P0001','2016-10-15','2016-10-26'),
('R0002','P0002','2016-11-15','2016-11-26'),
('R0003','P0003','2016-12-01','2016-12-30'),
('R0004','P0001','2017-01-01','2017-01-30');

select * from Room_Allocation;
