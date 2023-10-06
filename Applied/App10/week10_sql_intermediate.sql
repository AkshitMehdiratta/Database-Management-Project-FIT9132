/*
Databases Week 10 Applied Class
week10_sql_intermediate.sql

student id: 
student name:
last modified date:

*/

--1
select max(enrolmark) as enrol_mark
FROM
    uni.enrolment
WHERE
    upper(unitcode) = 'FIT9136"
and ofsemester = 2
and to_char(ofyear, '
YYYY ') = ' 2019 ';




--2 
/* 2. Find the average mark for FIT2094 in semester 2, 2020. Show the average mark with two
decimal places. Name the output column as average_mark.*/

select to char(Avg(enrolmark) , '9990.99') as average_mark from uni.enrolment
where
upper(unitcode) = 'FIT2094'
    AND ofsetmeter = 2
    AND  to_char(of_year, 'yyyy') = '2020'   


--3

/* 3. List the average mark for each offering of FIT9136. A unit offering is an instance of a
particular unit in a particular semester - for example FIT1045 offered in semester 1 of 2019 -
is a unit offering. In the listing, include the year and semester number. Sort the result
according to the year then the semester.*/

SELECT
    ofsemester,
    tochar(ofyear, 'yyyy') AS yearinfo,
    tochar(AVG(enrolmark),
           '990.00')       AS enrol_avgmark * from uni.enrolment
where upper(unitcode) =
        'FIRT9136';
    group
    by
        ofsemester, ofyear;
    order
    by
        yearinfo, ofsemester;


--4
/* Find the number of students enrolled in FIT1045 in the year 2019, under the following
conditions (note two separate selects are required):
a. Repeat students are counted multiple times in each semester of 2019
b. Repeat students are only counted once across 2019.*/





--5




--6



--7



--8



--9



--10




--11



--12



--13







