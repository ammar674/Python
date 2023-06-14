-- Ex:4.1
select avg(hour_rate) from hours;
-- Ex:4.2
select avg(attract_age) from attraction where park_code = "UK3452";
-- Ex:4.3
select emp_num, sum(hours_per_attract) from hours group by emp_num;
-- Ex:4.4
select attract_no, min(hour_rate), max(hour_rate) from hours group by attract_no;
-- Ex:4.5
select emp_num, attract_no, avg(hours_per_attract) 
from hours 
group by emp_num, attract_no 
having avg(hours_per_attract) >= 5;
-- Ex:4.6
select * from employee cross join hours;
-- Ex:4.7
select emp_lname, emp_fname, attract_no, date_worked 
from employee, hours 
where employee.emp_num = hours.emp_num;
-- Ex:4.8
select emp_fname, emp_lname, hours.attract_no, attract_name 
from employee, hours, attraction 
where employee.emp_num = hours.emp_num 
and hours.attract_no = attraction.attract_no;
-- Ex:4.9
select park_name, count(transaction_no) 
from themepark join sales using(park_code) 
where park_country in ('UK','FR') 
group by park_code;
-- Ex:4.10
select sale_date, line_qty, line_price 
from sales join sales_line 
using(transaction_no) 
where sale_date = '2007-05-18';
