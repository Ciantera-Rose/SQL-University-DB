-- Populate all of the database tables with sample data. Seed data.

-- INSERT STUDENTS:

USE sql_university_project_schema;

INSERT INTO students(students_id, students_name)
VALUES (1, "Harry Potter");

INSERT INTO students(students_id, students_name)
VALUES (2, "Draco Malfoy");

INSERT INTO students(students_id, students_name)
VALUES (3, "Hermione Granger");

INSERT INTO students(students_id, students_name)
VALUES (4, "Luna Lovegood");

INSERT INTO students(students_id, students_name)
VALUES (5, "Ron Weasley");

INSERT INTO students(students_id, students_name)
VALUES (6, "Cedric Diggory");

INSERT INTO students(students_id, students_name)
VALUES (7, "Neville Longbottom");

INSERT INTO students(students_id, students_name)
VALUES (8, "Cho Chang");

INSERT INTO students(students_id, students_name)
VALUES (9, "Ginny Weasley");

INSERT INTO students(students_id, students_name)
VALUES (10, "George Weasley");

-- INSERT PROFESSORS

INSERT INTO professors(professors_id, professors_name)
VALUES (1, "Albus Dumbledore");

INSERT INTO professors(professors_id, professors_name)
VALUES (2, "Minevra MGgonagall");

INSERT INTO professors(professors_id, professors_name)
VALUES (3, "Filius Flitwick");

INSERT INTO professors(professors_id, professors_name)
VALUES (4, "Pomona Sprout");

INSERT INTO professors(professors_id, professors_name)
VALUES (5, "Remus Lupin");

INSERT INTO professors(professors_id, professors_name)
VALUES (6, "Severus Snape");

INSERT INTO professors(professors_id, professors_name)
VALUES (7, "Sybill Trelawney");

INSERT INTO professors(professors_id, professors_name)
VALUES (8, "Rubeus Hagrid");

INSERT INTO professors(professors_id, professors_name)
VALUES (9, "Horace Slughorn");

INSERT INTO professors(professors_id, professors_name)
VALUES (10, "Gilderpy Lockhart");

-- INSERT COURSES

INSERT INTO courses(course_id, course_title, course_professors_id)
VALUES (1, "Defence Against the Dark Arts", 6);

INSERT INTO courses(course_id, course_title, course_professors_id)
VALUES (2, "Herbology", 8);

INSERT INTO courses(course_id, course_title, course_professors_id)
VALUES (3, "Divination", 7);

INSERT INTO courses(course_id, course_title, course_professors_id)
VALUES (4, "Potions", 5);

INSERT INTO courses(course_id, course_title, course_professors_id)
VALUES (5, "Alchemy", 9);

INSERT INTO courses(course_id, course_title, course_professors_id)
VALUES (6, "Magical Theory", 1);

INSERT INTO courses(course_id, course_title, course_professors_id)
VALUES (7, "Transfiguration", 3);

INSERT INTO courses(course_id, course_title, course_professors_id)
VALUES (8, "Apparition", 2);

INSERT INTO courses(course_id, course_title, course_professors_id)
VALUES (9, "Xylomancy", 4);

INSERT INTO courses(course_id, course_title, course_professors_id)
VALUES (10, "Study of Ancient Runes", 10);

-- INSERT GRADES

INSERT INTO grades(grade_score, student_id, professors_id, course_id)
VALUES (99, 1, 6, 1);

INSERT INTO grades(grade_score, student_id, professors_id, course_id)
VALUES (72, 2, 8, 3);

INSERT INTO grades(grade_score, student_id, professors_id, course_id)
VALUES (100, 3, 5, 4);

INSERT INTO grades(grade_score, student_id, professors_id, course_id)
VALUES (92, 4, 8, 3);

INSERT INTO grades(grade_score, student_id, professors_id, course_id)
VALUES (83, 5, 3, 7);

INSERT INTO grades(grade_score, student_id, professors_id, course_id)
VALUES (99, 6, 6, 1);

INSERT INTO grades(grade_score, student_id, professors_id, course_id)
VALUES (77, 7, 2, 8);

INSERT INTO grades(grade_score, student_id, professors_id, course_id)
VALUES (99, 8, 5, 4);

INSERT INTO grades(grade_score, student_id, professors_id, course_id)
VALUES (94, 9, 7, 3);

INSERT INTO grades(grade_score, student_id, professors_id, course_id)
VALUES (82, 10, 9, 5);