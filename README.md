# Employee SQL Database: A Mystery in Two Parts

## The challenge

This is a research project on employees of Pewlett Hackard from the 1980s and 1990s.
The task is to design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data.
<hr>

## Outcomes 
### Data Modelling
Inspect the CSVs and sketch out an ERD of the tables using an online tool [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com). Data input can be found [here](EmployeeSQL/ERD.txt)
</br>
<img src="EmployeeSQL/ERD.png" width="100%" height="100%">

### Data Engineering
From the model above, a [table schema](EmployeeSQL/create_table_schema.sql) was built for each of the six CSV files, with consideration to specify data types, primary keys, foreign keys, composite keys and other constraints.

### Data Analysis
With the complete database, [data queries](EmployeeSQL/data_analysis.sql) were initiated to answer the following questions:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.
![image](https://user-images.githubusercontent.com/89946428/171994343-8d17584a-4832-4b31-98c8-be368301cc5e.png)

2. List first name, last name, and hire date for employees who were hired in 1986.
![image](https://user-images.githubusercontent.com/89946428/171994427-c746bff0-a281-4bc5-b2b2-6a095b225604.png)

3. List the manager of each department with the following information: </br> 
department number, department name, the manager's employee number, last name, first name.
![image](https://user-images.githubusercontent.com/89946428/171994635-fad1e1ad-9d47-49c9-a7bf-6a722a85f1ca.png)

4. List the department of each employee with the following information: </br>
employee number, last name, first name, and department name.
![image](https://user-images.githubusercontent.com/89946428/171994696-5610e95a-4107-4f9b-b97c-b07f82c9e58d.png)

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B." </br>
![image](https://user-images.githubusercontent.com/89946428/171994724-177e3de8-5b2e-4fb3-b752-62b2738a3f60.png)

6. List all employees in the Sales department, including their employee number, last name, first name, and department name. </br>
![image](https://user-images.githubusercontent.com/89946428/171994754-20d63729-213c-4529-aeca-8d21d1403e93.png)

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name. </br>
![image](https://user-images.githubusercontent.com/89946428/171994778-cba23c31-2585-4944-b76c-44906884fe04.png)

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name. </br>
![image](https://user-images.githubusercontent.com/89946428/171994989-f3b52be1-055e-4cf1-a263-f6dd70953f26.png)

### Generate a visualization of the data

1. Import the SQL database into Pandas. 

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://{user_name}:{password}@localhost:5432/sql_challenge')
   connection = engine.connect()
   ```
</br>
2. Create a histogram to visualize the most common salary ranges for employees
</br>
<img src="Images/histogram.png" width="60%" height="60%">
3. Create a bar chart of average salary by title
</br>
<img src="Images/average_salary.png" width="60%" height="60%">

4. Interesting finding: An employee with ID number 499942 has a full name of April Foolsday
![image](https://user-images.githubusercontent.com/89946428/171995062-0dffcb4f-4877-4d49-b6cb-14b843143daa.png)
