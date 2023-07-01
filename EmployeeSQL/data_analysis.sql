--List the employee number, last name, first name, sex, and salary of each employee 

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees AS e
left join salaries AS s ON e.emp_no=s.emp_no ;

--List the first name, last name, and hire date for the employees who were hired in 1986
--but first need to change data type of hire_date to varchar so that we can use LIKE/%
ALTER TABLE public.employees
    ALTER COLUMN hire_date TYPE character varying(20);
--Now we proceed 
select first_name, last_name, hire_date
from employees WHERE hire_date LIKE '1986%' ;

--List the manager of each department along with their
--department number, department name, employee number, last name, and first name
select e.first_name, e.last_name, de.dept_no, dm.dept_name, e.emp_no
FROM dept_manager as de
LEFT JOIN employees as e ON de.emp_no=e.emp_no
LEFT JOIN departments as dm ON dm.dept_no=de.dept_no

--List the department number for each employee along with that employee’s 
--employee number, last name, first name, and department name
select de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
LEFT JOIN dept_emp as de ON e.emp_no=de.emp_no
LEFT JOIN departments as d ON d.dept_no=de.dept_no

--List first name, last name, and sex of each employee whose first name
--is Hercules and whose last name begins with the letter B
select first_name, last_name, sex
from employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their 
--employee number, last name, and first name
--note that we can use the script from 2 sections above as that has all employees
select de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
LEFT JOIN dept_emp as de ON e.emp_no=de.emp_no
LEFT JOIN departments as d ON d.dept_no=de.dept_no
WHERE d.dept_name='Sales';

--List each employee in the Sales and Development departments, including 
--their employee number, last name, first name, and department name
--note the base of the code is the same as above except I add the OR for the extra dept
select e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
LEFT JOIN dept_emp as de ON e.emp_no=de.emp_no
LEFT JOIN departments as d ON d.dept_no=de.dept_no
WHERE d.dept_name='Sales' OR d.dept_name='Development';

--List the frequency counts, in descending order, of all the 
--employee last names (that is, how many employees share each last name)

select last_name, COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;



