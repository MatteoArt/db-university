--EX - Query con JOIN

--1. 
SELECT `students`.`*`, `degrees`.`name`, `degrees`.`level`, `degrees`.`address`
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` LIKE '%Laurea in Economia%';

--2.
SELECT `degrees`.`*`,`departments`.`id`, `departments`.`name`, `departments`.`email`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze' AND 
`degrees`.`level` = 'magistrale';


--3.
SELECT `courses`.`*`, `course_teacher`.`teacher_id`, `teachers`.`id`, 
`teachers`.`name`, `teachers`.`surname`
FROM `courses`
INNER JOIN `course_teacher` 
ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers`
ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `teachers`.`id` = 44;

--4.
SELECT `students`.`name`, `students`.`surname`, `degrees`.`name`, `degrees`.`level`,
`departments`.`name`
FROM `students`
INNER JOIN `degrees`
ON `degrees`.`id` = `students`.`degree_id`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`name`, `students`.`surname` ASC;


--5.
SELECT `degrees`.`name`, `degrees`.`level`, `courses`.`name`, `courses`.`year`,
`courses`.`cfu`, `teachers`.`name`, `teachers`.`surname`
FROM `degrees`
INNER JOIN `courses` 
ON `courses`.`degree_id` = `degrees`.`id`
INNER JOIN `course_teacher`
ON `course_teacher`.`course_id` = `courses`.`id`
INNER JOIN `teachers`
ON `course_teacher`.`teacher_id` = `teachers`.`id`;

--6.
SELECT `teachers`.`name`, `teachers`.`surname`, `teachers`.`email`,
`departments`.`name`
FROM `teachers`
INNER JOIN `course_teacher`
ON `course_teacher`.`teacher_id` = `teachers`.`id`
INNER JOIN `courses`
ON `course_teacher`.`course_id` = `courses`.`id`
INNER JOIN `degrees`
ON `courses`.`degree_id` = `degrees`.`id`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = 'Dipartimento di Matematica';

--7. BONUS 








--QUERY CON GROUP BY

--1.
SELECT YEAR(`enrolment_date`) AS `year`, COUNT(`id`) AS `number_of_members`
FROM `students`
GROUP BY `year`;

--2.
SELECT `office_address`, COUNT(`id`) AS `number_teachers`
FROM `teachers`
GROUP BY `office_address`;

--3.
SELECT `exam_id` AS `appello_esame`, ROUND(AVG(`vote`)) AS `media_voti`
FROM `exam_student`
GROUP BY `exam_id`;

--4. 
SELECT `degrees`.`department_id` AS `numero_dipartimento`, `departments`.`name` AS `nome_dipartimento`,
COUNT(`degrees`.`id`) as `corsi_di_laurea`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
GROUP BY `department_id`;