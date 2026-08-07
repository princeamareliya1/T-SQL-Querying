--26. Display cities where number of male employees greater than female employees.  
SELECT CITY FROM EMPLOYEE WHERE CITY IS NOT NULL GROUP BY CITY HAVING SUM(CASE WHEN GENDER = 'MALE' THEN 1 ELSE 0 END) > SUM(CASE WHEN GENDER = 'FEMALE' THEN 1 ELSE 0 END)

--27. Display departments having number of cities greater than 1.  
SELECT DEPARTMENT FROM EMPLOYEE GROUP BY DEPARTMENT HAVING COUNT(CITY) > 1

--28. Display cities where total salary excluding IT department greater than 15000.  
SELECT CITY FROM EMPLOYEE WHERE DEPARTMENT !='IT' GROUP BY CITY HAVING SUM(SALARY) > 15000

--29. Display departments where average salary excluding HR employees greater than 11000.  
SELECT DEPARTMENT FROM EMPLOYEE WHERE DEPARTMENT != 'HR' GROUP BY DEPARTMENT HAVING AVG(SALARY) > 11000

--30. Display departments where total salary of male employees greater than female employees.  
SELECT DEPARTMENT FROM EMPLOYEE GROUP BY DEPARTMENT HAVING SUM(CASE WHEN GENDER = 'MALE' THEN SALARY ELSE 0 END) > SUM(CASE WHEN GENDER = 'FEMALE' THEN SALARY ELSE 0 END)
