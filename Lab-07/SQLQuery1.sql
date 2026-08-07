SELECT * FROM EMPLOYEE

--1. Display employees detail whose FIRSTNAME starts with ‘H’. 
SELECT * FROM EMPLOYEE 
WHERE FIRSTNAME LIKE 'H%'

--2. Display employees detail whose FIRSTNAME consists of exactly 5 characters. 
SELECT * FROM EMPLOYEE 
WHERE FIRSTNAME LIKE '_____'

--3. Display employees detail whose CITY ends with ‘T’ and has 6 characters. 
SELECT * FROM EMPLOYEE
WHERE CITY LIKE '_____T'

--4. Display employees detail whose LASTNAME ends with ‘EL’. 
SELECT * FROM EMPLOYEE
WHERE LASTNAME LIKE '%EL'

--5. Display employees detail whose FIRSTNAME starts with ‘R’ and ends with ‘A’. 
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE 'R%A'

--6. Display employees detail whose FIRSTNAME starts with ‘V’ and third character is ‘S’. 
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE 'V_S%'

--7. Display employees detail whose CITY is NULL and FIRSTNAME has 6 characters. 
SELECT * FROM EMPLOYEE
WHERE CITY IS NULL AND FIRSTNAME LIKE '______'

--8. Display employees detail whose FIRSTNAME contains ‘AR’. 
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '%AR%'

--9. Display employees detail whose CITY starts with ‘R’ or ‘B’.
SELECT * FROM EMPLOYEE
WHERE CITY LIKE '[RB]%'

--10. Display employees detail whose DEPARTMENT is NOT NULL. 
SELECT * FROM EMPLOYEE
WHERE DEPARTMENT IS NOT NULL

--11. Display employees detail whose FIRSTNAME starts from alphabet A to H. 
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '[A-H]%'

--12. Display employees detail whose second character of FIRSTNAME is a vowel. 
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '_[AEIOU]%'


--13. Display employees detail whose FIRSTNAME length ≥ 5. 
SELECT * FROM EMPLOYEE 
WHERE FIRSTNAME LIKE '_____%'

--14. Display employees detail whose LASTNAME starts with ‘PA’. 
SELECT * FROM EMPLOYEE 
WHERE LASTNAME LIKE 'PA%'

--15. Display employees detail whose CITY does not start with ‘B’.
SELECT * FROM EMPLOYEE
WHERE CITY NOT LIKE 'B%'

--16. Display employees whose second character of FIRSTNAME is a not vowel. 
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME NOT LIKE '_[AEIOU]%'

--17. Display employees whose JOINING YEAR last digit is 4 or 6. 
SELECT * FROM EMPLOYEE
WHERE JOININGYEAR LIKE '%[46]'

--18. Display employees detail whose FIRSTNAME starts with ‘H’, ends with ‘I’, and CITY contains ‘RA’. 
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE 'H%I' AND CITY LIKE '%RA%'

--19. Display employees detail whose FIRSTNAME contains ‘A’, CITY ends with ‘D’, and DEPARTMENT is NOT NULL.
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '%A%' AND CITY LIKE '%D' AND DEPARTMENT IS NOT NULL

--20. Display employees whose second and third characters of FIRSTNAME are vowels and CITY starts with ‘R’. 
SELECT * FROM EMPLOYEE
WHERE FIRSTNAME LIKE '_[AEIOU][AEIOU]%' AND CITY LIKE 'R%'