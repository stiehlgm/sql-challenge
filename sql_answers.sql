-- 1. Order by firstname, lastname, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries s ON s.emp_no = e.emp_no
ORDER BY 1;

-- 2. List firstname, lastname, and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees 
WHERE hire_date 
BETWEEN '1986-01-1' AND '1986-12-31'

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name	
SELECT deptman.dept_no, dept.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments_manager AS deptman
JOIN department AS dept 
ON deptman.dept_no = dept.dept_no
JOIN employees AS e ON deptman.dept_no = e.emp_no;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name	
SELECT employees.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM employees
JOIN department_employees
ON department_employees.emp_no = employees.emp_no
JOIN department
ON department_employees.dept_no = department.dept_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name
SELECT employees.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN department_employees
ON department_employees.emp_no = employees.emp_no
JOIN department
ON department_employees.emp_no = department.dept_no
WHERE dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT employees.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM employees
JOIN department_employees
ON department_employees.emp_no = employees.emp_no
JOIN department
ON department_employees.dept_no = department.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(last_name) AS "name_count"
FROM employees
GROUP BY last_name
ORDER BY "name_count" DESC;
