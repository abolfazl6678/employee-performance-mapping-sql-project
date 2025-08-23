-- Data Retrieval & Filtering:

select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT from employee.emp_record_table;
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT,EMP_RATING from employee.emp_record_table
where EMP_RATING < 2;
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT,EMP_RATING from employee.emp_record_table
where EMP_RATING > 2;
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT,EMP_RATING from employee.emp_record_table
where EMP_RATING between 2 and 4;

select FIRST_NAME, LAST_NAME, concat(FIRST_NAME, ' ', LAST_NAME) as NAME
from employee.emp_record_table
where DEPT = 'Finance';

-- Hierarchical Queries:

SELECT EMP_ID,FIRST_NAME,LAST_NAME, 
MANAGER_ID as 'Report to' from
employee.emp_record_table
where MANAGER_ID is not null
order by MANAGER_ID;

SELECT count(MANAGER_ID) as 'number of reporters', MANAGER_ID from
employee.emp_record_table
where MANAGER_ID is not null
group by MANAGER_ID;

-- Set Operations: 

Select EMP_ID, FIRST_NAME, LAST_NAME, Dept 
from employee.emp_record_table
where Dept='Finance'
union 
Select EMP_ID, FIRST_NAME, LAST_NAME, Dept 
from employee.emp_record_table
where Dept='healthcare';

-- Aggregation & Grouping: 

select
EMP_ID, FIRST_NAME, LAST_NAME, DEPT, EMP_RATING
from employee.emp_record_table as tb1
order by Dept;
select 
DEPT, max(EMP_RATING)
from employee.emp_record_table as tb2
group by DEPT;

Select ROLE, min(SALARY) as 'Minimum Salary of role', max(SALARY) as 'Maximum Salary of role' 
from employee.emp_record_table 
group by ROLE;

-- Ranking & Analytics: 

SELECT 
EMP_ID, FIRST_NAME, 
LAST_NAME, EXP as 'Yeasr of Experience', 
DENSE_RANK() OVER (ORDER BY EXP) AS Experience_rank
FROM employee.emp_record_table;

-- Views & Nested Queries:

CREATE VIEW High_Salaries_Employ AS
SELECT EMP_ID, FIRST_NAME, LAST_NAME,COUNTRY, SALARY 
FROM employee.emp_record_table
WHERE SALARY > 6000;
SELECT * FROM High_Salaries_Employ;
select EMP_ID, FIRST_NAME, LAST_NAME, EXP 
from employee.emp_record_table
where Exp>10;
