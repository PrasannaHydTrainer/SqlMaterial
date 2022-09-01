-- Display max. salary from Emp table 

select max(sal) from Emp;

-- Display name of person who is getting max. salary 

select ename from emp where sal=(select max(sal) from Emp);

-- Display 2nd max. salary 

select max(sal) from Emp where sal < (select max(sal) from Emp);

-- Display employ name(s) who is getting 2nd max. salary 

select ename from emp where sal = (
select max(sal) from Emp where sal < (select max(sal) from Emp));

select * from Policy;

-- Display max. annualpremium from policy table 

select max(annualpremium) from policy;

-- Display PolicyId for which we are getting max. annualpremium 

select policyId from Policy where annualpremium =
(select max(annualpremium) from Policy);

-- Display 2nd max. AnnualPremium 

select max(annualpremium) from Policy where 
annualpremium < (select max(annualpremium) from Policy);

-- Display All common records from Agent and AgentPolicy Tables 

-- Means AgentId exists in Agent table and AgentPolicy Table 

select * from Agent where AgentID = ANY(select AgentId from AgentPolicy);

-- Display all common records from Policy and AgentPolcy tables 

-- Means PolicyID exists in Policy Table, but not in AgentPolicy Table 

select * from Policy where PolicyID = 
ANY (select PolicyID from AgentPolicy);

-- Display all records which exists in Agent Table, but not in AgentPolicy 

-- Display Idle agents 

select * from Agent 
Where AgentID <> ALL(select AgentID from AgentPolicy);

-- Display Idle Policies, means which exists in Policy table, but not in
-- AgentPolicy Table

select * from Policy
where PolicyID <> ALL (select PolicyID from AgentPolicy);