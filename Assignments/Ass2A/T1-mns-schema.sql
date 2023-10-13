--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T1-mns-schema.sql

--Student ID: 34165479
--Student Name: Akshit Mehdiratta
--Unit Code: FIT9132
--Assignment 2a

/* Comments for your marker:

default on delete is Restrict


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

-- adding check constraint
ALTER TABLE appointment
    ADD CONSTRAINT chk_appt_length
            CHECK ( appt_length IN ('S', 'T', 'L') );

-- adding comments
COMMENT ON COLUMN appointment.appt_no IS
    'Appointment number';

COMMENT ON COLUMN appointment.appt_datetime IS
    'Date and time of the appointment';

COMMENT ON COLUMN appointment.appt_roomno IS
    'Room in which appointment is scheduled to take place';

COMMENT ON COLUMN appointment.appt_length IS
    'Length of appointment - Short, Standard or Long (S, T or L)';

COMMENT ON COLUMN appointment.patient_no IS
    'Patient who books the appointment';

COMMENT ON COLUMN appointment.provider_code IS
    'Provider who is assigned to the appointment';

COMMENT ON COLUMN appointment.nurse_no IS
    'Nurse who is assigned to the appointment';

COMMENT ON COLUMN appointment.appt_prior_apptno IS
    'Prior appointment number which leads to this appointment';   
    
-- TABLE: EMERGENCY_CONTACT

CREATE TABLE emergency_contact (
    ec_id    NUMBER(4) NOT NULL,
    ec_fname VARCHAR2(30),
    ec_lname VARCHAR2(30),
    ec_phone CHAR(10) NOT NULL,
    -- adding pk and unique constraint
    CONSTRAINT emergency_contact_pk PRIMARY KEY ( ec_id ),
    CONSTRAINT emergency_contact_uq UNIQUE ( ec_phone )
);

-- adding comments for patient

COMMENT ON COLUMN emergency_contact.ec_id IS
    'Emergency contact identifier';

COMMENT ON COLUMN emergency_contact.ec_fname IS
    'Emergency contact first name';

COMMENT ON COLUMN emergency_contact.ec_lname IS
    'Emergency contact last name';

COMMENT ON COLUMN emergency_contact.ec_phone IS
    'Emergency contact phone number';


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
    patient_contactemail   VARCHAR(25) NOT NULL,
    ec_id                 NUMBER(4) NOT NULL
);
-- adding primary key
ALTER TABLE patient ADD CONSTRAINT patient_pk PRIMARY KEY ( patient_no );

-- adding check constraint for state

ALTER TABLE patient
    ADD CONSTRAINT chk_patient_state
            CHECK ( patient_state IN ('NT', 'QLD', 'NSW', 'ACT', 'VIC', 'TAS', 'SA', 'WA') );

-- adding comments
COMMENT ON COLUMN patient.patient_no IS
    'Patient number';

COMMENT ON COLUMN patient.patient_fname IS
    'Patient first name';

COMMENT ON COLUMN patient.patient_lname IS
    'Patient last name';

COMMENT ON COLUMN patient.patient_street IS
    'Patient residential street address';

COMMENT ON COLUMN patient.patient_city IS
    'Patient residential city';

COMMENT ON COLUMN patient.patient_state IS
    'Patient residential state - NT, QLD, NSW, ACT, VIC, TAS, SA, or WA';

COMMENT ON COLUMN patient.patient_postcode IS
    'Patient residential postcode';

COMMENT ON COLUMN patient.patient_dob IS
    'Patient date of birth';

COMMENT ON COLUMN patient.patient_contactmobile IS
    'Patient contact mobile number';

COMMENT ON COLUMN patient.patient_contactemail IS
    'Patient contact email address';

COMMENT ON COLUMN patient.ec_id IS
    'Patient emergency contact identifier'; 
    


-- Add all missing FK Constraints below here

-- for patient
ALTER TABLE patient
    ADD CONSTRAINT emergency_contact_patient FOREIGN KEY ( ec_id )
        REFERENCES emergency_contact ( ec_id );

-- for appointment
ALTER TABLE appointment ADD (
    CONSTRAINT patient_appointment FOREIGN KEY ( patient_no )
        REFERENCES patient ( patient_no )
);

ALTER TABLE appointment
    ADD CONSTRAINT provider_appointment FOREIGN KEY ( provider_code )
        REFERENCES provider ( provider_code );

ALTER TABLE appointment
    ADD CONSTRAINT nurse_appointment FOREIGN KEY ( nurse_no )
        REFERENCES nurse ( nurse_no );

ALTER TABLE appointment
    ADD CONSTRAINT appointment_appointment FOREIGN KEY ( appt_no )
        REFERENCES appointment ( appt_no );
