-- create departments table
CREATE TABLE departments (
  dept_no VARCHAR(8) PRIMARY KEY NOT NULL,
  dept_name VARCHAR(40) NOT NULL
);

-- create employee titles table
CREATE TABLE titles (
  title_id VARCHAR(8) PRIMARY KEY NOT NULL,
  title VARCHAR(40) NOT NULL
);

-- create employees table
CREATE TABLE employees (
  emp_no INT PRIMARY KEY NOT NULL,
  emp_title_id VARCHAR(8) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(40) NOT NULL,
  last_name VARCHAR(40) NOT NULL,
  sex VARCHAR(1),
  hire_date DATE NOT NULL,
  FOREIGN KEY (emp_title_id) references titles (title_id)
);

-- create employee department table
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(8) NOT NULL,
  FOREIGN KEY (emp_no) references employees (emp_no)
);

-- create department managers table
CREATE TABLE dept_manager (
  dept_no VARCHAR(8) NOT NULL,
  emp_no INT NOT NULL,
  FOREIGN KEY (dept_no) references departments (dept_no),
  FOREIGN KEY (emp_no) references employees (emp_no)
);

-- create employee salaries table
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  FOREIGN KEY (emp_no) references employees (emp_no)
  );