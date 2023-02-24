-- DATA ANALYSIS

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT dept_manager.dept_no, dept_manager.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_manager
INNER JOIN employees
ON dept_manager.emp_no = employees.emp_no
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

SELECT dept_manager.emp_no, departments.dept_name, departments.dept_no, employees.first_name, employees.last_name
FROM dept_manager 
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees
ON employees.emp_no = dept_manager.emp_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

SELECT employees.last_name, employees.first_name, employees.emp_no, departments.dept_name
FROM employees
INNER JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no
WHERE dept_name IN ('Sales', 'Development');

SELECT COUNT (last_name), last_name
FROM employees
GROUP BY last_name
ORDER BY COUNT (last_name) DESC;

