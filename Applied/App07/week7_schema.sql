/*
Databases Week 7 Applied Class
week7_schema.sql

Author: Akshit Mehdiratta

*/

-- 7.2
-- DDL for Student-Unit-Enrolment model (using ALTER TABLE)
--

--
-- Place DROP commands at head of schema file
--



-- Create Tables
-- Here using both table and column constraints
--

drop table student cascade constraints PURGE;

CREATE TABLE student (
    stu_nbr     NUMBER(8) NOT NULL,
    stu_lname   VARCHAR2(50) NOT NULL,
    stu_fname   VARCHAR2(50) NOT NULL,
    stu_dob     DATE NOT NULL
);

COMMENT ON COLUMN student.stu_nbr IS
    'Student number';

COMMENT ON COLUMN student.stu_lname IS
    'Student last name';

COMMENT ON COLUMN student.stu_fname IS
    'Student first name';

COMMENT ON COLUMN student.stu_dob IS
    'Student date of birth';

/* Add STUDENT constraints here */

/* Add UNIT data types here */
CREATE TABLE unit (
    unit_code  char(7) NOT NULL,
    unit_name  VARCHAR2(50) NOT NULL 
);

COMMENT ON COLUMN unit.unit_code IS
    'Unit code';

COMMENT ON COLUMN unit.unit_name IS
    'Unit name';

/* Add UNIT constraints here */

/* Add ENROLMENT attributes and data types here */

CREATE TABLE enrolment (
    stu_nbr        NUMBER(8) not null,
    unitcode       CHAR(7) not null,
    enrol_year     NUMBER(4) not null,
    enrol_semester CHAR(1) not null,
    enrol_mark     NUMBER(3),
    enrol_grade    CHAR(2)
);

COMMENT ON COLUMN enrolment.stu_nbr IS
    'Student number';

COMMENT ON COLUMN enrolment.unit_code IS
    'Unit code';

COMMENT ON COLUMN enrolment.enrol_year IS
    'Enrolment year';

COMMENT ON COLUMN enrolment.enrol_semester IS
    'Enrolment semester';

COMMENT ON COLUMN enrolment.enrol_mark IS
    'Enrolment mark (real)';

COMMENT ON COLUMN enrolment.enrol_grade IS
    'Enrolment grade (letter)';

/* Add ENROLMENT constraints here */