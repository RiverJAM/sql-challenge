/*Schema*/
CREATE TABLE employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR(255)   NOT NULL,
    birth_date date   NOT NULL,
    first_name VARCHAR(255)   NOT NULL,
    last_name VARCHAR(255)   NOT NULL,
    sex VARCHAR(255)   NOT NULL,
    hire_date DATE   NOT NULL,
     PRIMARY KEY (emp_no)

);



CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles (
    title_id VARCHAR(255)   NOT NULL,
    title VARCHAR(255)   NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE departments (
    dept_no VARCHAR(255)   NOT NULL,
    dept_name VARCHAR(255)   NOT NULL,
    PRIMARY KEY (dept_no)
);

Drop Table dept_emp
CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no Varchar   NOT NULL
);

CREATE TABLE dept_manager (
    dept_no Varchar   NOT NULL,
    emp_no INT   NOT NULL
);

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");



ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");


COPY employees (emp_no,	emp_title_id,	birth_date,	first_name,	last_name, sex, hire_date)
from '/Users/josephmonahan/git/sql-challenge/EmployeeSQL/data/employees.csv'
delimiter ','
csv header

COPY employees (emp_no,	emp_title_id,	birth_date,	first_name,	last_name, sex, hire_date)
from '/Users/josephmonahan/git/sql-challenge/EmployeeSQL/data/employees.csv'
delimiter ','
csv header

COPY salaries (emp_no,	salary)
from '/Users/josephmonahan/git/sql-challenge/EmployeeSQL/data/salaries.csv'
delimiter ','
csv header


COPY titles (title_id,	title)
from '/Users/josephmonahan/git/sql-challenge/EmployeeSQL/data/titles.csv'
delimiter ','
csv header

COPY departments (dept_no,	dept_name)
from '/Users/josephmonahan/git/sql-challenge/EmployeeSQL/data/departments.csv'
delimiter ','
csv header

COPY dept_emp (emp_no,	dept_no)
from '/Users/josephmonahan/git/sql-challenge/EmployeeSQL/data/dept_emp.csv'
delimiter ','
csv header

COPY dept_manager (dept_no, emp_no)
from '/Users/josephmonahan/git/sql-challenge/EmployeeSQL/data/dept_manager.csv'
delimiter ','
csv header