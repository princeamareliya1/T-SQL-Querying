--16. Display students whose SPI is greater than the previous student and less than the next student.
SELECT SNAME, SPI, BRANCH
FROM (
    SELECT SNAME, SPI, BRANCH,
           LAG(SPI) OVER (ORDER BY SPI DESC) AS LAG_SPI,
           LEAD(SPI) OVER (ORDER BY SPI DESC) AS LEAD_SPI
    FROM STUDENT
) AS Ranked
WHERE SPI > LAG_SPI AND SPI < LEAD_SPI;

--17. Display branch-wise second topper students.
SELECT SNAME, SPI, BRANCH
FROM (
    SELECT SNAME, SPI, BRANCH,
           DENSE_RANK() OVER (PARTITION BY BRANCH ORDER BY SPI DESC) AS D_R
    FROM STUDENT
) AS Ranked
WHERE D_R = 2;

--18. Display students whose rank and dense rank are different.
SELECT SNAME,SPI,RNK,DENSE_RNK
FROM
(SELECT SNAME,SPI,
RANK() OVER(ORDER BY SPI DESC) AS RNK ,
DENSE_RANK() OVER(ORDER BY SPI DESC) AS DENSE_RNK
FROM STUDENT) AS RANKED
WHERE DENSE_RNK!=RNK

--19. Display consecutive students having same branch ordered by SPI.
SELECT SNAME, SPI, BRANCH
FROM (
    SELECT SNAME, SPI, BRANCH,
           LAG(BRANCH) OVER (ORDER BY SPI) AS PREV_BRANCH,
           LEAD(BRANCH) OVER (ORDER BY SPI) AS NEXT_BRANCH
    FROM STUDENT
) AS Ranked
WHERE BRANCH = PREV_BRANCH OR BRANCH = NEXT_BRANCH
ORDER BY SPI

--20. Display students whose SPI difference with previous student is maximum.
SELECT *
FROM (
    SELECT 
        StudentName,
        SPI,
        LAG(SPI) OVER (ORDER BY StudentID) AS PreviousSPI,
        ABS(SPI - LAG(SPI) OVER (ORDER BY StudentID)) AS Difference
    FROM Student
) AS T
WHERE Difference = (
    SELECT MAX(Difference)
    FROM (
        SELECT ABS(SPI - LAG(SPI) OVER (ORDER BY StudentID)) AS Difference
        FROM Student
    ) AS X
);