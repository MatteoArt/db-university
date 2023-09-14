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
SELECT *, 
TIMESTAMPDIFF(YEAR,`date_of_birth`,CURDATE()) as `age`
FROM `students`
WHERE TIMESTAMPDIFF(YEAR,`date_of_birth`,CURDATE()) > 30;


--4.
SELECT *
FROM `courses`
WHERE `period` = 'I semestre'
AND `year` = 1;


--5.
SELECT * 
FROM `exams` 
WHERE IF(`hour` > '14:00', 'pomeriggio', 'mattino') = 'pomeriggio'
AND (`date` = '2020-06-20');



--6.
SELECT *
FROM `degrees`
WHERE `level` = 'magistrale';

--7.
SELECT COUNT(*)
FROM `departments`;

--8.
SELECT COUNT(*)
FROM `teachers`
WHERE `phone` IS NULL;