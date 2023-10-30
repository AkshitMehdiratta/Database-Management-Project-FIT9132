--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T3-mns-json.sql

--Student ID: 34165479
--Student Name: Akshit Mehdiratta
--Unit Code: FIT9132
--Applied Class No: 04_OnCampus

/* Comments for your marker:




*/

/*3(a)*/
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT TO GENERATE 
-- THE COLLECTION OF JSON DOCUMENTS HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SET PAGESIZE 300

SELECT
    JSON_OBJECT ('_id' VALUE a.appt_no,
                 'datetime' VALUE TO_CHAR(a.appt_datetime, 'DD/MM/YYYY HH24:MI'),
                 'provider_code' VALUE p.provider_code,
                 'dob' VALUE to_char(studob, 'dd-mm-yyyy'),
                 'enrolmentInfo' VALUE JSON_ARRAYAGG(
                                JSON_OBJECT('unitcode' VALUE unitcode,
                                'unitname' VALUE unitname,
                                'year' VALUE to_char(ofyear, 'yyyy'),
                                'semester' VALUE ofsemester,
                                'mark' VALUE enrolmark,
                                'grade' VALUE enrolgrade))
    FORMAT JSON )
    || ','

