--1.
SELECT *, 
YEAR(`date_of_birth`) 
FROM `students` 
WHERE YEAR(`date_of_birth`) = 1990;

--2.
SELECT *
FROM  `courses`
WHERE `cfu` > 10;

--3.



--4.
SELECT *
FROM `courses`
WHERE `period` = 'I semestre'
AND `year` = 1;


--5.




--6.
SELECT *
FROM `degrees`
WHERE `level` = 'magistrale';

--7.
SELECT COUNT(*)
FROM `departments`;

--8.
