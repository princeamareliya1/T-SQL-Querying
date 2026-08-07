CREATE TABLE STUDENT (
    STDID INT,
    SNAME VARCHAR(50),
    CITY VARCHAR(50),
    SPI DECIMAL(4,2),
    BRANCH VARCHAR(50)
);

INSERT INTO STUDENT (STDID, SNAME, CITY, SPI, BRANCH) VALUES
(101, 'HETVI', 'RAJKOT', 7.40, 'COMPUTER'),
(102, 'RAJ', 'MORBI', 9.50, 'MECHANICAL'),
(103, 'VISHAL', 'RAJKOT', 9.00, 'CIVIL'),
(104, 'DEEP', 'SURAT', 8.80, 'COMPUTER'),
(105, 'DHARMIK', 'BARODA', 8.80, 'CHEMICAL'),
(106, 'KRUNAL', 'VAPI', 9.00, 'CIVIL'),
(107, 'RIYA', 'NAVSARI', 5.50, 'COMPUTER'),
(108, 'VRUNDA', 'KUTCH', 7.60, 'ELECTRICAL'),
(109, 'SMAIR', 'JAMNAGAR', 6.80, 'EC'),
(110, 'PARAG', 'SURAT', 7.00, 'CHEMICAL'),
(111, 'HARSH', 'RAJKOT', 4.00, NULL);






SELECT * FROM STUDENT

--1. Display the details of students whose SPI is greater than the average SPI.
SELECT * FROM STUDENT WHERE SPI > (SELECT AVG(SPI) FROM STUDENT);

--2. Display the names of students whose SPI is less than the average SPI.
SELECT SNAME FROM STUDENT WHERE SPI < (SELECT AVG(SPI) FROM STUDENT);

--3. Display the student details who has the highest SPI.
SELECT TOP 1 * FROM STUDENT ORDER BY SPI DESC;

--4. Display the student details who has the lowest SPI.
SELECT TOP 1 * FROM STUDENT ORDER BY SPI ASC;

--5. Display the students whose SPI is greater than SPI of student DHARMIK.
SELECT * FROM STUDENT WHERE SPI > (SELECT SPI FROM STUDENT WHERE SNAME = 'DHARMIK');

--6. Display the students whose SPI is less than SPI of student RIYA.
SELECT * FROM STUDENT WHERE SPI < (SELECT SPI FROM STUDENT WHERE SNAME = 'RIYA');

--7. Display the students who belong to the same branch as KRUNAL.
SELECT * FROM STUDENT WHERE BRANCH = (SELECT BRANCH FROM STUDENT WHERE SNAME = 'KRUNAL');

--8. Display the students whose branch is different from HETVI.
SELECT * FROM STUDENT WHERE BRANCH <> (SELECT BRANCH FROM STUDENT WHERE SNAME = 'HETVI');

--9. Display the second highest SPI from RESULT table.
SELECT MAX(SPI) FROM RESULT WHERE SPI < (SELECT MAX(SPI) FROM RESULT);

--10. Display the second lowest SPI from RESULT table.
SELECT MIN(SPI) FROM RESULT WHERE SPI > (SELECT MIN(SPI) FROM RESULT);

--11. Display the names of students whose SPI is above branch-wise average SPI.
SELECT SNAME, BRANCH, SPI 
FROM STUDENT S
WHERE SPI > (SELECT AVG(SPI) FROM STUDENT WHERE BRANCH = S.BRANCH);

--12. Display the branch having maximum average SPI.
SELECT TOP 1 BRANCH FROM STUDENT GROUP BY BRANCH ORDER BY AVG(SPI) DESC;

--13. Display the branch having minimum average SPI.
SELECT TOP 1 BRANCH FROM STUDENT GROUP BY BRANCH ORDER BY AVG(SPI) ASC;
