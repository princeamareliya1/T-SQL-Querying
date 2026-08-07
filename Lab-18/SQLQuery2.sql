--14. Display the students whose SPI is greater than all students of ME branch.
SELECT * FROM STUDENT WHERE SPI > ALL (SELECT SPI FROM STUDENT WHERE BRANCH = 'ME');

--15. Display the students whose SPI is less than any student of ME branch.
SELECT * FROM STUDENT WHERE SPI < ANY (SELECT SPI FROM STUDENT WHERE BRANCH = 'ME');

--16. Display the student details whose SPI is not equal to any SPI of EC branch students.
SELECT * FROM STUDENT WHERE SPI NOT IN (SELECT SPI FROM STUDENT WHERE BRANCH = 'EC');

--17. Display the names of students who scored higher SPI than student of RNO 103.
SELECT SNAME FROM STUDENT WHERE SPI > (SELECT SPI FROM STUDENT WHERE STDID = 103);

--18. Display the students whose SPI is greater than average SPI of their own branch.
SELECT * FROM STUDENT S WHERE SPI > (SELECT AVG(SPI) FROM STUDENT WHERE BRANCH = S.BRANCH);

--19. Display the students whose SPI is greater than the average SPI of CE branch but greater than the maximum SPI of ME branch.
SELECT * FROM STUDENT 
WHERE SPI > (SELECT AVG(SPI) FROM STUDENT WHERE BRANCH = 'CE')
  AND SPI > (SELECT MAX(SPI) FROM STUDENT WHERE BRANCH = 'ME');

--20. Display the branch names whose average SPI is greater than the overall average SPI.
SELECT BRANCH FROM STUDENT GROUP BY BRANCH HAVING AVG(SPI) > (SELECT AVG(SPI) FROM STUDENT);

--21. Display the students who have maximum SPI in their respective branch.
SELECT * FROM STUDENT S WHERE SPI = (SELECT MAX(SPI) FROM STUDENT WHERE BRANCH = S.BRANCH);

--22. Display the students whose SPI is greater than their average SPI of their branch and greater than overall average SPI.
SELECT * FROM STUDENT S 
WHERE SPI > (SELECT AVG(SPI) FROM STUDENT WHERE BRANCH = S.BRANCH)
  AND SPI > (SELECT AVG(SPI) FROM STUDENT);