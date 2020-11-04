 /*this is the query for 1*/
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no

/*This is query for 2
I used https://stackoverflow.com/questions/27440764/extract-year-from-date-within-where-clause */
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = '1986';

/* This is query for 3 */
select d1.dept_no, d1.dept_name, dm.emp_no, e.last_name, e.first_name
from departments d1
LEFT JOIN dept_manager dm
on d1.dept_no = dm.dept_no
LEFT JOIN employees e
on dm.emp_no = e.emp_no

/* This is query for 4 */
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
LEFT JOIN dept_emp de
on e.emp_no = de.emp_no
LEFT JOIN departments d
on de.dept_no = d.dept_no

/* This is the query for 5 */
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

/* This is the query for 6 */
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
LEFT JOIN dept_emp de
on e.emp_no = de.emp_no
LEFT JOIN departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales'

/* this is the query for 7*/
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
LEFT JOIN dept_emp de
on e.emp_no = de.emp_no
LEFT JOIN departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'

/* this is the query for no 8 */
SELECT last_name, COUNT(last_name) AS "name count"
FROM employees
GROUP BY last_name
ORDER BY "name count" DESC;