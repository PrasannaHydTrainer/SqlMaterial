-- instr() : Used to display the first occurrence of given char. 

select instr('Neha Bharat','h') ;

select Ename, instr(ename,'A') from Emp;

-- length() : Display's the length of given string 

select length('Manimala');

select Ename, length(Ename) from Emp;

-- reverse : Display's string in reverse order 

select reverse('Sai Pavan');

-- Left : Displays no.of left-side chars 

select left('Prasad',4);

-- Right : Displays no.of right-side chars 

select right('Prasad',4);

-- lower() : Displays in lower case

select Ename, lower(ename) from Emp;

-- Upper() : Displays in upper case 

select ename, upper(Ename) from Emp;

-- concat() : used to concatenate multiple strings into a single string 

select concat('Prasad',' ','Patil');

-- Replace() : used to replace old string with new string in all 
-- occurrence 

select replace('Java Training','Java','Dotnet');

