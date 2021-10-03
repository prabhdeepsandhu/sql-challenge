-- FIRST TASK to show employee id, first name, last name, sex and salary
------------
select employees.emp_no, first_name, last_name, sex, salary
from employees
right join salaries 
on employees.emp_no = salaries.emp_no;
------------
-- SECOND TASK
-- to show hire date that was in 1986
select emp_no, first_name, last_name, hire_date
from employees
where hire_date > '1986-01-01' and hire_date <'1986-12-31'
------------
-- THIRD TASK
-- to show the details of department number, 
-- department name, the manager's employee number, last name, first name.
select departments.dept_no, dept_name, dept_manager.emp_no, first_name, last_name
from departments
inner join dept_manager
on departments.dept_no = dept_manager.dept_no
inner join employees
on dept_manager.emp_no = employees.emp_no

-- Fourth TASK
--List the department of each employee with the following information: 
-- employee number, last name, first name, and department name
select employees.emp_no, first_name, last_name, dept_name, dept_emp.dept_no
from employees
join dept_emp 
on employees.emp_no = dept_emp.emp_no
join departments
on dept_emp.dept_no = departments.dept_no

-- FIFTH TASK
-- List first name, last name, and sex for employees
-- whose first name is "Hercules" and last names begin with "B."
select * from employees;
select first_name, last_name, sex
from employees
where first_name = 'Hercules' 
and last_name like 'B%'

-- SIXTH TASK
--  List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.
select employees.emp_no, first_name, last_name, dept_name, dept_emp.dept_no
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales'

-- SEVENTH TASK
-- List all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and department name.
select employees.emp_no, first_name, last_name, dept_name, dept_emp.dept_no
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where dept_name IN ('Sales' , 'Development')

-- EIGHTH TASK
-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
select last_name, count(*)
from employees
group by last_name 
order by count DESC;