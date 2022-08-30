-- Date Functions 

select curdate();

select curtime();

select dayofweek(curdate());

select quarter(curdate());


select last_day(curdate());

select adddate(curdate(),INTERVAL 5 day); 

select adddate(curdate(), INTERVAL 3 MONTH);
