--21. Display employees whose CITY contains ‘RA’ and salary less than 13000 and joining year last digit is 6. 
SELECT * FROM EMPLOYEE
WHERE CITY LIKE '%RA%' AND SALARY < 13000 AND JOININGYEAR LIKE '%6'

--22. Display employees whose SALARY between 10000 and 15000 and CITY name contains 'KO' and FIRSTNAME start with H. 
SELECT * FROM EMPLOYEE
WHERE (SALARY BETWEEN 10000 AND 15000) AND CITY LIKE '%KO%' AND FIRSTNAME LIKE 'H%'

--23. Display employees whose FIRSTNAME starts with ‘A’ or ‘D’ and SALARY greater than 12000. 
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '[AD]%' AND SALARY >12000

--24. Display employees whose CITY contains ‘N’ and SALARY less than 15000. 
SELECT * FROM EMPLOYEE
WHERE CITY LIKE '%N%' AND SALARY < 15000


--25. Display employees whose FIRSTNAME length = 6 and CITY ends with ‘AR’. 
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '______' AND CITY LIKE '%AR'