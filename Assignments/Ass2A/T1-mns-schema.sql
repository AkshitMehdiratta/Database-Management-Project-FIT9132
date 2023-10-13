--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T1-mns-schema.sql

--Student ID: 34165479
--Student Name: Akshit Mehdiratta
--Unit Code: FIT9132
--Assignment 2a

/* Comments for your marker:




*/

-- Task 1 Add Create table statements for the white TABLES below
-- Ensure all column comments, and constraints (other than FK's)
-- are included. FK constraints are to be added at the end of this script

-- TABLE: APPOINTMENT




-- TABLE: EMERGENCY_CONTACT

Create Table emergency_contact (
    ec_id    CHAR(10) NOT NULL,
    ec_fname VARCHAR2(20),
    ec_lname VARCHAR2(20),
    ec_phone CHAR(12) NOT NULL,
    CONSTRAINT emergency_contact_pk PRIMARY KEY ( ec_id ),
    CONSTRAINT emergency_contact_uq UNIQUE ( ec_phone ));

-- TABLE: PATIENT

Create Table patient (
    patient_no CHAR(10) NOT NULL,
    patient_fname VARCHAR2(20) NOT NULL,
    patient_lname VARCHAR2(20) NOT NULL,
    patient_street VARCHAR2(200) not null,
    patient_city VARCHAR2(200) not null,
    patient_state VARCHAR(3) NOT NULL,
    patient_postcode CHAR(4) Not null,
    patient_dob DATE NOT NULL,
    patient_contactmobile CHAR(12) NOT NULL,
    patent_contactemail VARCHAR(100) NOT NULL,
    ec_id    CHAR(10) NOT NULL);
    
Alter table patient add constraint patient_pk primary key (patient_no);
    



-- Add all missing FK Constraints below here


