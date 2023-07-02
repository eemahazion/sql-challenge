# sql-challenge
SQL challenge Module 9
By Emanuel Emahazion

In this project, we use PostgreSQL to analyze historical data of the company Pewlett Hackard. We split the work into 3 parts:
* Data Modeling
* Data Engineering
* Data Analysis

Data Modeling
What we initially did was download CSV files with millions of data points, too much to process analysis in Microsoft Excel. We analyze the data and create an Entity Relationship Diagram (ERD), to understand the relationship between the excel files that will eventually become tables in our company database, that we will also create in PostgreSQL.
Example of the ERD: Refer to png file in directory ERD Image Module 9.png



Data Engineering
Note that when creating the relationships for columns, we must analyze and conceptualize how the connections work best, looking at which columns could be set as Primary Keys, Foreign Keys, and Composite Keys, for tables that need a primary key but don’t have a unique column necessarily.


We then create the tables and databases, then write script to import these CSV files in a particular order, as to not upload foreign keys that don’t exist yet as a primary key, as an error would appear.

Once the database is set, we conduct the given analysis on the prompts that were given, in order to understand what was sought from the employee database. Those questions/prompts were as follows:

Data Analysis
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

