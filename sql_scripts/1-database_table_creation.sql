-- Creating database
CREATE DATABASE IF NOT EXISTS employee;
USE employee;
-- Create tables (data_science_team, proj_table, emp_record_table)
CREATE TABLE IF NOT EXISTS data_science_team (
    EMP_ID VARCHAR(10),
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    GENDER CHAR(1),
    ROLE VARCHAR(50),
    DEPT VARCHAR(50),
    EXP INT,
    COUNTRY VARCHAR(50),
    CONTINENT VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS proj_table (
    PROJECT_ID VARCHAR(10),
	PROJ_NAME VARCHAR(100),
    DOMAIN VARCHAR(50),
	START_DATE VARCHAR(50),
    CLOSURE_DATE VARCHAR(50),
    DEV_QTR VARCHAR(10),
    STATUS VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS emp_record_table (
    EMP_ID VARCHAR(10),
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    GENDER CHAR(1),
    ROLE VARCHAR(50),
    DEPT VARCHAR(50),
    EXP INT,
    COUNTRY VARCHAR(50),
    CONTINENT VARCHAR(50),
    SALARY DECIMAL(10,2),
    EMP_RATING DECIMAL(3,1),
    MANAGER_ID VARCHAR(10),
    PROJ_ID VARCHAR(10)
);
-- show what is inside the tables of employee database
use employee;
select * from employee.data_science_team;
select * from employee.emp_record_table;
select * from employee.proj_table;
