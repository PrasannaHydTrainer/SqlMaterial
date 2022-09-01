desc dept;

desc Emp;

-- in above table(s) Deptno is primary key in Dept table and Foreign key in 
-- Emp table, now we need to extract data

select Dept.Deptno, Dname, Empno, Ename, job, sal
from Dept INNER JOIN Emp ON
Dept.Deptno = Emp.Deptno;

select D.Deptno, Dname, Empno, Ename, Job, Sal
from Dept D Inner Join Emp E ON
D.Deptno=E.Deptno;


-- Join the 3 tables 

select Agent.AgentID, FirstName, LastName, City, State, 
Policy.PolicyID, AppNumber,ModalPremium, AnnualPremium
from Agent INNER JOIN AgentPolicy 
ON Agent.AgentID = AgentPolicy.AgentID
INNER JOIN Policy ON 
Policy.PolicyID = AgentPolicy.PolicyID;

select A.AgentID, FirstName, LastName, City, State,
P.PolicyID, AppNumber, ModalPremium, AnnualPremium
from Agent A INNER JOIN AgentPolicy AP
ON A.AgentID = AP.AgentID 
INNER JOIN Policy P ON 
P.PolicyID=AP.PolicyID;
---------------------------------------------------------------
-- Left Outer Join 

select D.Deptno, Dname, Empno, Ename, Job, Sal
from Dept D LEFT Join Emp E ON
D.Deptno=E.Deptno;

select A.AgentID, FirstName, LastName, City, State,
P.PolicyID, AppNumber, ModalPremium, AnnualPremium
from Agent A LEFT JOIN AgentPolicy AP
ON A.AgentID = AP.AgentID 
LEFT JOIN Policy P ON 
P.PolicyID=AP.PolicyID;

-- Right Outer Join

select D.Deptno, Dname, Empno, Ename, Job, Sal
from Dept D RIGHT Join Emp E ON
D.Deptno=E.Deptno;

select A.AgentID, FirstName, LastName, City, State,
P.PolicyID, AppNumber, ModalPremium, AnnualPremium
from Agent A RIGHT JOIN AgentPolicy AP
ON A.AgentID = AP.AgentID 
RIGHT JOIN Policy P ON 
P.PolicyID=AP.PolicyID;

-- Cross Join 

select * from Dept cross join emp;

select * from Agent cross join AgentPolicy;

select * from Policy cross join AgentPolicy;

select E1.Empno 'Manager Id', 
E2.Empno 'Employ Id', 
E1.eName 'Manager Name', 
E2.eName 'Employ Name'
from 
Emp E1 INNER JOIN Emp E2 
ON E1.Empno = E2.Mgr
order by E1.Empno;


