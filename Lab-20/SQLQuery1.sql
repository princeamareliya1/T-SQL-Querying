--1. Display rank of students based on SPI.
SELECT *,RANK() OVER(ORDER BY SPI DESC) AS RNK 
FROM STUDENT

--2. Display dense rank of students based on SPI.
SELECT *,DENSE_RANK() OVER(ORDER BY SPI DESC) AS RNK 
FROM STUDENT

--3. Display sequential number for each student record.
SELECT *,ROW_NUMBER() OVER(ORDER BY SPI DESC) AS R_NO
FROM STUDENT

--4. Display branch-wise rank of students.
SELECT *,RANK() OVER(PARTITION BY BRANCH ORDER BY SPI DESC) AS RNK 
FROM STUDENT

--5. Display branch-wise dense ranking of students.
SELECT *,DENSE_RANK() OVER(PARTITION BY BRANCH ORDER BY SPI DESC) AS DENSE_RNK 
FROM STUDENT

--6. Display branch-wise sequential numbering of students.
SELECT *,ROW_NUMBER() OVER(PARTITION BY BRANCH ORDER BY SPI DESC) AS R_NUM 
FROM STUDENT

--7. Display SNAME, Current SPI, Previous SPI and SPI Difference with previous student in ascending order of
--SPI.
SELECT 
    SNAME,
    SPI,
    LAG(SPI) OVER(ORDER BY SPI DESC) AS LAG_SPI,
    (LAG(SPI) OVER(ORDER BY SPI DESC) - SPI) AS DIFF
FROM STUDENT;


--8. Display SNAME, Current SPI, Next SPI and SPI Difference with next student in descending order of SPI.
SELECT 
    SNAME,
    SPI,
    LEAD(SPI) OVER(ORDER BY SPI DESC) AS LAG_SPI,
    (LEAD(SPI) OVER(ORDER BY SPI DESC) - SPI) AS DIFF
FROM STUDENT;


--9. Display top 3 students based on SPI.
SELECT SNAME, SPI, D_R
FROM (
    SELECT SNAME, SPI,
           DENSE_RANK() OVER (ORDER BY SPI DESC) AS D_R
    FROM STUDENT
) AS Ranked
WHERE D_R <= 3

--10. Display top 2 students from each branch.
SELECT SNAME, SPI, D_R
FROM (
    SELECT SNAME, SPI,
           DENSE_RANK() OVER (PARTITION BY BRANCH ORDER BY SPI DESC) AS D_R
    FROM STUDENT
) AS Ranked
WHERE D_R <= 2;
