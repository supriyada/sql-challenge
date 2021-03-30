# Sql-challenge
## Overview <br>
  >- In this assignment, ER diagram is sketched by inspecting the csv files provided. Table schema is created for all 6 files and data is imported into the database. Then the database is queried for the given questions. <br>
  >- In addition to the above, SQL database is imported into Pandas and charts `histogram & bar chart` are plotted.<br>

## Pre-requisites:
  >- New repository for the SQL challenge.<br>
  >- 6 csv files with employee data: `employees.csv`,`titles.csv`,`salaries.csv`,`dept_emp.csv`,`departments.csv`,`dept_manager.csv`.<br>
  >- For the bonus question: `username, password & database name` are to be updated in the `params.py` file.<br>
  
## Files included:
  >- data folder has 6 csv files.<br>
  >- Image file of ER Diagram.<br>
  >- `Schema.sql` - has schema information.<br>
  >- `query.sql` - has all queries related to the questions in this assignment.<br>
  >- `Employee Analysis.ipynb` - jupyter notebook with bonus analysis.<br>
#### [Note]: Please provide the username, password & database name in separate `params.py` file.<br> 
## Execution steps:
  >- ER Diagram is sketched by inspecting the csv files. <br>
  >- Export the ER diagram with schema information for postgres.<br>
  >- Create a database in postgres. <br>
  >- Execute the `schema.sql` to create the necessary tables.<br>
  >- Import the csv files in the below order: `titles.csv`, `departments.csv`, `employees.csv`, `dept_emp.csv`, `dept_manager.csv` and `salaries.csv`. Since there are primary key and foreign key constraints, `titles & departments` are to be imported before the `employees.csv`. Followed by other files. <br>
  >- The tables are queried for various questions given in this assignment.<br>
  >- Bonus Analysis: In the jupyter notebook, SQL database is imported into Pandas using the below lines of code and then later the tables are queried and charts are plotted successfully. <br>
  from sqlalchemy import create_engine <br>
  from params import (username, password,db_name)<br>
  db_string = f'postgresql://{username}:{password}@localhost:5432/{db_name}'<br>
  engine = create_engine(db_string)<br>
  connection = engine.connect()<br>
  df = pd.read_sql_query('SELECT * FROM salaries', con=connection)
