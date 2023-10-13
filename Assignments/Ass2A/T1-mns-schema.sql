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

CREATE TABLE appointment (
    appt_no           NUMBER(7) NOT NULL,
    appt_datetime     DATE NOT NULL,
    appt_roomno       NUMBER(2) NOT NULL,
    appt_length       CHAR(1) NOT NULL,
    patient_no        NUMBER(4) NOT NULL,
    provider_code     CHAR(6) NOT NULL,
    nurse_no          NUMBER(3) NOT NULL,
    appt_prior_apptno NUMBER(7)
);
-- adding primary key
ALTER TABLE appointment ADD CONSTRAINT appointment_pk PRIMARY KEY ( appt_no );

-- adding unique constraint
ALTER TABLE appointment ADD CONSTRAINT appointment_uq UNIQUE (appt_datetime, appt_roomno,patient_no, provider_code, appt_prior_apptno );


-- TABLE: EMERGENCY_CONTACT

CREATE TABLE emergency_contact (
    ec_id    NUMBER(4) NOT NULL,
    ec_fname VARCHAR2(30),
    ec_lname VARCHAR2(30),
    ec_phone CHAR(10) NOT NULL,
    CONSTRAINT emergency_contact_pk PRIMARY KEY ( ec_id ),
    CONSTRAINT emergency_contact_uq UNIQUE ( ec_phone )
);

-- TABLE: PATIENT

CREATE TABLE patient (
    patient_no            NUMBER(4) NOT NULL,
    patient_fname         VARCHAR2(30),
    patient_lname         VARCHAR2(30),
    patient_street        VARCHAR2(50) NOT NULL,
    patient_city          VARCHAR2(20) NOT NULL,
    patient_state         VARCHAR(3) NOT NULL,
    patient_postcode      CHAR(4) NOT NULL,
    patient_dob           DATE NOT NULL,
    patient_contactmobile CHAR(10) NOT NULL,
    patent_contactemail   VARCHAR(25) NOT NULL,
    ec_id                 NUMBER(4) NOT NULL
);
-- adding primary key
ALTER TABLE patient ADD CONSTRAINT patient_pk PRIMARY KEY ( patient_no );

-- adding check constraint for state

ALTER TABLE patient
    ADD CONSTRAINT chk_patient_state
            CHECK ( patient_state IN ('NT', 'QLD', 'NSW', 'ACT', 'VIC', 'TAS', 'SA', 'WA') );

    



-- Add all missing FK Constraints below here


