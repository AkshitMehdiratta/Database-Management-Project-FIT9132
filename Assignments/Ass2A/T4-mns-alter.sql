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

DROP TABLE nurse_training CASCADE CONSTRAINTS;

CREATE TABLE nurse_training (
    training_id       NUMBER(10) not null,
    trainer_nurse_no  NUMBER(3) NOT NULL,
    trainer_nurse_fname VARCHAR2(30),
    trainer_nurse_lname VARCHAR2(30),
    trainee_nurse_no  NUMBER(3) NOT NULL,
    training_start_date Date not null,
    training_end_date date not null,
    training_desc varchar2(200) not null
);

-- adding constraints for fk and pk using alter table
Alter table nurse_training add constraint  nurse_training_pk PRIMARY KEY ( training_id );
Alter table nurse_training add constraint  nurse_trainer_nurse_no_fk foreign KEY ( trainer_nurse_no ) REFERENCES nurse(nurse_no);
Alter table nurse_training add constraint  nurse_trainee_nurse_no_fk foreign KEY ( trainee_nurse_no ) REFERENCES nurse(nurse_no);



-- trainee cant be trainer
ALTER TABLE nurse_training
    ADD CONSTRAINT chk_nurse_training
            CHECK ( trainer_nurse_no is not trainee_nurse_no );

