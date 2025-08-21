# employee-performance-mapping-sql-project
SQL project analyzing employee records, salaries, performance ratings, and projects for HR analytics and appraisal planning.



# ScienceQtech Employee Performance Mapping

## Overview  
This project is part of my **SQL Course-End Capstone Project** where I worked on analyzing and managing employee and project data for a startup, **ScienceQtech**. The goal is to support the **HR department** in mapping employee performance, salaries, and projects by writing optimized SQL queries, creating stored procedures, views, and functions.  

The project also covers database design concepts (ER diagrams), indexing, and query performance improvement — demonstrating strong **SQL, database design, and optimization skills**.  

---

## 🎯 Problem Statement  
ScienceQtech is preparing for its annual appraisal cycle and requires insights into employee performance and project contributions. The HR team requested database reports to:  
- Identify maximum salaries and bonus calculations  
- Ensure employee roles align with organizational standards  
- Track employee experience and ratings  
- Support cost and performance optimizations through indexing  

---

## 🛠️ Tools & Technologies Used  
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

## 📊 Dataset Description  
Three datasets were provided and imported into a MySQL database:  

1. **emp_record_table** – Employee details  
   - EMP_ID, FIRST_NAME, LAST_NAME, GENDER, ROLE, DEPT, EXP, COUNTRY, CONTINENT, SALARY, EMP_RATING, MANAGER_ID, PROJ_ID  

2. **proj_table** – Project details  
   - PROJECT_ID, PROJ_NAME, DOMAIN, START_DATE, CLOSURE_DATE, DEV_QTR, STATUS  

3. **data_science_team** – Subset of employees from the Data Science team  
   - EMP_ID, FIRST_NAME, LAST_NAME, GENDER, ROLE, DEPT, EXP, COUNTRY, CONTINENT  

---

## ⚙️ Key Tasks Performed  

✅ **Database Setup**  
- Created `employee` database and imported `.csv` files.  
- Designed an **ER Diagram** to represent table relationships.  

✅ **SQL Queries**  
- Fetch employee details and filter by department & ratings.  
- Concatenate names and alias output.  
- Identify managers with direct reports.  
- Use `UNION` to combine employees from multiple departments.  
- Group employees by department with `MAX` rating per group.  
- Calculate **min/max salaries by role**.  
- Assign **ranks based on experience**.  
- Create **views** for employees with salaries > 6000.  
- Nested queries for employees with > 10 years of experience.  

✅ **Advanced SQL**  
- **Stored Procedure**: Retrieve employees with > 3 years of experience.  
- **Stored Function**: Validate employee role assignment based on years of experience (Jr. DS, Sr. DS, Manager, etc.).  
- **Index Creation**: Improve query performance for searching by first name.  
- **Bonus Calculation**: 5% of salary × employee rating.  
- **Average Salary Distribution**: Aggregated by continent and country.  

---

## 🏗️ Project Structure  

```
employee-performance-mapping/
├── data/
│ ├── emp_record_table.csv
│ ├── proj_table.csv
│ └── data_science_team.csv
├── sql_scripts/
│ ├── create_database.sql
│ ├── queries.sql
│ ├── stored_procedures.sql
│ └── indexing.sql
├── diagrams/
│ └── ER_diagram.png
├── outputs/
│ ├── query_results.csv
│ └── performance_report.pdf
├── README.md
```


---

## ▶️ How to Run  

1. Import the provided `.csv` files into MySQL database `employee`.  
2. Run `create_database.sql` to set up tables.  
3. Execute queries from `queries.sql` to generate reports.  
4. Explore advanced tasks using `stored_procedures.sql` and `indexing.sql`.  

---

## 🚀 Skills Demonstrated  

- SQL Query Writing & Optimization  
- Database Design & ER Diagrams  
- Stored Procedures & Functions  
- Views & Indexing for Performance  
- Data Aggregation & Reporting  
- HR & Business Use Case Translation into SQL  

---

## 📌 Note  
This project was part of my **SQL Training Capstone Project** during the Caltech Data Science Program.  








