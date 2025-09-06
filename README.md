# employee-performance-mapping-sql-project
SQL project analyzing employee records, salaries, performance ratings, and projects for HR analytics and appraisal planning.

## Overview  
This project is part of my **SQL Course-End Project** where I worked on analyzing and managing employee and project data for a startup, **ScienceQtech**. The goal is to support the **HR department** in mapping employee performance, salaries, and projects by writing optimized SQL queries, creating stored procedures, views, and functions.  

The project also covers database design concepts (ER diagrams), indexing, and query performance improvement - demonstrating strong **SQL, database design, and optimization skills**.  

---

## Problem Statement  
ScienceQtech is preparing for its annual appraisal cycle and requires insights into employee performance and project contributions. The HR team requested database reports to:  
- Identify maximum salaries and bonus calculations  
- Ensure employee roles align with organizational standards  
- Track employee experience and ratings  
- Support cost and performance optimizations through indexing  

---

## Tools & Techniques Used  
- **Database:** MySQL  
- **Concepts Covered:**  
  - Database Creation & Table Design  
  - ER Diagram  
  - SQL Queries (SELECT, WHERE, UNION, GROUP BY, HAVING)  
  - Aggregations (MIN, MAX, AVG, RANK)  
  - Stored Procedures & Functions  
  - Views  
  - Indexing & Query Optimization  

---

## Dataset Description
Three datasets were provided and imported into a MySQL database as below:  
Description of each varable listed below. 

1. **emp_record_table** – Employee details  
   - EMP_ID ---------------- ID of the employee
   - FIRST_NAME ------------ First name of the employee
   - LAST_NAME-------------- Last name of the employee
   - GENDER ---------------- Gender of the employee
   - ROLE ------------------ Post of the employee
   - DEPT ------------------ Field of the employee
   - EXP ------------------- Years of experience the employee has
   - COUNTRY --------------- Country in which the employee is presently living
   - CONTINENT ------------- Continent in which the country is
   - SALARY ---------------- Salary of the employee
   - EMP_RATING ------------ Performance rating of the employee
   - MANAGER_ID ------------ The manager under which the employee is assigned
   - PROJ_ID --------------- The project on which the employee is working or has worked on

2. **proj_table** – Project details  
   - PROJECT_ID ------------ ID for the project
   - PROJ_NAME ------------- Name of the project
   - DOMAIN ---------------- Field of the project
   - START_DATE ------------ Day the project began
   - CLOSURE_DATE ---------- Day the project was or will be completed
   - DEV_QTR --------------- Quarter in which the project was scheduled
   - STATUS ---------------- Status of the project currently

3. **data_science_team** – Subset of employees from the Data Science team  
   - EMP_ID ---------------- ID of the employee
   - FIRST_NAME ------------ First name of the employee
   - LAST_NAME ------------- Last name of the employee
   - GENDER ---------------- Gender of the employee
   - ROLE ------------------ Post of the employee
   - DEPT ------------------ Field of the employee
   - EXP ------------------- Years of experience the employee has
   - COUNTRY --------------- Country in which the employee is presently living
   - CONTINENT ------------- Continent in which the country is

---

## Porject Tasks Performed

**Database Creation & Data Import into Tables:**  
- Created an employee database and imported multiple datasets (data_science_team.csv, proj_table.csv, emp_record_table.csv).

**Database Modeling:**  
- Designed an Entity-Relationship (ER) diagram to represent the employee database schema.

**Data Retrieval & Filtering:**  
- Queried employee details (e.g., EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPARTMENT).
- Filtered employees based on conditions (e.g., EMP_RATING < 2, > 4, or between 2–4).
- Concatenated names with aliases for employees in specific department (Finance).

**Hierarchical Queries:**  
- Identified employees with direct reports and counted the number of subordinates, including the President.

**Set Operations:**  
- Retrieved employee records from multiple departments (e.g., Healthcare, Finance) using UNION.

**Aggregation & Grouping:**  
- Grouped employee details by department with employee ratings and max ratings.
- Calculated min and max salaries per role.

**Ranking & Analytics:**  
- Assigned ranks to employees based on years of experience.

**Views & Nested Queries:**  
- Created a view of employees by country with salary > 6000.
- Used nested queries to find employees with > 10 years of experience.

**Stored Procedures & Functions:**  
- Built a stored procedure to fetch employees with > 3 years of experience.
- Developed a stored function to validate job profiles against organizational role standards (Junior, Associate, Senior, Lead, Manager).

**Performance Optimization:**  
- Created an index on employee names to optimize search queries (e.g., finding FIRST_NAME = 'Eric').

**Business Logic Implementation:**  
- Calculated employee bonuses using a formula (5% of salary * employee rating).
- Average salary distribution based on the continent and country

---

## Project Structure

```
employee-performance-mapping/
├── data/
│ ├── emp_record_table.csv
│ ├── proj_table.csv
│ └── data_science_team.csv
├── sql_scripts/
│ ├── 1-database_table_creation.sql
│ ├── 2-queries.sql
│ ├── 3-indexing.sql
│ ├── 4-stored_procedures_func.sql
│ └── 5-business_Logic_Bounces_average_salary.sql
├── diagrams/
│ └── ER_diagram.png
├── outputs/
│ ├── Aggregation_Grouping.xlsx
│ ├── Bounces_average_salary.xlsx
│ ├── Data Retrieval & Filtering.xlsx
│ ├── employee database_tables.xlsx
│ ├── Hierarchical Queries.xlsx
│ ├── Performance Optimization - indexing.xlsx
│ ├── Ranking_Analytics.xlsx
│ ├── Stored_Procedures_Functions.xlsx
│ └── Views_Nested_Queries.xlsx
└── README.md
```

---

## Steps to Run
1. Open MySQL Workbench.
2. Run `database_table_creation.sql` to create the database and tables.
3. Import CSVs in `/data` importing tables pne by one by right click on the table >> Table Data Import Wizard
   and picking related csv table
5. Run other sql queries from 2 to 5 for analysis queries.
6. Run `procedures.sql` and `indexing.sql` if you want to add stored procedures or indexing.

---

## Skills Demonstrated

- SQL Query Writing & Optimization  
- Database Design & ER Diagrams  
- Stored Procedures & Functions  
- Views & Indexing for Performance  
- Data Aggregation & Reporting  
- HR & Business Use Case Translation into SQL  

---

## Note
This project was part of my **SQL Training Project** during the Caltech Data Science Program.  
