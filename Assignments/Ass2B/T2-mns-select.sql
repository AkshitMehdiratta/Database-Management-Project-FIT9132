--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T2-mns-select.sql

--Student ID: 34165479
--Student Name: Akshit Mehdiratta
--Unit Code: FIT9132
--Applied Class No: 04_OnCampus

/* Comments for your marker:




*/

/*2(a)*/
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    item_id,
    item_desc,
    item_stdcost,
    item_stock
FROM
    mns.item
WHERE
        item_stock > 50
    AND item_desc LIKE '%composite%'
ORDER BY
    item_stock DESC,
    item_id;



/*2(b)*/
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    p.provider_code,
    rpad(p.provider_title
         || '. '
         || p.provider_fname
         || ' '
         || p.provider_lname, 40, ' ') AS "Provider Name"
FROM
         mns.provider p
    JOIN mns.specialisation s
    ON p.spec_id = s.spec_id
WHERE
    upper(s.spec_name) = upper('PAEDIATRIC DENTISTRY')
ORDER BY
    p.provider_lname,
    p.provider_fname,
    p.provider_code;
    
    
/*2(c)*/
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    service_code,
    service_desc,
    lpad(to_char(service_stdfee, '$99990.99'),
         15) AS service_fee
FROM
    mns.service
WHERE
    service_stdfee > (
        SELECT
            ( AVG(service_stdfee) )
        FROM
            mns.service
    )
ORDER BY
    service_stdfee DESC,
    service_code;


/*2(d)*/
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
a.appt_no as Appointment_Number,
a.appt_datetime as Appointment_DateTime,
a.patient_no as Patient_Number,
(p.patient_fname || ' ' || p.patient_lname) as Patient_Full_Name,
to_char(
(sum(s.apptserv_fee) + sum(s.apptserv_itemcost)),'$99990.99'
) as "Appointment_Total_Cost"
from
mns.appointments a
join mns.patients p on a.patient_no = p.patient_no
join mns.appt_serv s on a.appt_no = s.appt_no
group by
Appointment_Number, Appointment_DateTime, Patient_Number, Patient_Full_Name, Appointment_Total_Cost
Having
(SUM(s.apptserv_fee) + SUM(s.apptserv_itemcost)) = max(+)
order by
Appointment_Number

/*2(e)*/
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer



/*2(f)*/
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer



/*2(g)*/
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
