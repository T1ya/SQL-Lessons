-- 1. Вывести все записи из таблицы **employees**.
SELECT * FROM employees;
-- 2. Вывести только **имена** и **фамилии** сотрудников из таблицы **employees**.
SELECT first_name, last_name FROM employees;
-- 3. Вывести всех сотрудников, работающих в отделе с идентификатором **5**.
SELECT * FROM employees WHERE department_id = 5;
-- 4. Вывести все уникальные значения **должностей** сотрудников из таблицы **employees**.
SELECT DISTINCT job_title FROM employees;
-- 5. Вывести сотрудников, чья **зарплата превышает 5000**.
SELECT * FROM employees WHERE salary > 5000 ORDER BY salary;
-- 6. Вывести сотрудников, чья фамилия **начинается с буквы 'S'**.
SELECT * FROM employees WHERE last_name LIKE 'S%';
-- 7. Вывести сотрудников, которые были **наняты после 1 января 2020 года**.
SELECT * FROM employees WHERE hire_date > '2020_01_01';
-- 8. Вывести **имена и фамилии** сотрудников, объединенные в одно поле через пробел, и их **зарплаты**.
SELECT first_name || ', ' || last_name || ' - ' || salary || ' €' AS info_string FROM employees;
-- 9. Вывести сотрудников, чьи **фамилии содержат подстроку 'son'**.
SELECT * FROM employees WHERE last_name LIKE '%son%';
-- 10. Вывести **количество сотрудников** в каждом отделе.
SELECT COUNT (*) || ' people in department ' || department_id AS number_of_employees FROM employees GROUP BY department_id ;
-- 11. Вывести **среднюю зарплату** по каждому отделу.
SELECT 'Average salary in dep ' || department_id || ' = ' || ROUND(AVG(salary), 2) FROM employees GROUP BY department_id;
-- 12. Вывести **минимальную и максимальную зарплаты** сотрудников.
SELECT MIN(salary), MAX(salary) FROM employees;
-- 13. Вывести сотрудников, чьи **зарплаты находятся в диапазоне от 4000 до 6000**.
SELECT * FROM employees WHERE salary BETWEEN 4000 AND 6000;
-- 14. Вывести **отделы** и **сумму зарплат** всех сотрудников в каждом отделе.
SELECT department_id, SUM(salary) FROM employees GROUP BY department_id;
-- 15. Вывести сотрудников, у которых **нет менеджера** (*manager_id IS NULL*).
SELECT * FROM employees WHERE manager_id IS NULL;
-- 16. Вывести **фамилии сотрудников в порядке возрастания**.
SELECT last_name FROM employees ORDER BY last_name;
-- 17. Вывести **10 сотрудников с наибольшими зарплатами**.
SELECT * FROM employees ORDER BY salary DESC LIMIT 10 ;
-- 18. Вывести сотрудников, **нанятых в 2019 году**.
SELECT * FROM employees WHERE EXTRACT(YEAR FROM hire_date) = 2019;
-- 19. Вывести **количество сотрудников с каждой должностью**.
SELECT COUNT (*) || ' '|| job_title FROM employees GROUP BY job_title;
-- 20. Вывести всех **менеджеров** (*manager_id IS NOT NULL*) и их **подчиненных**.
SELECT manager_id, COUNT (*) AS subordinates FROM employees WHERE manager_id IS NOT NULL GROUP BY manager_id ORDER BY manager_id;
-- 21. Вывести **имена и фамилии сотрудников**, а также **идентификатор их отдела**, включая отдел с идентификатором **10**.
SELECT first_name, last_name, department_id FROM employees WHERE department_id IS NOT NULL OR department_id = 10;
-- 22. Вывести **названия должностей** и **количество сотрудников** на каждой должности, только если их количество **больше 5**.
SELECT job_title, COUNT (*) AS total_employees FROM employees GROUP BY job_title HAVING COUNT (*) > 1;
-- 23. Вывести **среднюю зарплату сотрудников**, работающих **под руководством менеджера с идентификатором 3**.
SELECT ROUND(AVG(salary), 2) AS average_salary FROM employees WHERE manager_id = 3;
-- 24. Вывести **названия должностей** и **средние зарплаты сотрудников** на каждой должности.
SELECT job_title, ROUND(AVG(salary), 2) AS average_salary from employees GROUP BY job_title;
-- 25. Вывести сотрудников, которые работают в **отделах с идентификаторами 1, 3 и 5**.
SELECT * FROM employees WHERE department_id IN (1,3,5);









