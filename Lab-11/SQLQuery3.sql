--24. Display minimum amount deposited in each month. 
SELECT MIN(AMOUNT) AS MIN_AMT,MONTH(ADATE),YEAR(ADATE) FROM DEPOSIT GROUP BY MONTH(ADATE),YEAR(ADATE)

--25. Display total amount deposited in each year.
SELECT SUM(AMOUNT),YEAR(ADATE) FROM DEPOSIT GROUP BY YEAR(ADATE)

--26. Display records where account date is between ‘01-Mar-2025’ and ‘31-Dec-2025’. 
SELECT * FROM DEPOSIT WHERE ADATE BETWEEN '01-Mar-2025' AND '31-Dec-2025'

--27. Display records where account date is in the current year. 
SELECT * FROM DEPOSIT WHERE YEAR(ADATE) = YEAR(GETDATE())

--28. Display difference in days between today’s date and account date. 
SELECT DATEDIFF(DAY,ADATE,GETDATE()) AS Diff_Day FROM DEPOSIT 

SELECT * FROM DEPOSIT