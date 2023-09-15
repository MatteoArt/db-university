--EX - Query con JOIN

--1. 
SELECT * FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` LIKE '%Laurea in Economia%';