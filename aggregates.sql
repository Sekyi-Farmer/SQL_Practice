CREATE TABLE IF NOT EXISTS players (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT,
    Course TEXT,
    Age INTEGER

);
INSERT INTO players(Name,Course,Age) VALUES('Samuel','physics',20);
INSERT INTO players(Name,Course,Age) VALUES('Ama','maths',19);
INSERT INTO players(Name,Course,Age) VALUES('Kojo','physics',22);
INSERT INTO players(Name,Course,Age) VALUES('Yaw','maths',21);
INSERT INTO players(Name,Course,Age) VALUES('Sena','physics',21);

SELECT Course, COUNT(*) AS Total_Course FROM players GROUP BY Course;
SELECT Course,AVG(Age) AS  Average_age FROM players GROUP BY Course;
SELECT * FROM players;
SELECT Course, MIN(age) AS Smallest_age FROM players GROUP BY Course;
SELECT Course, COUNT(*) AS Total_Num FROM players  WHERE Age > 20 
GROUP BY Course HAVING COUNT(*) > 2;