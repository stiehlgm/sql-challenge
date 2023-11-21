CREATE TABLE "employees" (
	"emp_no" VARCHAR NOT NULL,
	"emp_title_id" VARCHAR NOT NULL,
	"birth_date" DATE NOT NULL,
	"first_name" VARCHAR NOT NULL,
	"last_name" VARCHAR NOT NULL,
	"sex" VARCHAR NoT NULL,
	"hire_date" DATE NOT NULL,
	CONSTRAINT "pk_employees" PRIMARY KEY (
		"emp_no"
	)

);

CREATE TABLE "department" (
	"dept_no" VARCHAR NOT NULL,
	"dept_name" VARCHAR NOT NULL,
	CONSTRAINT "pk_department" PRIMARY KEY (
		"dept_no"
	)
	
);

CREATE TABLE "department_employees" (
	"emp_no" INT NOT NULL,
	"dept_no" VARCHAR NOT NULL,
	CONSTRAINT "pk_dept_emp" PRIMARY KEY (
		"emp_no", "dept_no"
	)

);
		
CREATE TABLE "departments_manager" (
	"dept_no" VARCHAR NOT NULL,
	"emp_no" INT NOT NULL
	
);

CREATE TABLE "salaries" (
	"emp_no" INT NOT NULL,
	"salary" VARCHAR NOT NULL,
	CONSTRAINT "pk_salaries" PRIMARY KEY (
		"emp_no"
	)

);

CREATE TABLE "titles" (
	"title_id" VARCHAR NOT NULL,
	"title" VARCHAR NOT NULL,
	CONSTRAINT "pk_titles" PRIMARY KEY (
		"title_id"
	)

);

SELECT * FROM employees 
SELECT * FROM department
SELECT * FROM department_employees 
SELECT * FROM departments_manager 
SELECT * FROM salaries
SELECT * FROM titles


		
		
		
		
		
		
		
		
		
