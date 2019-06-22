-- Perform inner join to answer question one
--List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT employees.emp_no,employees.last_name,employees.first_name,employees.gender,salaries.salary
from salaries
inner join employees on
employees.emp_no = salaries.emp_no;

-- Perform wilcard to answer question two
--List employees who were hired in 1986.
--select * from employees;

SELECT first_name, last_name FROM employees
WHERE hire_date BETWEEN to_date('01-01-1986', 'MM-DD-YYYY')
AND to_date('12-31-1986', 'MM-DD-YYYY');


--Answering question three
select departments.dept_name,dept_manager.dept_no,dept_manager.emp_no,dept_manager.from_date,
dept_manager.to_date,employees.last_name,employees.first_name
FROM dept_manager 
INNER JOIN departments on
departments.dept_no = dept_manager.dept_no
INNER JOIN employees on 
dept_manager.emp_no = employees.emp_no; 

--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.

SELECT last_name, first_name, emp.emp_no, dept_mgr.dept_no, dept.dept_name, from_date, to_date
FROM dept_manager as dept_mgr 
INNER JOIN employees as emp on emp.emp_no = dept_mgr.emp_no
INNER JOIN departments as dept on dept_mgr.dept_no = dept.dept_no


--Answering question four
--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT departments.dept_name,dept_emp.emp_no,employees.last_name,employees.first_name
FROM dept_emp 
INNER JOIN departments on
departments.dept_no = dept_emp.dept_no
INNER JOIN employees on
dept_emp.emp_no = employees.emp_no;

--Answering question five
--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, 
--and department name.
SELECT departments.dept_name,dept_emp.emp_no,employees.last_name,employees.first_name
FROM dept_emp 
INNER JOIN departments on
departments.dept_no = dept_emp.dept_no
INNER JOIN employees on
dept_emp.emp_no = employees.emp_no 
WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number,
--last name, first name, and department name.
SELECT departments.dept_name,dept_emp.emp_no,employees.last_name,employees.first_name
FROM dept_emp 
INNER JOIN departments on
departments.dept_no = dept_emp.dept_no
INNER JOIN employees on
dept_emp.emp_no = employees.emp_no 
WHERE dept_name IN ('Sales','Development');

-- In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.
SELECT COUNT (last_name) AS NAME_COUNT, last_name FROM employees GROUP BY last_name
ORDER BY NAME_COUNT desc

