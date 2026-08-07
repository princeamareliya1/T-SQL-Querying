--23. Display the students whose SPI is greater than at least one student of every branch.
SELECT * FROM STUDENT 
WHERE SPI > ANY(SELECT MIN(SPI) FROM STUDENT GROUP BY BRANCH)

--24. Display the students whose SPI is less than all students of CE branch.
SELECT * FROM STUDENT WHERE SPI < ALL (SELECT SPI FROM STUDENT WHERE BRANCH = 'CE');

--25. Display the branch that contains the student with highest SPI.
SELECT BRANCH FROM STUDENT WHERE SPI = (SELECT MAX(SPI) FROM STUDENT);

--26. Display the students whose SPI is less than the SPI of every student in CE branch and greater than every student in ME branch.
SELECT * FROM STUDENT 
WHERE SPI < ALL (SELECT SPI FROM STUDENT WHERE BRANCH = 'CE')
  AND SPI > ALL (SELECT SPI FROM STUDENT WHERE BRANCH = 'ME');