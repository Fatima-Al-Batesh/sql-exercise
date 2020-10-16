##Basic Queries

#part1
SELECT * FROM students;
#part2
SELECT * FROM students WHERE age > 30;
#part3
SELECT * FROM students WHERE age > 30 AND Gender = 'F';
#part4
SELECT Points FROM students WHERE Name = 'Alex';
#part5
INSERT INTO students (ID, Name, Age, Gender, Points) VALUES (NULL, 'Fatima', '24', 'F', 1000);
#part6
UPDATE students SET Points=350 WHERE name = 'Basma';
#part7
UPDATE students SET Points=190 WHERE name = 'Alex';

##Creating Table

#Creating graduates table
CREATE TABLE Graduates (`ID` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
`Name` TEXT NOT NULL UNIQUE, 
`Age` INTEGER,
`Gender` TEXT,
`Points` INTEGER,
`Graduation` date);
#Part1
INSERT INTO Graduates (ID, Name, Age, Gender, Points) 
SELECT * from students WHERE name = 'Layal';
#Part2
UPDATE Graduates SET Graduation = '2018-09-08';
#Part3
DELETE FROM students WHERE name = 'Layal';

#Joins
#Part1
CREATE TABLE New AS SELECT employees.Name, Company, Date FROM employees INNER JOIN companies ON employees.Company = companies.Name;
#Part2
SELECT Name from New WHERE Date < 2000;
#Part3
SELECT Company from employees WHERE Role='Graphic Designer';

#Count and Filter
#part1
SELECT name, max(points) AS 'Max Points' FROM students;
#part2
SELECT avg(points) AS 'Average Points' FROM students;
#part3
SELECT COUNT(*) from students WHERE Points = 500;
#part4
SELECT * from students WHERE Name like '%s%';
#part5
SELECT * from students ORDER BY Points DESC;