-- CHECK DATA ENTERED TABLES 
USE sql_university_project_schema;

SELECT *
FROM students;

SELECT *
FROM professors;

SELECT *
FROM courses;

SELECT *
FROM grades;

-- AVERAGE GRADE THAT IS GIVRN BY EACH PROFESSOR
USE sql_university_project_schema;

SELECT p.professors_name, AVG(g.grade_score)
FROM grades g
JOIN students AS s ON s.students_id = g.student_id
JOIN courses AS c ON c.course_title = g.course_id AND c.course_professors_id = g.professors_id
JOIN professors AS p ON p.professors_id = c.course_professors_id
WHERE p.professors_name = "Gilderpy Lockhart";
--insert any professors name into WHERE to find the AVG grade

-- GROUP STUDENTS BY COURSES THEY ARE ENROLLED IN
USE sql_university_project_schema;

SELECT s.students_name, c.course_title, p.professors_name
FROM grades g
JOIN students AS s ON s.students_id = g.student_id
JOIN courses as c ON g.course_id = c.course_id
JOIN professors AS p ON p.professors_id = g.professors_id
ORDER BY c.course_title ASC;

-- TOP GRADES FOR EACH STUDENT
USE sql_university_project_schema;

SELECT s.students_name, MAX(g.grade_score)
FROM grades g
JOIN students AS s ON s.students_id = g.student_id
JOIN courses AS c ON c.course_id = g.course_id AND c.course_professors_id = g.professors_id
JOIN professors AS p ON p.professors_id = c.course_professors_id
GROUP BY s.students_name
-- Neville LongBottom 77
-- George Weasley 82
-- Ron Weasley 83
-- Harry Potter 99
-- Hermione Granger 100

-- WHICH STUDENT AND WHICH PROFESSORS HAVE THE MOST COURSES IN COMMON
USE sql_university_project_schema;

SELECT s.students_name, p.professors_name, c.course_title
FROM grades g
JOIN students AS s ON s.students_id = g.student_id
JOIN professors AS p ON p.professors_id = g.professors_id
JOIN courses AS c ON c.course_professors_id = g.course_id
WHERE s.students_name = "Harry Potter" AND p.professors_name = "Severus Snape";

-- DID STUDENT PASS OR FAIL
USE sql_university_project_schema;

SELECT 
	grade_score,
    CASE
	  WHEN grade_score > 70 THEN "Passing Grade"
	  WHEN grade_score < 60 THEN "Failing Grade"
	  END AS "status"
FROM grades;

-- CREATE A SUMMARY REPORT OF COURSES AND THEIR AVG GRADES, SORTED BY
-- THE MOST CHALLENING COURSE (COURSE WITH LOWEST AVG GRADE) TO THE EASIEST COURSE


-- CREATE A SUMMARY REPORT OF COURSES AND THEIR AVG GRADES, SORTED BY
-- THE MOST CHALLENING COURSE (COURSE WITH LOWEST AVG GRADE) TO THE EASIEST COURSE
USE sql_university_project_schema;
-- TODO - CONTINUE SUMMARY REPORT...
SELECT AVG(g.grade_score)
FROM grades g
JOIN students AS s ON s.students_id = g.student_id
JOIN courses AS c ON c.course_id = g.course_id AND c.course_professors_id = g.professors_id
JOIN professors AS p ON p.professors_id = c.course_professors_id
WHERE s.students_name = "Harry Potter"
ORDER BY g.grade_score DESC;