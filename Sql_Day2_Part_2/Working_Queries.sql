-- Display all records from batches 

select * from batches;

-- Display all batches whose ccode is 1 

select * from batches where ccode=1;

-- Display information of batches as 
-- Course_code and how many courses are running

select ccode, count(*) from batches 
group by ccode;

-- Display information from batches as
-- FacCode and How many Faccodes are available 

select faccode, count(*) from batches
group by faccode;

-- Display all records from Courses table

select * from courses;

-- display all courses whoses duration more than 20 days 

select * from courses where duration > 20;

-- display all courses whose fee more than 5000 

select * from courses where fee > 5000;

-- Display all courses whose fee ranging from 4000 to 4800 

select * from courses where
fee between 4000 and 4800;

-- Display all records whose fee not ranging between 4000 - 4800 

select * from Courses where 
fee not between 4000 and 4800;

-- Display all records from faculty table 

select * from Faculty;

-- Display Faculty details whose Qualification contains MS keyword 

select * from Faculty where qual like '%MS%';

select * from Course_Faculty;

-- Apply Inner Join Between Course and Course_Faculty tables 

select C.Ccode, Name, Duration, Fee, Grade
from Courses C INNER JOIN Course_Faculty CF ON 
C.Ccode=CF.CCODE;

-- Display Ccode and total courses running form Course_Faculty Table 

select * from Course_Faculty;

select ccode, count(*) from 
Course_Faculty
Group by Ccode;

-- Display common records from Faculty and Course_Faculty tables 

select * from Faculty;

select F.FacCode, Name,Qual, Grade 
from Faculty F INNER JOIN Course_Faculty CF
ON F.FacCode=CF.FacCode;

-- Apply Left-outer join for above query

select F.FacCode, Name,Qual, Grade 
from Faculty F LEFT JOIN Course_Faculty CF
ON F.FacCode=CF.FacCode;

-- Display common records from Faculty and Course_faculty tables 

select * from Faculty where Faccode = ANY(select faccode from 
course_faculty);

-- Display Idle Faculty Details, means exists in Faculty Table 
-- but not in Course_Faculty table 

select * from faculty where faccode <> ALL(select faccode
from Course_Faculty);

