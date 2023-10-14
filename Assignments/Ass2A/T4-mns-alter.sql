--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T4-mns-alter.sql

--Student ID: 34165479
--Student Name: Akshit Mehdiratta
--Unit Code: FIT9132
--Applied Class No: 04_OnCampus

/* Comments for your marker:




*/

--4(a)

--- ALTER TABLE patient DROP Column total_no_appt;

ALTER TABLE patient ADD (
    total_no_appt NUMBER(3)
);
UPDATE patient p
SET
    p.total_no_appt = (
        SELECT
            COUNT(a.appt_datetime) AS totalappointments
        FROM
            appointment a 
            where a.patient_no = p.patient_no
            group By p.patient_no
    );
select patient_no, total_no_appt from patient;    
DESC patient;

--4(b)
DROP TABLE patient_ec CASCADE CONSTRAINTS;

CREATE TABLE patient_ec (
    ec_id    NUMBER(4) NOT NULL,
    patient_no    NUMBER(4) NOT NULL,
    patient_ec_id Number(4) Not Null,  
    -- adding pk and unique constraint
    CONSTRAINT patient_ec_pk PRIMARY KEY ( patient_ec_id ));

-- adding foreign keys for patient_emergency_contact

ALTER TABLE patient_ec ADD CONSTRAINT patient_patient_ec_fk foreign key (patient_no) REFERENCES patient(patient_no);
ALTER TABLE patient_ec ADD CONSTRAINT emergency_contact_patient_ec_fk foreign key (ec_id) REFERENCES emergency_contact(ec_id);

-- deleting column ec_id associated to table patient

ALTER TABLE patient DROP COLUMN ec_id;

DESC patient_ec;

--4(c)
CREATE TABLE nurse_training_log_book (
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

