-- How to Switch to database
use hexa_batch6;

-- Display all tables of current database 

show tables;

-- Display information about Emp Table 

desc Emp;

-- Display information about Dept table 

Desc Dept;

-- Display all records from Emp table 

select * from Emp;

-- Display Empno, Ename, Job, Sal, Mgr from Emp table (Project) Operator

select Empno, Ename, Job, Sal, Mgr from Emp;

-- Where clause : Used to display filtered data. 

-- Display information whose Empno is 7900

select * from Emp where empno=7900;

-- Display information whose Ename is 'SCOTT' 

select * from Emp where ename='Scott';

-- Display information whose Job is 'CLERK' 

select * from Emp where job='CLERK';

-- Display information whose sal > 1000 

select * from Emp where sal > 1000;

-- Between...AND : Displays records from start to end range 

-- Display all records whose sal between 1000 and 3000 

select * from Emp where 
sal between 1000 and 3000;

select * from Emp where 
sal not between 1000 and 3000;

-- IN Clause : Displays records for multiple values of particular attribute

-- Display info. whose Empno is 7900 or 7389 or 7369

select * from Emp where empno IN(7900, 7389, 7369);

-- Display info. whose Job is 'CLERK' OR 'MANAGER' or 'SALESMAN'

select * from Emp where Job IN('CLERK','MANAGER','SALESMAN');

-- Display info. whose job not in 'CLERK' or 'MANAGER' or 'SALESMAN'

select * from Emp where job NOT IN('CLERK','MANAGER','SALESMAN');

-- Wild-card chars 

-- % and _ are known as wild-cards

-- Display all records whose name starts with s 

select * from Emp where Ename like 'S%';

-- Display all records whose Ename ends with 's' 

select * from Emp where Ename like '%s';

-- Display info whose name starts with J and 5th char is 's' and middle
-- anything we can make it

select * from Emp where ename like 'J___S';

-- Order By : used to display values w.r.t. Specific field(s) in ascending
-- or descending order

-- Display Empno,Ename,job,sal,mgr from Emp sorted by Ename wise 

select Empno, Ename, job, sal, mgr from Emp
order by Ename;

-- Display above in descending order 

select empno, ename, job, sal, mgr from Emp
order by ename desc;

select empno, ename,job,sal,mgr from emp
order by job,ename;

-- Display above records as Job wise Ascending order and Ename wise 
		-- Descending Order
        
select Empno, Ename, job, sal, mgr from emp
order By job, ename desc;