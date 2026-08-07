SELECT * FROM DEPOSIT

--14. Display all records where account date is in the year 2025. 
SELECT * FROM DEPOSIT WHERE YEAR(ADATE) = '2025'

--15. Display all records where account date is in the month of March. 
SELECT * FROM DEPOSIT WHERE MONTH(ADATE) = 3

SELECT * FROM DEPOSIT WHERE DATENAME(MONTH, ADATE) = 'March'

--16. Display records where account date is after ‘01-Jan-2025’. 
SELECT * FROM DEPOSIT WHERE ADATE > '01-Jan-2025'

--17. Display records where account date is before ‘01-Jan-2025’. 
SELECT * FROM DEPOSIT WHERE ADATE < '01-Jan-2025'

--18. Display records where day of account date is 1.
SELECT * FROM DEPOSIT WHERE DAY(ADATE) = 1 

--19. Display records where month of account date is greater than 6. 
SELECT * FROM DEPOSIT WHERE MONTH(ADATE) > 6

--20. Display records where year of account date is 2026. 
SELECT * FROM DEPOSIT WHERE YEAR(ADATE) = 2026

--21. Display number of accounts opened in each year. 
SELECT COUNT(ACTNO),YEAR(ADATE) FROM DEPOSIT GROUP BY YEAR(ADATE) 

--22. Display number of accounts opened in each month. 
SELECT COUNT(ACTNO),MONTH(ADATE),YEAR(ADATE) FROM DEPOSIT GROUP BY MONTH(ADATE),YEAR(ADATE)

--23. Display maximum amount deposited in each year.
SELECT MAX(AMOUNT),YEAR(ADATE) FROM DEPOSIT GROUP BY YEAR(ADATE)