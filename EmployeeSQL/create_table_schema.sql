CREATE TABLE titles(
title_id VARCHAR(20) NOT NULL,
title VARCHAR(30) NOT NULL,
PRIMARY KEY (title_id)
);


CREATE TABLE departments(
dept_no VARCHAR(10),
dept_name VARCHAR(20),
PRIMARY KEY (dept_no)
);


CREATE TABLE employees(
emp_no VARCHAR(10) NOT NULL, 
emp_title_id VARCHAR(20) NOT NULL,
birth_date VARCHAR(10) NOT NULL,
CHECK (birth_date like '%/____'),
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
sex VARCHAR(1) NOT NULL,
hire_date VARCHAR(10) NOT NULL,
CHECK (hire_date like '%/____'),
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
PRIMARY KEY(emp_no));


CREATE TABLE dept_emp(
emp_no VARCHAR(10),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR(10),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


CREATE TABLE dept_manager(
dept_no VARCHAR(10),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no VARCHAR(10),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
PRIMARY KEY (dept_no,emp_no)
);


CREATE TABLE salaries(
emp_no VARCHAR(10) NOT NULL,
salary INT NOT NULL,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

--DROP TABLE dept_emp;
--DROP TABLE dept_manager;
--DROP TABLE salaries;
--DROP TABLE employees;

