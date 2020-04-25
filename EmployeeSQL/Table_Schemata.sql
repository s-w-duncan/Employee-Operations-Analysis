CREATE TABLE "Department" (
    "Dept_No" VARCHAR(50)   NOT NULL,
    "Dept_Name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "Dept_No"
     )
);

CREATE TABLE "Employee_Department" (
    "Emp_No" INTEGER   NOT NULL,
    "Dept_No" VARCHAR(50)   NOT NULL,
    "Begin_Date" VARCHAR(50)   NOT NULL,
    "End_Date" VARCHAR(50)   NOT NULL
);

CREATE TABLE "Salaries" (
    "Emp_No" INTEGER   NOT NULL,
    "Salary" INTEGER   NOT NULL,
    "Begin_Date" VARCHAR(50)   NOT NULL,
    "End_Date" VARCHAR(50)   NOT NULL
);

CREATE TABLE "Employees" (
    "Emp_No" INTEGER   NOT NULL,
    "Birth_Date" VARCHAR(50)   NOT NULL,
    "First_Name" VARCHAR(50)   NOT NULL,
    "Last_Name" VARCHAR(50)   NOT NULL,
    "Gender" VARCHAR(5)   NOT NULL,
    "Hire_Date" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_No"
     )
);

CREATE TABLE "Manager_Department" (
    "Emp_No" INTEGER   NOT NULL,
    "Dept_No" VARCHAR(50)   NOT NULL,
    "Begin_Date" VARCHAR(50)   NOT NULL,
    "End_Date" VARCHAR(50)   NOT NULL
);

CREATE TABLE "Employee_Titles" (
    "Emp_No" INTEGER   NOT NULL,
    "Title" VARCHAR(50)   NOT NULL,
    "Begin_Date" VARCHAR(50)   NOT NULL,
    "End_Date" VARCHAR(50)   NOT NULL
);

ALTER TABLE "Employee_Department" ADD CONSTRAINT "fk_Employee_Department_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

ALTER TABLE "Employee_Department" ADD CONSTRAINT "fk_Employee_Department_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Department" ("Dept_No");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

ALTER TABLE "Manager_Department" ADD CONSTRAINT "fk_Manager_Department_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

ALTER TABLE "Manager_Department" ADD CONSTRAINT "fk_Manager_Department_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Department" ("Dept_No");

ALTER TABLE "Employee_Titles" ADD CONSTRAINT "fk_Employee_Titles_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

