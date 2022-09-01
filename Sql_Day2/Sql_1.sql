-- sum
select sum(sal) from Emp;

-- avg 
select avg(sal) from Emp;

-- max 

select max(sal) from Emp;

-- min

select min(sal) from Emp;

-- count(*) : Displays total no.of records of the particular table 

select count(*) from Emp;

-- count(column_name) : Displays count for which the column how many
-- not null records are there 

select comm from Emp;
select count(comm) from Emp;