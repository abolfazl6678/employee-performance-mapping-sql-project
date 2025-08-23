-- Performance Optimization - indexing

create index idx_FIRST_NAME
on employee.emp_record_table(FIRST_NAME(100));
SELECT * FROM employee.emp_record_table WHERE FIRST_NAME = 'Eric';