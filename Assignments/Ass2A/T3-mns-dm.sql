--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T3-mns-dm.sql

--Student ID: 34165479
--Student Name: Akshit Mehdiratta
--Unit Code: FIT9132
--Applied Class No: 04_OnCampus

/* Comments for your marker:



*/

--3(a)

-- for emergency contact
DROP SEQUENCE emergency_contact_seq;

CREATE SEQUENCE emergency_contact_seq START WITH 100 INCREMENT BY 5;

-- for patient
DROP SEQUENCE patient_seq;

CREATE SEQUENCE patient_seq START WITH 100 INCREMENT BY 5;

-- for appointment
DROP SEQUENCE appointment_seq;

CREATE SEQUENCE appointment_seq START WITH 100 INCREMENT BY 5;

--3(b)

--Jonathan registered himself as the emergency contact of his two kids - 0412523122

INSERT INTO emergency_contact (
    ec_id,
    ec_fname,
    ec_lname,
    ec_phone
) VALUES (emergency_contact_seq.nextval, 'Jonathan', 'Robey', '0412523122');
Commit;
/* 
The reception then created two short (S) appointments for:
- Laura on 4th September 2023 at 3:30 PM, and
- Lachlan on 4th September 2023 at 4:00 PM.
Both kids were seen by Dr. Bruce STRIPLIN. 
Nurse Chelsea Ford (nurse number: 6) was assigned.
*/

-- Laura on 4th September 2023 at 3:30 PM

INSERT INTO patient (
    patient_no,
    patient_fname,
    patient_lname,
    patient_street,
    patient_city,
    patient_state,
    patient_postcode,
    patient_dob,
    patient_contactmobile,
    patient_contactemail,
    ec_id
) VALUES ( patient_seq.nextval, 'Laura', 'Robey', 'Street 5', 'Mort', 'VIC', '3211', TO_DATE('20-MAY-2009', 'DD-MM-YYYY'), '4090912345', 'laurarobey@gmail.com', emergency_contact_seq.currval); 
Commit;
-- Lachlan on 4th September 2023 at 4:00 PM.

INSERT INTO patient (
    patient_no,
    patient_fname,
    patient_lname,
    patient_street,
    patient_city,
    patient_state,
    patient_postcode,
    patient_dob,
    patient_contactmobile,
    patient_contactemail,
    ec_id
) VALUES ( patient_seq.nextval, 'Lachlan', 'Robey', 'Street 5', 'Mort', 'VIC', '3211', TO_DATE('25-July-2010', 'DD-MM-YYYY'), '4090954321', 'lachlanrobey@gmail.com', emergency_contact_seq.currval);
Commit;
--3(c)

--3(d)

--3(e)