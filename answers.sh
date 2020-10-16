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
