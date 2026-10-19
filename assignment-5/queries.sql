
-- simple query to see all grades of user 1 in subject 1, ordered by time by default
SELECT (grade) FROM grades WHERE user_id = 1 AND subject_id = 1;
--5
--4
--6

-- query to get average statistics on grades, ROUND takes second parameter of how many
-- numbers past the , (2)
-- LEFT JOIN ON ensures even subjects without grades are selected
-- GROUP BY seperates from where we calculated the result
SELECT 
    sub.name AS subject,
    ROUND(AVG(g.grade), 2) AS average_grade,
    COUNT(g.grade) AS total_grades
FROM subjects sub
LEFT JOIN grades g ON sub.id = g.subject_id
GROUP BY sub.id, sub.name
ORDER BY sub.name;

--"History"	4.60	5
--"Literature"	4.50	4
--"Mathematics"	4.29	7
--"Physics"	4.20	5