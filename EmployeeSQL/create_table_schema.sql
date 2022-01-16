ALTER DATABASE sql_challenge 
SET datestyle TO "ISO, MDY";


CREATE TABLE titles(
title_id VARCHAR(20) NOT NULL,
title VARCHAR(30) NOT NULL,
PRIMARY KEY (title_id)
);


CREATE TABLE departments(
dept_no VARCHAR(10) NOT NULL,
dept_name VARCHAR(20) NOT NULL,
PRIMARY KEY (dept_no)
);


CREATE TABLE employees(
emp_no INT NOT NULL, 
emp_title_id VARCHAR(20) NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
sex VARCHAR(1) NOT NULL,
hire_date DATE NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
PRIMARY KEY(emp_no));


CREATE TABLE dept_emp(
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR(10) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


CREATE TABLE dept_manager(
dept_no VARCHAR(10) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
PRIMARY KEY (dept_no,emp_no)
);


CREATE TABLE salaries(
emp_no INT NOT NULL,
salary INT NOT NULL,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);


