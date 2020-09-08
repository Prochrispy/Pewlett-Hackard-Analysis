--Retirement Title Table 
SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM employees as e 
INNER JOIN titles As ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
ret.title,
ret.from_date,
ret.to_date
INTO unique_titles
FROM employees as e
INNER JOIN retirement_titles As ret
ON (e.emp_no = ret.emp_no)
WHERE ret.to_date = ('9999-01-01') 
ORDER BY emp_no ASC;

-- Retiring Title Table 
SELECT COUNT(ce.emp_no), ce.title
INTO retiring_titles
FROM unique_titles as ce
GROUP BY ce.title
ORDER BY count DESC;

-- Mentorship Eligibilty Table
 SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ti.title
INTO mentorship_eligibilty 
FROM employees as e
INNER JOIN dept_emp As de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no; 