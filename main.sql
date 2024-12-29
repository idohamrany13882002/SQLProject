exc.1
---
SELECT Courses.*, Lecturers.name FROM Courses
INNER JOIN Lecturers  ON Courses.lecturer_id = Lecturers.lecturer_id;
---

exc.2
---
SELECT Courses.*, Lecturers.name FROM Courses
LEFT JOIN Lecturers  ON Courses.lecturer_id = Lecturers.lecturer_id;
---

exc.3
---
SELECT Courses.*, Lecturers.name FROM Courses
RIGHT JOIN Lecturers  ON Courses.lecturer_id = Lecturers.lecturer_id;
---

exc.4
---
SELECT Courses.*, Lecturers.name FROM Courses
LEFT JOIN Lecturers ON Courses.lecturer_id= Lecturers.lecturer_id
WHERE Courses.lecturer_id IS NULL;
---

exc.5
---
SELECT  Lecturers.* FROM Courses
LEFT JOIN Lecturers ON Courses.lecturer_id= Lecturers.lecturer_id
WHERE Courses.lecturer_id IS NULL;
---

exc.6
---
SELECT  Courses.*,Lecturers.name FROM Courses
FULL JOIN Lecturers ON Courses.lecturer_id= Lecturers.lecturer_id;
---

exc.7
---
SELECT Lecturers.*, Courses.name FROM Courses
FULL JOIN Lecturers ON Courses.lecturer_id= Lecturers.lecturer_id
WHERE Courses.lecturer_id IS NULL;
---

exc.8
---
SELECT * FROM Lecturers
WHERE name LIKE '%i%';
---

exc.9
---
SELECT COUNT (name) FROM Lecturers;
---

exc.10
---
SELECT COUNT (name) FROM Courses;
---

exc.11
---
ALTER TABLE Courses
ADD COLUMN weekly_hours;

UPDATE Courses SET weekly_hours = 4 WHERE course_id = 1;
UPDATE Courses SET weekly_hours = 6 WHERE course_id = 2;
UPDATE Courses SET weekly_hours = 8 WHERE course_id = 3;
UPDATE Courses SET weekly_hours = 4 WHERE course_id = 4;
UPDATE Courses SET weekly_hours = 6 WHERE course_id = 5;
UPDATE Courses SET weekly_hours = 8 WHERE course_id = 6;
UPDATE Courses SET weekly_hours = 4 WHERE course_id = 7;
UPDATE Courses SET weekly_hours = 6 WHERE course_id = 8;
UPDATE Courses SET weekly_hours = 8 WHERE course_id = 9;
UPDATE Courses SET weekly_hours = 4 WHERE course_id = 10;
UPDATE Courses SET weekly_hours = 6 WHERE course_id = 11;
UPDATE Courses SET weekly_hours = 8 WHERE course_id = 12;
UPDATE Courses SET weekly_hours = 4 WHERE course_id = 13;
---

exc.12
---
SELECT Courses.weekly_hours, count(courses.Course_id) AS total_courses FROM courses
GROUP BY weekly_hours;
---

exc.13
---
SELECT Courses.*, Lecturers.name FROM Courses
JOIN Lecturers ON Courses.lecturer_id = Lecturers.lecturer_id
WHERE Courses.weekly_hours = 8;
---

exc.14
---
DELETE FROM Courses WHERE lecturer_id IS NULL AND weekly_hours=4;
---

exc.15
---
SELECT Departments.*, Employees.name FROM Employees
INNER JOIN Departments ON Departments.department_id = Employees.department_id;
---

exc.16
---
SELECT Employees.name, Departments.* FROM Employees
LEFT JOIN Departments ON Departments.department_id = Employees.department_id;
---

exc.17
---
SELECT Employees.* FROM Employees
LEFT JOIN  Departments ON Employees.department_id= Departments.department_id
WHERE Employees.department_id IS NULL;
---

exc.18
---
SELECT Employees.department_id, COUNT (Employees.name) FROM Employees
GROUP BY Employees.department_id;
---

exc.19
---
SELECT Employees.*, AVG(salary) FROM Employees
GROUP BY Employees.department_id;
---

exc.20
---
SELECT Employees.name, MAX(salary), Employees.department_id FROM Employees
GROUP BY department_id;
---

exc.21
---
SELECT Employees.*,Departments.* FROM Employees
JOIN Departments ON Employees.department_id= Departments.department_id
ORDER BY Employees.seniority;
---

exc.22
---
SELECT Employees.seniority, avg(Employees.salary) AS avg_salary FROM Employees
GROUP BY Employees.seniority;
---

exc.23a
---
ALTER TABLE Departments
ADD COLUMN sum_employees INTEGER;
ALTER TABLE Departments
ADD COLUMN avg_salary INTEGER;
ALTER TABLE Departments
ADD COLUMN max_salary INTEGER;
ALTER TABLE Departments
ADD COLUMN avg_seniority INTEGER;
---

exc.23b
---

---
