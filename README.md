# SQL Challenge

Background

As a new data engineer at Pewlett Hackard (a fictional company) I have been assigned to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, I designed tables to hold the data from the CSV files, imported the CSV files into a SQL database, and  was able to find the requested information about the data. The tasks comprised of data modeling, data engineering, and data analysis. 

Data Modeling

Inspected the CSV files, and sketched an Entity Relationship Diagram of the tables. Used a tool like QuickDBD. 

Data Engineering

Used the provided information created a table schema for each of the six CSV files. 
  - specified the data types, primary keys, foreign keys, and other constraints; 
  - for the primary keys, verified that the column is unique;
  - created tables in the correct order to handle the foreign keys.

Imported each CSV file into its corresponding SQL table.

Data Analysis involved these tasks: 

1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).






