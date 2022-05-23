# Employee Database: A Mystery in Two Parts

## The challenge

This is a research project on employees of Pewlett Hackard from the 1980s and 1990s.
The task is to design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data.
<hr>

## Outcomes 
### Data Modelling
Inspect the CSVs and sketch out an ERD of the tables using an online tool [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com). Data input can be found [here](EmployeeSQL\ERD.txt)
</br>
<img src="EmployeeSQL\ERD.png" width="60%" height="60%">

### Data Engineering
From the model above, a [table schema](EmployeeSQL\create_table_schema.sql) was built for each of the six CSV files, with consideration to specify data types, primary keys, foreign keys, composite keys and other constraints.

### Data Analysis
With the complete database, [data queries](EmployeeSQL\data_analysis.sql) were initiated to answer the following questions:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

### Generate a visualization of the data

1. Import the SQL database into Pandas. 

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://{user_name}:{password}@localhost:5432/sql_challenge')
   connection = engine.connect()
   ```

2. Create a histogram to visualize the most common salary ranges for employees
</br>
<img src="Images\histogram.png" width="60%" height="60%">
3. Create a bar chart of average salary by title
</br>
<img src="Images\average_salary.png" width="60%" height="60%">

4. Interesting finding: An employee with ID number 499942 has a full name of April Foolsday

