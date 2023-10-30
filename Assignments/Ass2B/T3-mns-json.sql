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
        JSON_OBJECT(
            '_id' VALUE a.appt_no,
                    'datetime' VALUE to_char(a.appt_datetime, 'DD/MM/YYYY HH24:MI'),
                    'provider_code' VALUE p.provider_code,
                    'provider_name' VALUE p.provider_title
                                          || '. '
                                          || p.provider_fname
                                          || ' '
                                          || p.provider_lname,
                    'item_totalcost' VALUE nvl(SUM(i.item_stdcost * ai.as_item_quantity
                    ),
                                               0),
                    'no_of_items' VALUE COUNT(i.item_id),
                    'items' VALUE JSON_ARRAYAGG(
                JSON_OBJECT(
                    'id' VALUE i.item_id,
                    'desc' VALUE i.item_desc,
                    'standardcost' VALUE i.item_stdcost,
                    'quantity' VALUE i.item_stock
                )
            )
        FORMAT JSON)
        || ','
FROM
         mns.appointment a
    JOIN mns.apptservice_item ai
    ON a.appt_no = ai.as_id
    JOIN mns.provider         p
    ON a.provider_code = p.provider_code
    JOIN mns.item             i
    ON ai.item_id = i.item_id
GROUP BY
    a.appt_no,
    a.appt_datetime,
    p.provider_code,
    p.provider_title,
    p.provider_fname,
    p.provider_lname,
    i.item_id,
    i.item_desc,
    i.item_stdcost,
    i.item_stock
ORDER BY
    a.appt_no;