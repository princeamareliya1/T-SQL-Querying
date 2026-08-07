	--1. Display the Highest, Lowest Salary and Label the columns Maximum, Minimum respectively. 
SELECT MAX(SALARY) AS MAXIMUM , MIN(SALARY) AS MINIMUM FROM EMPLOYEE

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively. 
SELECT SUM(SALARY) AS TOTAL_SAL , AVG(SALARY) AS AVERAGE_SAL FROM EMPLOYEE

--3. Find total number of employees of EMPLOYEE table. 
SELECT COUNT(EID) FROM EMPLOYEE
SELECT * FROM EMPLOYEE

--4. Find highest salary from Rajkot city. 
SELECT MAX(SALARY) FROM EMPLOYEE WHERE CITY = 'RAJKOT'
SELECT * FROM EMPLOYEE

--5. Give maximum salary from IT department. 
SELECT MAX(SALARY) FROM EMPLOYEE WHERE DEPARTMENT = 'IT'
SELECT * FROM EMPLOYEE

--6. Count employee department is HR. 
SELECT COUNT(EID) FROM EMPLOYEE WHERE DEPARTMENT = 'HR'
SELECT * FROM EMPLOYEE

--7. Display average salary of Admin department. 
SELECT AVG(SALARY) FROM EMPLOYEE WHERE DEPARTMENT = 'ADMIN'
SELECT * FROM EMPLOYEE

--8. Display total salary of HR department. 
SELECT SUM(SALARY) FROM EMPLOYEE WHERE DEPARTMENT = 'HR'
SELECT * FROM EMPLOYEE

--9. Count total number of cities of employee without duplication. 
SELECT COUNT(DISTINCT CITY) FROM EMPLOYEE 
SELECT * FROM EMPLOYEE

--10. Count unique departments. 
SELECT COUNT(DISTINCT DEPARTMENT) FROM EMPLOYEE
SELECT * FROM EMPLOYEE

--11. Display minimum salary of employee who belongs to Ahmedabad. 
SELECT MIN(SALARY) FROM EMPLOYEE WHERE CITY = 'AHMEDABAD'
SELECT * FROM EMPLOYEE


--12. Find city wise highest salary. 
SELECT MAX(SALARY),CITY FROM EMPLOYEE WHERE CITY IS NOT NULL GROUP BY CITY

--13. Find department wise lowest salary. 
SELECT MIN(SALARY),DEPARTMENT FROM EMPLOYEE GROUP BY DEPARTMENT

--14. Display minimum salary in each city. 
SELECT CITY,MIN(SALARY) FROM EMPLOYEE WHERE CITY IS NOT NULL GROUP BY CITY

--15. Display average salary of employees from Surat. 
SELECT AVG(SALARY) FROM EMPLOYEE WHERE CITY = 'SURAT'

--16. Display total salary of female employees. 
SELECT SUM(SALARY) FROM EMPLOYEE WHERE GENDER = 'FEMALE'
SELECT * FROM EMPLOYEE

--17. Count number of male employees. 
SELECT COUNT(EID) FROM EMPLOYEE WHERE GENDER = 'MALE'
SELECT * FROM EMPLOYEE


--18. Display city with the total number of employees belonging to each city. 
SELECT CITY,COUNT(EID) FROM EMPLOYEE WHERE CITY IS NOT NULL GROUP BY CITY
SELECT * FROM EMPLOYEE

--19. Count number of employees in each city where gender is MALE. 
SELECT CITY,COUNT(EID) FROM EMPLOYEE WHERE CITY IS NOT NULL AND GENDER = 'MALE' GROUP BY CITY
SELECT * FROM EMPLOYEE

--20. Display maximum salary in each department where city is not Ahmedabad.
SELECT DEPARTMENT,MAX(SALARY) FROM EMPLOYEE WHERE CITY <> 'AHMEDABAD' GROUP BY DEPARTMENT
SELECT * FROM EMPLOYEE
