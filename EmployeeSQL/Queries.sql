--(1) List the following details of each employee...
Select e."Emp_No", e."Last_Name", e."First_Name", e."Gender", s."Salary"
From "Salaries" As s
Inner Join "Employees" As e On
e."Emp_No"=s."Emp_No"
Order By "Emp_No";

--(2) List employees who were hired in 1986
Alter Table "Employees"
  Alter "Hire_Date" Type date Using("Hire_Date"::date)
  
Select e."Emp_No", e."First_Name", e."Last_Name", e."Hire_Date"
From "Employees" As e
Where "Hire_Date" >= '1996-01-01' and "Hire_Date" <  '1997-01-01'
Order By "Hire_Date";

--(3) List the Manager of each department with the following info...
Alter Table "Manager_Department"
  Alter 
  "Begin_Date" Type date Using("Begin_Date"::date)
  
Alter Table "Manager_Department"
  Alter
  "End_Date" Type date Using("End_Date"::date)

Select md."Dept_No", d."Dept_Name", md."Emp_No", e."Last_Name", e."First_Name", md."Begin_Date", md."End_Date"
From "Department" As d
Join "Manager_Department" As md
On (d."Dept_No" = md."Dept_No")
	Join "Employees" As e
	On (e."Emp_No" = md."Emp_No");

--(4) List the department of each employee with the following info...
Select e."Emp_No", e."Last_Name", e."First_Name", d."Dept_Name"
From "Department" As d
Join "Employee_Department" As ed
On (d."Dept_No" = ed."Dept_No")
	Join "Employees" As e
	On (ed."Emp_No" = e."Emp_No")
Order By "Emp_No"

--(5) List all employees whose first name is "Hercules"...
Select *
From "Employees"
Where 
	"First_Name" = 'Hercules' and 
	"Last_Name" Like 'B%'

--(6) List all employees in the Sales department, including...
Select e."Emp_No", e."Last_Name", e."First_Name", d."Dept_Name"
From "Department" As d
Join "Employee_Department" As ed
On (d."Dept_No" = ed."Dept_No")
	Join "Employees" As e
	on (ed."Emp_No" = e."Emp_No")
Where "Dept_Name" = 'Sales'
Order By "Emp_No"

--(7) List all employees in the Sales and Development departments...
Select e."Emp_No", e."Last_Name", e."First_Name", d."Dept_Name"
From "Department" As d
Join "Employee_Department" As ed
On (d."Dept_No" = ed."Dept_No")
	Join "Employees" As e
	on (ed."Emp_No" = e."Emp_No")
Where 
	"Dept_Name" = 'Sales' or
	"Dept_Name" = 'Development'
Order By "Emp_No"

--(8) In descending order, list the frequency count of employee...
Select e."Last_Name", Count(*)
From "Employees" As e
Group By e."Last_Name"
Order By "count" DESC;