
--List the following details of each employee: employee number, last name, first name, gender, and salary.
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
From employees
Join salaries 
On salaries.emp_no = employees.emp_no 

--List first name, last name, and hire date for employees who were hired in 1986.
Select employees.first_name, employees.last_name, employees.hire_date 
From employees
Where hire_date Between '1986-01-01' And '1986-12-31'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select dept_manager.emp_no, employees.first_name, employees.last_name, departments.dept_no, departments.dept_name
From employees 
Join dept_manager
On employees.emp_no = dept_manager.emp_no
Join departments
On departments.dept_no = dept_manager.dept_no

--List the department of each employee with the following information: employee number, last name, first name, and department name.
Select departments.dept_no, departments.dept_name, employees.first_name, employees.last_name, employees.emp_no
From dept_emp
Join employees


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select employees.first_name, employees.last_name, sex
From employees
Where first_name = 'Hercules'
And last_name Like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select employees.first_name, employees.last_name, departments.dept_name, dept_emp.emp_no
From employees 
Join dept_emp
On dept_emp.emp_no = employees.emp_no
Join departments
On departments.dept_no = dept_emp.dept_no
Where departments.dept_no = 'd007'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select employees.first_name, employees.last_name, departments.dept_name, dept_emp.emp_no
From employees 
Join dept_emp
On employees.emp_no = dept_emp.emp_no 
Join departments
On departments.dept_no = dept_emp.dept_no
Where departments.dept_no = 'd007'
Or departments.dept_no = 'd005'


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select employees.last_name, Count(last_name) as Frequency 
From employees
Group by last_name
Order by 
Count(last_name) Desc



