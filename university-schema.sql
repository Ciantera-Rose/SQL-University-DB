
-- STUDENTS TABLE :

CREATE TABLE `sql_university_schema`.`students` (
  `students_id` INT(4) NOT NULL AUTO_INCREMENT,
  `students_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE INDEX `student_id_UNIQUE` (`students_id` ASC) VISIBLE);

-- PROFESSORS TABLE : 

CREATE TABLE `sql_university_schema`.`professors` (
  `professors_id` INT(4) NOT NULL AUTO_INCREMENT,
  `professors_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`professors_id`),
  UNIQUE INDEX `professors_id_UNIQUE` (`professors_id` ASC) VISIBLE);

--   COURSES TABLE :

CREATE TABLE `sql_university_schema`.`courses` (
  `course_id` INT(4) NOT NULL AUTO_INCREMENT,
  `course_title` VARCHAR(45) NOT NULL,
  `course_professors_id` INT(4) NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE INDEX `course_id_UNIQUE` (`course_id` ASC) VISIBLE,
  INDEX `course_professors_id_idx` (`course_professors_id` ASC) VISIBLE,
  CONSTRAINT `course_professors_id`
    FOREIGN KEY (`course_professors_id`)
    REFERENCES `sql_university_schema`.`professors` (`professors_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);

ALTER TABLE `sql_university_schema`.`courses` 
DROP FOREIGN KEY `course_professors_id`;
ALTER TABLE `sql_university_schema`.`courses` 
CHANGE COLUMN `course_professors_id` `course_professors_id` INT NOT NULL ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`course_id`, `course_professors_id`);
;
ALTER TABLE `sql_university_schema`.`courses` 
ADD CONSTRAINT `course_professors_id`
  FOREIGN KEY (`course_professors_id`)
  REFERENCES `sql_university_schema`.`professors` (`professors_id`)
  ON DELETE CASCADE;



    -- GRADES TABLE :

    CREATE TABLE `sql_university_schema`.`grades` (
  `grade` DECIMAL(4) NOT NULL,
  `student_id` INT(4) NOT NULL,
  `professors_id` INT(4) NOT NULL,
  `course_id` INT(4) NOT NULL,
  PRIMARY KEY (`grade`, `student_id`, `professors_id`, `course_id`),
  INDEX `student_id_idx` (`student_id` ASC) VISIBLE,
  INDEX `professors_id_idx` (`professors_id` ASC) VISIBLE,
  INDEX `course_idx` (`course_id` ASC) VISIBLE,
  CONSTRAINT `student_id`
    FOREIGN KEY (`student_id`)
    REFERENCES `sql_university_schema`.`students` (`students_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `professors_id`
    FOREIGN KEY (`professors_id`)
    REFERENCES `sql_university_schema`.`professors` (`professors_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `course`
    FOREIGN KEY (`course_id`)
    REFERENCES `sql_university_schema`.`courses` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


