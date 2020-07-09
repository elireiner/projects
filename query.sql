--How many people work in the Sales department?
SELECT
  count(e.emp_name)
FROM
  employee e
  INNER JOIN
  department d
  ON e.department = d.id
WHERE
  d.dept_name = 'Sales';

--List the names of all employees assigned to the 'Plan Christmas party' project.
SELECT
  e.emp_name employee,
  p.project_name project
FROM
  employee e
  JOIN  
  employee_project ep
  ON e.id = ep.emp_id
  JOIN
  project p
  ON ep.project_id = p.id
WHERE
  p.project_name = 'Plan christmas party';

--List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.
SELECT
  e.emp_name employee,
  d.dept_name,
  p.project_name project
FROM
  project p
  JOIN
  employee_project ep
  ON p.id = ep.project_id
  JOIN
  employee e
  ON ep.emp_id = e.id
  JOIN
  department d
  ON d.id = e.department
WHERE
  d.dept_name = 'Warehouse'
  AND
  p.project_name = 'Watch paint dry';

--Which projects are the Sales department employees assigned to?
SELECT
  p.project_name project
FROM
  project p
  JOIN
  employee_project ep
  ON p.id = ep.project_id
  JOIN
  employee e
  ON ep.emp_id = e.id
  JOIN
  department d
  ON d.id = e.department
WHERE
  d.dept_name = 'Sales';

--List only the managers that are assigned to the 'Watch paint dry' project.
SELECT
  e.emp_name employee
FROM
  project p
  JOIN
  employee_project ep
  ON p.id = ep.project_id
  JOIN
  employee e
  ON ep.emp_id = e.id
  JOIN
  department d
  ON e.id = d.manager
WHERE
  p.project_name = 'Watch paint dry';

-- List all employees that are managers

SELECT
  e.emp_name employee
FROM
employee e
  JOIN
department d
ON e.id = d.emp_id;
