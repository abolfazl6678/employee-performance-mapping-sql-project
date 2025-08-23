-- Business Logic Implementation - Bounces_average salary distribution

Select EMP_ID, FIRST_NAME, LAST_NAME,
(0.05*SALARY*EMP_RATING) as BONUS
from employee.emp_record_table;

Select COUNTRY, CONTINENT, avg(SALARY) as 'average Salary'
from employee.emp_record_table 
group by COUNTRY, CONTINENT;
