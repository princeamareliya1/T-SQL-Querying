SELECT * FROM PROJECT

--1) Display each department and the total hours worked. 
SELECT DEPARTMENT,SUM(HOURS) FROM PROJECT GROUP BY DEPARTMENT

--2) Show departments where the total hours worked are greater than 120. 
SELECT DEPARTMENT FROM PROJECT GROUP BY DEPARTMENT HAVING SUM(HOURS) > 120

--3) Find the average hours worked in each department and display them from highest to lowest average. 
SELECT DEPARTMENT,AVG(HOURS) FROM PROJECT GROUP BY DEPARTMENT ORDER BY AVG(HOURS) DESC

--4) Display departments having more than 3 employees. 
SELECT DEPARTMENT FROM PROJECT GROUP BY DEPARTMENT HAVING COUNT(ID) > 3

--5) Show departments whose maximum hours worked exceed 45. 
SELECT DEPARTMENT FROM PROJECT GROUP BY DEPARTMENT HAVING MAX(HOURS) > 45

--6) Find departments where the minimum hours worked is less than 30 and sort by minimum hours. 
SELECT DEPARTMENT FROM PROJECT GROUP BY DEPARTMENT HAVING MIN(HOURS) < 30 ORDER BY MIN(HOURS)

--7) Display each department with employee count and total hours. 
--	Show only departments having an average greater than 40. 
SELECT DEPARTMENT,COUNT(ID) AS EMPLOYEE,SUM(HOURS) AS TOTAL_HOURS FROM PROJECT GROUP BY DEPARTMENT HAVING AVG(HOURS) > 40

--8) Find departments where total hours are between 100 and 170. 
--	Display them in descending order of total hours. 
SELECT DEPARTMENT FROM PROJECT GROUP BY DEPARTMENT HAVING SUM(HOURS) BETWEEN 100 AND 170 ORDER BY SUM(HOURS) DESC

--9) Display departments having at least 3 employees. Sort first by employee count (descending), then by department name (ascending). 
SELECT DEPARTMENT FROM PROJECT GROUP BY DEPARTMENT HAVING COUNT(ID) >= 3 ORDER BY COUNT(ID) DESC , DEPARTMENT ASC

--10) Display each department with: 
--• Number of employees  
--• Total hours worked  
--• Average hours worked  
--Show only departments where: 
--• Total hours are greater than 110  
--• Average hours are greater than 38  
--Sort by average hours (descending) and then department name. 

SELECT DEPARTMENT,COUNT(ID) AS EMPLOYEE,SUM(HOURS) AS TOTAL_HOURS,AVG(HOURS) AS AVG_HOURS FROM PROJECT GROUP BY DEPARTMENT HAVING SUM(HOURS) > 110 AND AVG(HOURS) > 38 ORDER BY AVG(HOURS) DESC, DEPARTMENT
