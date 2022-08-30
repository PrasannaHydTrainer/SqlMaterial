select empno,ename,job,sal from Emp;

-- If Job is CLERK put Head as 'Abhipsa'
-- if job is SALESMAN put HEAD as 'Bhavani'
-- if Job is ANALYST put Head as 'Manimala'
-- if job is MANAGER put head as 'Prasad Patil'
-- if job is PRESIDENT put as 'No Manager' 

select empno, ename, job, sal,
case job
	WHEN 'CLERK' then 'Abhipsa'
    WHEN 'SALESMAN' then 'Bhavani'
    WHEN 'ANALYST' then 'Manimala'
    WHEN 'MANAGER' then 'Prasad Patil'
    ELSE 'No Manager'
end 'Head Name'
from Emp;

select * from Dept;

-- if Dname is 'ACCOUNTING' THEN 'PUNE' 
-- if Dname is 'RESEARCH' THEN 'HYDERABAD'
-- if Dname is 'SALES' THEN 'CHENNAI'
-- if Dname is 'OPERATIONS' then 'DELHI' 

select Deptno,Dname, 
CASE Dname
	WHEN 'ACCOUNTING' THEN 'PUNE'
    WHEN 'RESEARCH' THEN 'HYDERABAD'
    WHEN 'SALES' THEN 'CHENNAI'
    WHEN 'OPERATIONS' THEN 'DELHI'
END 'Location'
from Dept
