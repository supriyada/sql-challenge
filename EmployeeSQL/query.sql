--List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT emp.emp_no AS "Employee number", emp.last_name AS "Last Name",emp.first_name AS "First Name", 
emp.sex, sal.salary
FROM employees emp
JOIN salaries sal
ON emp.emp_no = sal.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name AS "First Name", last_name AS "Last Name", 
to_char("hire_date", 'DD/MM/YYYY') AS "Hired Date"
FROM employees
WHERE EXTRACT(year FROM "hire_date") = 1986;

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name
SELECT dm.dept_no AS "Department number", d.dept_name AS "Department Name",
emp.emp_no AS "Employee number",
emp.last_name AS "Last Name", emp.first_name AS "First Name"
FROM dept_manager dm
JOIN employees emp
ON dm.emp_no = emp.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT emp.emp_no AS "Employee number",
emp.last_name AS "Last Name", emp.first_name AS "First Name",
d.dept_name AS "Department Name"
FROM dept_emp de
JOIN employees emp
ON de.emp_no = emp.emp_no
JOIN departments d
ON de.dept_no = d.dept_no;

/*List first name, last name, and sex for employees whose first name is "Hercules" 
and last names begin with "B."*/
SELECT first_name AS "First Name", last_name AS "Last Name", sex AS "Sex"
FROM employees
WHERE first_name = 'Hercules'
AND last_name like 'B%';

/*List all employees in the Sales department, 
including their employee number, last name, first name, and department name.*/
SELECT emp.emp_no AS "Employee number",
emp.last_name AS "Last Name", emp.first_name AS "First Name",
d.dept_name AS "Department Name"
FROM dept_emp de
JOIN employees emp
ON de.emp_no = emp.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

/*List all employees in the Sales and Development departments, 
including their employee number, last name, first name, and department name.*/
SELECT emp.emp_no AS "Employee number",
emp.last_name AS "Last Name", emp.first_name AS "First Name",
d.dept_name AS "Department Name"
FROM dept_emp de
JOIN employees emp
ON de.emp_no = emp.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

/*In descending order, list the frequency count of employee last names, 
i.e., how many employees share each last name.*/
SELECT last_name, count(*) AS "frequency_count"
FROM employees
GROUP BY last_name
ORDER BY frequency_count desc;