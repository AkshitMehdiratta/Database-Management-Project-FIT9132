--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T2-mns-select.sql

--Student ID: 34165479
--Student Name: Akshit Mehdiratta
--Unit Code: FIT9132
--Applied Class No: 04_OnCampus

/* Comments for your marker:

I  have made commits to T2 file seperately


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
    a.appt_no                                         AS appointment_number,
    to_char(a.appt_datetime, 'YYYY-MM-DD HH24:MI:SS') AS appointment_date_time,
    a.patient_no                                      AS patient_number,
    ( p.patient_fname
      || ' '
      || p.patient_lname )                              AS patient_full_name,
    lpad(to_char(SUM(s.apptserv_fee + s.apptserv_itemcost),
                 '$99990.99'),
         30)                                          AS appointment_total_cost
FROM
         mns.appointment a
    JOIN mns.patient   p
    ON a.patient_no = p.patient_no
    JOIN mns.appt_serv s
    ON a.appt_no = s.appt_no
WHERE
    (
        SELECT
            SUM(apptserv_fee) + SUM(apptserv_itemcost)
        FROM
            mns.appt_serv
        WHERE
            appt_no = a.appt_no
    ) = (
        SELECT
            MAX(SUM(apptserv_fee) + SUM(apptserv_itemcost))
        FROM
            mns.appt_serv
        GROUP BY
            appt_no
    )
GROUP BY
    a.appt_no,
    a.appt_datetime,
    a.patient_no,
    (
        p.patient_fname
        || ' '
        || p.patient_lname
    )
ORDER BY
    appointment_number;



/*2(e)*/
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    a.service_code,
    s.service_desc AS service_description,
    lpad(to_char(s.service_stdfee, '$99990.99'),
         17)       AS standard_fee,
    lpad(to_char(AVG(a.apptserv_fee - s.service_stdfee),
                 '$99990.99'),
         29)       AS service_fee_differential
FROM
         (
        SELECT
            appt_no,
            service_code,
            apptserv_fee
        FROM
            mns.appt_serv
    ) a
    JOIN mns.service s
    ON a.service_code = s.service_code
GROUP BY
    a.service_code,
    s.service_desc,
    lpad(to_char(s.service_stdfee, '$99990.99'),
         17)
ORDER BY
    a.service_code;
    
/*2(f)*/
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    p.patient_no                                                           AS patient_number
    ,
    rpad(p.patient_fname
         || ' '
         || p.patient_lname, 20)                                                AS patientname
         ,
    ( EXTRACT(YEAR FROM current_date) - EXTRACT(YEAR FROM p.patient_dob) ) AS currentage
    ,
    COUNT(a.appt_no)                                                       AS numappts
    ,
    lpad(to_char((SUM(
        CASE
            WHEN a.appt_prior_apptno IS NOT NULL THEN
                1
            ELSE
                0
        END
    ) * 100.0) / COUNT(a.appt_no),
                 '990.9')
         || '%',
         13)                                                               AS followups
FROM
    mns.patient     p
    LEFT JOIN mns.appointment a
    ON p.patient_no = a.patient_no
GROUP BY
    p.patient_no,
    p.patient_fname,
    p.patient_lname,
    p.patient_dob
ORDER BY
    p.patient_no;

/*2(g)*/
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
SELECT
    p.provider_code AS pcode,
    CASE
        WHEN COUNT(DISTINCT a.appt_no) IS NULL THEN '-'
        ELSE LPAD(TO_CHAR(COUNT(DISTINCT a.appt_no), '99999'),16)
    END AS numberappts,
    CASE
        WHEN SUM(a.apptserv_fee) IS NULL THEN lpad('-',13)
        ELSE LPAD('$' || TO_CHAR(SUM(a.apptserv_fee), '99990.00'), 13)
    END AS totalfees,
   CASE
        WHEN SUM(CASE WHEN asitem.as_id IS NOT NULL THEN 1 ELSE 0 END) = 0 THEN lpad('-',11)
        ELSE LPAD(TO_CHAR(SUM(CASE WHEN asitem.as_id IS NOT NULL THEN 1 ELSE 0 END), '99999'),11)
    END AS noitems
FROM
    mns.provider         p
    LEFT JOIN (
        SELECT
            a.provider_code,
            aptserve.appt_no,
            aptserve.apptserv_fee
        FROM
                 mns.appointment a
            JOIN mns.appt_serv aptserve
            ON a.appt_no = aptserve.appt_no
        WHERE
            a.appt_datetime BETWEEN TO_DATE('2023-09-10 09:00:00', 'YYYY-MM-DD HH24:MI:SS'
            ) AND TO_DATE('2023-09-14 17:00:00', 'YYYY-MM-DD HH24:MI:SS')
    )                    a
    ON p.provider_code = a.provider_code
    LEFT JOIN mns.apptservice_item asitem
    ON a.appt_no = asitem.as_id
GROUP BY
    p.provider_code
ORDER BY
    p.provider_code;
