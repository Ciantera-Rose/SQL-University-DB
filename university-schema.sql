-- Build a database with the following tables: Students, Courses, Professors, Grades

-- STUDENTS TABLE :

CREATE TABLE `sql_university_project_schema`.`students` (
  `students_id` INT(4) NOT NULL AUTO_INCREMENT,
  `students_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE INDEX `students_id_UNIQUE` (`students_id` ASC) VISIBLE);


-- PROFESSORS TABLE : 

CREATE TABLE `sql_university_project_schema`.`professors` (
  `professors_id` INT(4) NOT NULL,
  `professors_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`professors_id`),
  UNIQUE INDEX `professors_id_UNIQUE` (`professors_id` ASC) VISIBLE,
  UNIQUE INDEX `professors_name_UNIQUE` (`professors_name` ASC) VISIBLE);


--   COURSES TABLE :

CREATE TABLE `sql_university_project_schema`.`courses` (
  `course_id` INT(4) NOT NULL AUTO_INCREMENT,
  `course_title` VARCHAR(45) NOT NULL,
  `course_professors_id` INT(4) NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE INDEX `course_id_UNIQUE` (`course_id` ASC) VISIBLE,
  UNIQUE INDEX `course_professors_id_UNIQUE` (`course_professors_id` ASC) VISIBLE,
  CONSTRAINT `course_professors_id`
    FOREIGN KEY (`course_professors_id`)
    REFERENCES `sql_university_project_schema`.`professors` (`professors_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);




    -- GRADES TABLE :

    CREATE TABLE `sql_university_project_schema`.`grades` (
  `grade_score` DECIMAL(4) NOT NULL,
  `student_id` INT(4) NOT NULL,
  `professors_id` INT(4) NOT NULL,
  `course_id` INT(4) NOT NULL,
  PRIMARY KEY (`grade_score`),
  INDEX `student_id_idx` (`student_id` ASC) VISIBLE,
  INDEX `professors_id_idx` (`professors_id` ASC) VISIBLE,
  INDEX `course_id_idx` (`course_id` ASC) VISIBLE,
  CONSTRAINT `student_id`
    FOREIGN KEY (`student_id`)
    REFERENCES `sql_university_project_schema`.`students` (`students_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `professors_id`
    FOREIGN KEY (`professors_id`)
    REFERENCES `sql_university_project_schema`.`professors` (`professors_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `course_id`
    FOREIGN KEY (`course_id`)
    REFERENCES `sql_university_project_schema`.`courses` (`course_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);

ALTER TABLE `sql_university_project_schema`.`grades` 
CHANGE COLUMN `grade_score` `grade_score` INT(4) NOT NULL ;
