DROP TABLE IF EXISTS students;
CREATE TABLE  students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER 
);
INSERT INTO students(
    id,name,age
)
VALUES (1,'farmer',12);
INSERT INTO students(id,name,age) VALUES(2,'John',22);
INSERT INTO students(id,name,age) VALUES(3,'Ama',23);
SELECT * FROM students WHERE age > 20;
SELECT name FROM students WHERE age < 20;
SELECT * FROM students ORDER BY name;
SELECT * FROM students ORDER BY age ASC;
UPDATE students SET age = 25 WHERE id = 1;
UPDATE students SET name = 'Farmer' WHERE name = 'farmer';
SELECT * FROM students;