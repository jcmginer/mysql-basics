-- In this way we start working on employees.
use employees;

-- We insert the data for the 15 employees into the employees table.
INSERT INTO
    employees (
        emp_no,
        birth_date,
        first_name,
        last_name,
        gender,
        hire_date
    )
values
    (
        1,
        '1991-08-19',
        'Juan Carlos',
        'Manzanera',
        'M',
        '2023-02-16'
    ),
    (
        2,
        '1994-08-15',
        'Laura',
        'Quirós',
        'F',
        '2022-03-14'
    ),
    (
        3,
        '1999-07-06',
        'Pau',
        'Civill',
        'M',
        '2019-03-18'
    ),
    (
        4,
        '1978-05-09',
        'Pepe',
        'Morcillo',
        'M',
        '2016-07-09'
    ),
    (
        5,
        '1959-04-28',
        'Alex',
        'Balaguer',
        'M',
        '2017-06-12'
    ),
    (
        6,
        '1956-12-14',
        'Ezequiel',
        'Zvirgzdins',
        'M',
        '2018-02-10'
    ),
    (
        7,
        '1979-11-03',
        'Lidia',
        'Frias',
        'F',
        '2012-09-28'
    ),
    (
        8,
        '1981-02-19',
        'Alejandro',
        'Herrero',
        'M',
        '2016-02-12'
    ),
    (
        9,
        '1993-09-30',
        'Elisabet',
        'Ramos',
        'F',
        '2020-12-01'
    ),
    (
        10,
        '1991-01-05',
        'Emily',
        'Herrera',
        'F',
        '2019-11-12'
    ),
    (
        11,
        '1992-04-21',
        'Pau',
        'Moreno',
        'M',
        '2020-10-29'
    ),
    (
        12,
        '1989-02-28',
        'Marta',
        'Punset',
        'F',
        '2018-12-25'
    ),
    (
        13,
        '1969-09-16',
        'Bernat',
        'Pineda',
        'M',
        '2010-03-23'
    ),
    (
        14,
        '1990-09-09',
        'Jaime',
        'Castel',
        'M',
        '2021-10-18'
    ),
    (
        15,
        '1989-05-16',
        'Pau',
        'Tomas',
        'M',
        '2022-12-03'
    );

-- We insert the salaries of each worker, based on the emp_no column that shares a name in both the employees and salaries tables.
INSERT INTO
    salaries (emp_no, salary, from_date, to_date)
values
    (1, 42000, '2023-02-16', now()),
    (2, 50000, '2022-03-14', now()),
    (3, 40000, '2019-03-18', now()),
    (4, 28500, '2016-07-09', '2019-08-01'),
    (4, 32000, '2019-08-01', now()),
    (5, 30500, '2017-06-12', now()),
    (6, 9400, '2018-02-10', '2020-02-11'),
    (6, 28465, '2020-02-11', now()),
    (7, 21475, '2012-09-28', '2016-09-29'),
    (7, 38647, '2016-09-29', now()),
    (8, 9648, '2016-02-12', '2019-05-18'),
    (8, 26979, '2019-05-18', now()),
    (9, 24567, '2020-12-01', now()),
    (10, 31678, '2019-11-12', now()),
    (11, 24987, '2020-10-29', now()),
    (12, 24765, '2018-12-25', '2020-12-26'),
    (12, 45987, '2020-12-26', now()),
    (13, 19987, '2010-03-23', now()),
    (14, 9234, '2021-10-18', now()),
    (15, 40389, '2022-12-03', now());

-- We insert the different departments of the company.
INSERT INTO
    departments (dept_no, dept_name)
values
    (01, 'Marketing'),
    (02, 'Sales'),
    (03, 'Management'),
    (04, 'Factory'),
    (05, 'Development');

-- We insert in which department each employee works.
INSERT INTO
    dept_emp (emp_no, dept_no, from_date, to_date)
values
    (1, 05, '2023-02-16', now()),
    (2, 03, '2022-03-14', now()),
    (3, 02, '2019-03-18', '2020-02-02'),
    (3, 05, '2020-01-02', now()),
    (4, 03, '2016-07-09', '2019-08-01'),
    (4, 05, '2019-08-02', now()),
    (5, 05, '2017-06-12', '2019-07-30'),
    (5, 01, '2018-09-01', now()),
    (6, 02, '2018-02-10', '2020-02-11'),
    (6, 01, '2019-08-01', now()),
    (7, 02, '2012-09-28', '2018-09-29'),
    (7, 04, '2016-09-29', now()),
    (8, 03, '2016-02-12', '2019-05-18'),
    (8, 01, '2017-08-16', now()),
    (9, 01, '2020-12-01', '2021-12-01'),
    (9, 05, '2021-12-01', now()),
    (10, 05, '2019-11-12', now()),
    (11, 05, '2020-10-29', now()),
    (12, 01, '2018-12-25', '2020-12-26'),
    (12, 05, '2020-12-26', now()),
    (13, 01, '2010-03-23', '2018-03-23'),
    (13, 05, '2016-03-23', now()),
    (14, 03, '2021-10-18', '2022-10-18'),
    (14, 05, '2021-12-09', now()),
    (15, 05, '2022-12-03', now());

-- We insert the managers of each department.
INSERT INTO
    dept_manager (emp_no, dept_no, from_date, to_date)
values
    (2, 03, '2022-03-14', now()),
    (3, 02, '2020-01-02', now()),
    (5, 01, '2018-09-01', now()),
    (7, 04, '2016-09-29', now()),
    (12, 05, '2020-12-26', now());

-- We insert the titles of each employee.
INSERT INTO
    titles (emp_no, title, from_date, to_date)
values
    (
        1,
        'Master in Software Development',
        '2023-02-15',
        null
    ),
    (
        2,
        'UAB Management companies',
        '2019-07-21',
        null
    ),
    (
        3,
        'Master in Software Development',
        '2020-04-23',
        null
    ),
    (
        4,
        'Master in Software Development',
        '2020-04-23',
        null
    ),
    (
        5,
        'UAB Marketing',
        '2018-07-02',
        null
    ),
    (
        6,
        'UAB Management companies',
        '2015-02-21',
        null
    ),
    (
        7,
        'Master in Software Development',
        '2019-07-21',
        null
    ),
    (
        8,
        'UAB Marketing',
        '2018-07-02',
        null
    ),
    (
        9,
        'Master in Software Development',
        '2018-07-02',
        null
    ),
    (
        10,
        'Master in Software Development',
        '2019-07-21',
        null
    ),
    (
        11,
        'UAB Management companies',
        '2018-07-02',
        null
    ),
    (
        12,
        'Master in Software Development',
        '2020-04-23',
        null
    ),
    (
        13,
        'Master in Software Development',
        '2020-04-23',
        null
    ),
    (
        14,
        'Master in Software Development',
        '2020-04-23',
        null
    ),
    (
        15,
        'Master in Software Development',
        '2018-12-29',
        null
    );

-- In order to do the update I had to do the following SET.
SET SQL_SAFE_UPDATES = 0;

-- We updated the name of a previously added employee.
UPDATE
    employees
SET
    first_name = 'Lucia'
WHERE
    (
        first_name = 'Emily'
        AND last_name = 'Herrera'
        AND birth_date = '1991-01-05'
    );

-- We updated the name of the existing departments.
UPDATE
    departments
SET
    dept_name = CASE
        WHEN dept_no = 01 THEN 'Marketing & Design.'
        WHEN dept_no = 02 THEN 'Sales to medium and large companies.'
        WHEN dept_no = 03 THEN 'Administration and finance.'
        WHEN dept_no = 04 THEN 'Manufacturing and design.'
        WHEN dept_no = 05 THEN 'Web development.'
    END;

-- We select all employees with a salary greater than 20,000.
SELECT
    *
FROM
    employees
    INNER JOIN salaries ON employees.emp_no = salaries.emp_no
    AND salaries.salary > 20000;

-- We select all employees with a salary below 10,000.
SELECT
    *
FROM
    employees
    INNER JOIN salaries ON employees.emp_no = salaries.emp_no
    AND salaries.salary < 10000;

-- We select all employees who have a salary between 14,000 and 50,000.
SELECT
    *
FROM
    employees
    INNER JOIN salaries ON employees.emp_no = salaries.emp_no
    AND salaries.salary BETWEEN 14000
    AND 50000;

-- We select the total number of employees
SELECT
    COUNT(emp_no)
FROM
    employees;

-- We select the total number of employees who have worked in more than one department.
SELECT
    COUNT(emp_no)
FROM
    (
        SELECT
            emp_no
        FROM
            dept_emp
        GROUP BY
            emp_no
        HAVING
            COUNT(emp_no) > 1
    ) employees;

-- We select the titles of the year 2020.
SELECT
    *
FROM
    titles
WHERE
    from_date BETWEEN '2020-01-01'
    AND '2020-12-31';

-- We select the name of all employees with capital letters.
SELECT
    UCASE(first_name)
FROM
    employees;

-- We select the name, surname and name of the current department of each employee.
SELECT
    emp.first_name,
    emp.last_name,
    depts.dept_name
FROM
    employees emp
    JOIN (
        SELECT
            emp_no,
            dept_no,
            from_date
        FROM
            dept_emp
        WHERE
            from_date IN (
                SELECT
                    MAX(from_date)
                FROM
                    dept_emp
                GROUP BY
                    emp_no
            )
    ) dept_x ON emp.emp_no = dept_x.emp_no
    JOIN departments depts ON dept_x.dept_no = depts.dept_no
ORDER BY
    emp.emp_no;

-- We select the name, surname and number of times the employee has worked as a manager.
SELECT
    emp.first_name,
    emp.last_name,
    manager.times_manager
FROM
    employees emp
    LEFT JOIN (
        SELECT
            emp_no,
            COUNT(*) AS times_manager
        FROM
            dept_manager
        GROUP BY
            emp_no
    ) manager ON emp.emp_no = manager.emp_no;

-- We select the name of employees without any being repeated.
SELECT
    DISTINCT first_name
FROM
    employees;

-- We delete all employees with a salary greater than 20,000.
DELETE employees
WHERE
    emp_no IN (
        SELECT
            E.emp_no
        FROM
            employees E
            JOIN salaries S ON E.emp_no = S.emp_no
        WHERE
            S.salary > 20000
            AND S.to_date >= CURDATE()
    );

-- We remove the department that has more employees.
DELETE FROM
    departments
WHERE
    dept_no = (
        SELECT
            dept_no
        FROM
            dept_emp
        WHERE
            to_date >= CURDATE()
        GROUP BY
            dept_no
        ORDER BY
            COUNT(DISTINCT emp_no) DESC
        LIMIT
            1
    );