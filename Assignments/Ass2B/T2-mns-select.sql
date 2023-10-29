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

SELECT p.provider_code,
    rpad(p.provider_title
         || '. '
         || p.provider_fname
         || ' '
         || p.provider_lname, 40, ' ')
FROM
         MNS.provider p
    JOIN MNS.specialisation s
    ON p.spec_id = s.spec_id
WHERE UPPER(s.spec_name) = UPPER('PAEDIATRIC DENTISTRY')
ORDER BY
    p.provider_lname,
    p.provider_fname,
    p.provider_code;
/*2(c)*/
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer



/*2(d)*/
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer


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
