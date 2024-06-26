USE db01;

SELECT * FROM worker;

select * from bonus;

SELECT * FROM bonus ORDER BY bonus_amount ASC;

SELECT * FROM bonus ORDER BY bonus_amount DESC;

SELECT * FROM bonus ORDER BY bonus_amount DESC, bonus_date ASC;

SELECT DISTINCT department FROM worker ORDER BY department DESC; -- Returns Distinct deparments

SELECT department, COUNT(department) as dep_sum FROM worker GROUP BY department; -- Counts the people in All departments

SELECT department, COUNT(department) as dep_sum FROM worker where department ='Logistics' GROUP BY department; -- Counts the people in Logistiscs

SELECT worker_id , AVG(bonus_amount) as avg_bonus FROM bonus GROUP BY worker_id; -- Avg bonus of a woker employee

SELECT worker_id , SUM(bonus_amount) as MAX_bonus FROM bonus GROUP BY worker_id; -- SUM bonus of a woker employee

SELECT worker_id, C OUNT(worker_id) as total_bonus , SUM(bonus_amount) as Total_bonus FROM bonus Group BY Worker_id; -- Total Bonus amount per employee

SELECT worker_id, SUM(bonus_amount) as SUM_BONUS from bonus GROUP BY worker_id ORDER BY  SUM_BONUS DESC LIMIT 1; -- Employee with sum bonus with its id 

SELECT worker_id from bonus Group By bonus_amount having bonus_amount>=2000 ; -- List Redunduntly employee id where the Employee bonus >=2000 

SELECT DISTINCT worker_id from bonus Group By bonus_amount having bonus_amount>=2000 ; 

Select worker_id , SUM(bonus_amount) as sum_bonus from bonus group by worker_id; 

SELECT worker_id from (
	Select worker_id , SUM(bonus_amount) as sum_bonus  from bonus group by worker_id 
) AS t1 
Group By sum_bonus having sum_bonus>=4000 ;  
-- ALl woker id whose sum bouns is greater than 4000