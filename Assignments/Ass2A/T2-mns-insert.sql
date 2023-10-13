--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T2-mns-insert.sql

--Student ID: 34165479
--Student Name: Akshit Mehdiratta
--Unit Code: FIT9132
--Applied Class No: 04_OnCampus

/* Comments for your marker:


-assuming clinic starts at 2pm
-All 15 appointments are scheduled on one of the three dates (30/05/23, 20/06/23, 10/07/23)

*/

--------------------------------------
--INSERT INTO emergency_contact
--------------------------------------
INSERT INTO emergency_contact (
    ec_id,
    ec_fname,
    ec_lname,
    ec_phone
) VALUES (
    1,
    'Tim',
    'Zo',
    '6416666666'
);

INSERT INTO emergency_contact (
    ec_id,
    ec_fname,
    ec_lname,
    ec_phone
) VALUES (
    2,
    'Tam',
    'Xo',
    '6417777777'
);

INSERT INTO emergency_contact (
    ec_id,
    ec_fname,
    ec_lname,
    ec_phone
) VALUES (
    3,
    'Jim',
    'Qo',
    '6418888888'
);

INSERT INTO emergency_contact (
    ec_id,
    ec_fname,
    ec_lname,
    ec_phone
) VALUES (
    4,
    'Jam',
    'Wo',
    '6419999999'
);

INSERT INTO emergency_contact (
    ec_id,
    ec_fname,
    ec_lname,
    ec_phone
) VALUES (
    5,
    'Sam',
    'Mo',
    '6410000000'
);

--------------------------------------
--INSERT INTO patient
--------------------------------------

--adult 1

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
) VALUES (
    1,
    'Akshit',
    'Mehdiratta',
    'Street 28',
    'xyz',
    'VIC',
    '3168',
    TO_DATE('31-DEC-1996', 'DD-MM-YYYY'),
    '401518903',
    'amehdiratta@gmail.com',
    1
);

--adult 2
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
) VALUES (
    2,
    'Javesh',
    'Juneja',
    'Street 29',
    'qwe',
    'TAS',
    '7007',
    TO_DATE('05-SEP-1994', 'DD-MM-YYYY'),
    '4011011010',
    'jjuneja@gmail.com',
    1
);


-- adult 3
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
) VALUES (
    3,
    'Tanay',
    'Agarwal',
    'Street 30',
    'wer',
    'SA',
    '5800',
    TO_DATE('30-MAY-1997', 'DD-MM-YYYY'),
    '4011991999',
    'tanayagar@gmail.com',
    2
);

-- adult 4
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
) VALUES (
    4,
    'Nikhil',
    'Sopori',
    'Street 99',
    'erwt',
    'WA',
    '6151',
    TO_DATE('08-June-1995', 'DD-MM-YYYY'),
    '4088888888',
    'nsopori@gmail.com',
    2
);

-- adult 5
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
) VALUES (
    5,
    'Kamal',
    'Sukhija',
    'Street 69',
    'city',
    'NT',
    '0822',
    TO_DATE('08-Oct-1999', 'DD-MM-YYYY'),
    '4066669999',
    'ksukh@gmail.com',
    3
);

-- under age 1
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
) VALUES (
    6,
    'Chip',
    'McSnickerdoodle',
    'Street 70',
    'fift',
    'QLD',
    '4008',
    TO_DATE('08-FEB-2010', 'DD-MM-YYYY'),
    '4023452345',
    'chips@gmail.com',
    1
);

-- under age 2
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
) VALUES (
    7,
    'Oreo',
    'VanChoco',
    'Street 71',
    'fjgh',
    'NSW',
    '2839',
    TO_DATE('30-Jan-2015', 'DD-MM-YYYY'),
    '4067896789',
    'oreovan@gmail.com',
    2
);

-- under age 3
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
) VALUES (
    8,
    'Macaroon',
    'Almondini',
    'Street 72',
    'rest',
    'ACT',
    '2600',
    TO_DATE('10-Jun-2009', 'DD-MM-YYYY'),
    '4141419999',
    'macaalmnd@gmail.com',
    4
);

-- under age 4
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
) VALUES (
    9,
    'Biscotti',
    'Caramella',
    'Street 7',
    'uviiq',
    'VIC',
    '3166',
    TO_DATE('16-Sep-2012', 'DD-MM-YYYY'),
    '4019870900',
    'bisco@gmail.com',
    5
);

-- under age 5
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
) VALUES (
    10,
    'Brownie',
    'Sugar',
    'Street 33',
    'city5',
    'TAS',
    '7017',
    TO_DATE('18-aug-2017', 'DD-MM-YYYY'),
    '4050431234',
    'sweettooth@gmail.com',
    5
);
--------------------------------------
--INSERT INTO appointment
--------------------------------------

-- choosing first date as 30/05/2023
INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (1, TO_DATE('30-05-23 13:00', 'DD-MM-YY HH24:MI'), 1, 'S', 1, 'END001', 9, NULL);

INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (2, TO_DATE('30-05-23 13:30', 'DD-MM-YY HH24:MI'), 2, 'T', 3, 'GEN001', 8, NULL);

INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (3, TO_DATE('30-05-23 15:00', 'DD-MM-YY HH24:MI'), 3, 'L', 2, 'GEN002', 7, NULL);

INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (4, TO_DATE('30-05-23 15:00', 'DD-MM-YY HH24:MI'), 4, 'S', 4, 'GEN003', 6, NULL);

INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (5, TO_DATE('30-05-23 16:00', 'DD-MM-YY HH24:MI'), 9, 'S', 5, 'AST001', 5, NULL);



-- choosing second date as 20/06/2023
INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (6, TO_DATE('20-06-23 13:00', 'DD-MM-YY HH24:MI'), 11, 'L', 6, 'PER001', 8, 2);

INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (7, TO_DATE('20-06-23 15:00', 'DD-MM-YY HH24:MI'), 9, 'T', 7, 'AST001', 9, NULL);

INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (8, TO_DATE('20-06-23 16:00', 'DD-MM-YY HH24:MI'), 4, 'S', 3, 'GEN003', 7, NULL);

INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (9, TO_DATE('20-06-23 16:00', 'DD-MM-YY HH24:MI'), 8, 'L', 1, 'ORT001', 5, NULL);


INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (10, TO_DATE('20-06-23 17:30', 'DD-MM-YY HH24:MI'), 6, 'S', 2, 'PED001', 6, NULL);


-- choosing THIRD date as 20/06/2023
INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (11, TO_DATE('10-07-23 13:00', 'DD-MM-YY HH24:MI'), 5, 'T', 8, 'ORS001', 7, NULL);

INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (12, TO_DATE('10-07-23 14:00', 'DD-MM-YY HH24:MI'), 6, 'S', 9, 'PED001', 6, NULL);

INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (13, TO_DATE('10-07-23 14:30', 'DD-MM-YY HH24:MI'), 7, 'L', 10, 'PED002', 9, 7);

INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (14, TO_DATE('10-07-23 16:30', 'DD-MM-YY HH24:MI'), 8, 'T', 6, 'ORT001', 8, NULL);

INSERT INTO appointment (appt_no, appt_datetime, appt_roomno, appt_length, patient_no, provider_code, nurse_no, appt_prior_apptno) 
VALUES (15, TO_DATE('10-07-23 17:30', 'DD-MM-YY HH24:MI'), 9, 'S', 7, 'AST001', 5, 3);





