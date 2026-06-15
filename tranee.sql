CREATE TABLE IF NOT EXISTS tranee(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER
);
CREATE TABLE IF NOT EXISTS program(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    course_name TEXT

);
CREATE TABLE IF NOT EXISTS enrollment(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tranee_id INTEGER,
    program_id INTEGER,
    UNIQUE (tranee_id,program_id),
    FOREIGN KEY ( tranee_id)REFERENCES tranee(id),
    FOREIGN KEY ( program_id)REFERENCES program(id)

);
  
INSERT INTO tranee(name,age)
 VALUES ('Remraf',20);
 INSERT INTO program(course_name)
 VALUES ('Database');
 INSERT INTO enrollment(tranee_id,program_id)
 VALUES (1,1);
 INSERT INTO tranee(name,age)
 VALUES ('Raf',22);
 INSERT INTO program(course_name)
 VALUES ('Dataanlysis');
 INSERT INTO enrollment(tranee_id,program_id)
 VALUES (2,2);


 SELECT * FROM enrollment; 
 SELECT * FROM tranee
 JOIN enrollment ON tranee.id = enrollment.tranee_id; 
  SELECT name FROM tranee;


  
  CREATE TABLE IF NOT EXISTS(
    id INTEGER PRIMATY KEY AUTOINCREMENT,
    name TEXt,
    email TEXT UNIQUE,
    age INTEGER CHECK ( age >= 21),
    country DEFAULT 'Ghana'
  );
  SELECT * FROM tranee WHERE age > (SELECT AVG(age) FROM students);