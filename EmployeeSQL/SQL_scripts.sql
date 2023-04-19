-- Q.1 List the employee number, last name, first name, sex, and salary of each employee.
SELECT  e.emp_no,e.last_name,e.first_name, e.sex, s.salary
FROM public.employees AS e
Join public.salaries AS s 
ON e.emp_no = s.emp_no;

--Q.2 List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM public.employees
Where hire_date >= to_date('1986-01-01', 'YYYY-MM-DD') AND hire_date<= to_date('1986-12-31', 'YYYY-MM-DD'); 

--Q.3 List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT d.dept_no, d.dept_name, e.emp_no,e.first_name, e.last_name, t.title 
FROM public.dept_manager AS dm 
Join public. departments AS d 
ON d.dept_no = dm.dept_no 
Join public.employees AS e 
ON e.emp_no = dm.emp_no
Join public.titles AS t
ON e.emp_title_id = t.title_id; 

--Q.4 List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT d.dept_no, d.dept_name, e.emp_no,e.first_name, e.last_name, t.title  
FROM public.departments AS d 
Join public.dept_emp AS de
ON d.dept_no = de.dept_no 
Join public.employees AS e 
ON e.emp_no = de.emp_no
Join public.titles AS t
ON e.emp_title_id = t.title_id;

--Q.5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select e.first_name,e.last_name, e.sex  
From public.employees AS e 
Where e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

--Q.6 List each employee in the Sales department, including their employee number, last name, and first name.
Select * from ( 
	Select emp_no, last_name, first_name From public.employees 
	) AS emp_subquery 
		Where emp_no IN ( 
			Select emp_no from public.dept_emp 
				where dept_no IN (
					Select dept_no from public.departments 
						Where dept_name = 'Sales'
			)
	);

--Q.7 List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select e.emp_no, e.last_name, e.first_name, d.dept_name AS "department name"
from public.employees AS e 
Join public.dept_emp AS de 
ON e.emp_no = de.emp_no 
Join public.departments AS d 
ON de.dept_no = d. dept_no  
where d.dept_name IN ('Sales','Development');

--Q.8 List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select last_name, COUNT(*) as frequency  
From public.employees 
Group by last_name 
Order by frequency DESC; 


	