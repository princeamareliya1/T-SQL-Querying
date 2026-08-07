--21. Display minimum salary in each city where gender is FEMALE. 
SELECT CITY,MIN(SALARY) FROM EMPLOYEE WHERE GENDER = 'FEMALE' GROUP BY CITY
SELECT * FROM EMPLOYEE

--22. Give total salary of each department of EMPLOYEE table. 
SELECT DEPARTMENT,SUM(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENT

--23. Give average salary of each department of EMPLOYEE table without displaying the respective department name. 
SELECT AVG(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENT

--24. Count the number of employees for each department in every city. 
SELECT CITY,COUNT(EID) FROM EMPLOYEE WHERE CITY IS NOT NULL GROUP BY CITY 
SELECT * FROM EMPLOYEE	

--25. Calculate the total salary distributed to male and female employees.
SELECT GENDER,SUM(SALARY) FROM EMPLOYEE GROUP BY GENDER 