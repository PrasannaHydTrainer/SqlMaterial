Drop Database if exists batch6_practice2;

create database batch6_practice2;

use batch6_practice2;

drop table if exists AgentPolicy;

Drop table if exists Agent;

Create Table Agent
(
   AgentID INT Primary Key auto_increment,
   FirstName varchar(20),
   MI varchar(1),
   LastName varchar(20),
   FullName varchar(40),
   Gender ENUM('MALE','FEMALE'),
   Dob Date,
   SSN varchar(20),
   MaritalStatus INT,
   Address1 varchar(20),
   Address2 varchar(20),
   City varchar(15),
   State varchar(15),
   ZipCode varchar(20),
   Country varchar(15)
);

Insert into Agent(Firstname,MI,LastName,Gender,DOB,SSN,MaritalStatus,
Address1,Address2,City,State,ZipCode,Country) 
values('Sunitha','P','Premjee','Female','1988-01-02','434-55-3323',
1,'5th Avenue','Near Church','Parlin','NJ','434554','USA'),
('Pranitha','R','Reddy','Female','1986-01-02','324-55-2344',
1,'8th Mile','Sterling Heights','Detroit','MI','442345','USA'), 			
('Shavetha','D','Datta','Female','1980-01-02','643-34-4443',
0,'Dwaraka Nagar','5th Phase','NewDelhi','UP','438533','INDIA'),
('Shanthi','T','Tangvel','Female','1983-12-03','644-23-4534',
1,'Near Food Court','2nd Phase','Chicago','MI','483845','USA'),
('ashraf','V','Vahora','Male','1983-01-01','435-22-5212',
1,'8th Avenue','Church Road','Maywood','NJ','78434','USA') ,
('Ramesh','L','Gole','Male','1981-01-02','643-34-7373',
0,'5th Phase','Sterling Heights','Detroit','MI','477843','USA'),
('Lavanya','S','K','FeMale','1988-12-12','335-44-2344',
0,'LIG B87','ASRAO NR','SECBAD','AP','500062','INDIA'),
('Murali','S','Krishna','Male','1986-03-09',
'234-44-2335',1,'RK HOstel','Ameerpet','HYDBAD','AP',
'500042','INDIA'),
('Raj','S','kumar','Male','1987-12-12',
'345-23-4211',0,'MadhaPur','Nr Cyber Towers','HYDBAD','AP',
'509244','INDIA'),
('Srimukha','S','Manchu','FeMale','1986-12-11',
'231-44-2335',0,'NRS','Madhapur','HYDBAD','AP',
'500042','INDIA'),
('Lalitha','S','B','FeMale','1987-11-11',
'341-23-4211',0,'KondaPur','Nr Stadium','HYDBAD','AP',
'509244','INDIA'),
('Rakesh','K','Chowdary','Male',
'1986-01-12','123-23-2444',1,'8th Mile','Church Road','Detroit',
'MI','484555','USA'),
('Rama','U','Rao','Male',
'1983-01-12','223-43-1444',1,'5th Mile','Ford Street','Chicago',
'NY','2484555','USA'),
('Madhuri','S','M','FeMale',
'1989-12-12','423-33-2444',1,'Beach Street','Univ Road','NewYork',
'CT','5484555','USA'),
('Prafulla','U','Rao','FeMale',
'1987-12-01','523-22-2644',1,'8th Mile','IBM Road','Detroit',
'MI','484555','USA'),
('Prasanna','P','Kumar','Male',
'1980-9-03','423-23-1444',1,'ASRAO NR','Good Luck Cafe','SECBAD',
'AP','500 062','INDIA');

select * from Agent; 

Drop Table IF Exists Policy;

Create Table Policy
(
   PolicyId INT auto_increment,
   AppNumber varchar(30),
   AppDate date,
   PolicyNumber varchar(30),
   AnnualPremium numeric(9,2),
   PaymentModeID int CHECK(PaymentModeID IN(1,2,3)),
   ModalPremium numeric(9,2),
   constraint pk_policy_policyID Primary Key(PolicyID)	
);

Insert INTO Policy(AppNumber,AppDate,PolicyNumber,AnnualPremium,
PaymentModeID,ModalPremium) 
VALUES('A001','2010-1-12','C001',12000,2,2000),
('A002','2010-12-12','C002',20000,1,12000),
('A003','2010-12-12','C003',150000,1,20000),
('A004','2005-01-02','P001',22000,1,1000),
('A005','2009-09-03','S231',122000,2,22000),
('A006','2010-02-12','A131',232000,2,21000),
('A007','2007-09-11','P231',212000,2,23000),
('A008','2009-11-12','S231',122000,2,22000),
('A009','2009-10-10','I231',192000,1,24000);

select * from Policy;

Create Table AgentPolicy
(
   AgentID INT,
   PolicyID INT,
   IsSplitAgent INT,
   constraint fk_agentPolicy_agentID 
   Foreign KEY(AgentID)
   REFERENCES Agent(AgentID),
   constraint fk_agentPolicy_policyId
   Foreign Key(PolicyID)
   REFERENCES Policy(PolicyID),
   Constraint PK_AgentPolicy_Aid
   Primary Key(AgentID,PolicyID)
);

INSERT INTO AGENTPOLICY(AGENTID,POLICYID,IsSplitAgent)
VALUES(1,1,2),(1,3,1),(2,3,1),(2,1,1),
					(2,4,1),
					(2,5,1),
					(4,1,2),
					(4,3,1),
					(5,1,2),
					(5,2,1);

select * from AgentPolicy;