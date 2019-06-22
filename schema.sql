--creating tables
CREATE TABLE departments(dept_no VARCHAR primary key NOT NULL,
						--dept_name VARCHAR);

CREATE TABLE dept_emp(emp_no INT not null,
                     dept_no VARCHAR,
                     from_date DATE,
                     to_date DATE);

CREATE TABLE dept_manager(dept_no VARCHAR not null,
                        emp_no int,
                     from_date DATE,
                     to_date DATE);
					 
CREATE TABLE employees(emp_no int primary key,
                       birth_date DATE,
                       first_name VARCHAR,
                       last_name VARCHAR,
                       gender VARCHAR,
                       hire_date DATE);

CREATE table salaries(emp_no int not null,
                     salary int,
                     from_date DATE,
                     to_date DATE);


CREATE TABLE titles(emp_no int not null,
                    title VARCHAR,
                    from_date DATE,
                    to_date DATE);
	