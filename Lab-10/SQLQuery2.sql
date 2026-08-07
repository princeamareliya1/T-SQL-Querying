--1. Find the length of following. (I) NULL    (II) ‘   hello     ’   (III)  Blank 
SELECT LEN(NULL),LEN('HELLO'),LEN('')

--2. Display your name in lower & upper case. 
SELECT LOWER('Darshan'),UPPER('Darshan')

--3. Display first three characters of your name. 
SELECT SUBSTRING('Darshan',1,3)

--4. Display 3rd to 10th character of your name. 
SELECT SUBSTRING('Darshan University',3,10)

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE. 
SELECT REPLACE('abc123efg','123','XYZ'),REPLACE('abcabcabc','c','5')

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9).
SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII('0'),ASCII('9')

--7. Write a query to display character based on number 97, 65,122,90,48,57. 
SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)

--8. Write a query to remove spaces from left of a given string ‘ hello world  ‘. 
SELECT LTRIM('  hello world  ');

--9. Write a query to remove spaces from right of a given string ‘ hello world  ‘. 
SELECT RTRIM('  hello world  ');

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’. 
SELECT LEFT('SQL Server',4),RIGHT('SQL Server',5)

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function). 
SELECT CAST('1234.56' AS DECIMAL(6,2)) 

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function). 
SELECT CAST(10.58 AS INT)

--13. Put 10 space before your name using function. 
SELECT SPACE(10)+'Darshan'

--14. Combine two strings using + sign as well as CONCAT (). 
SELECT 'Darshan' + ' University'
SELECT CONCAT('Darshan',' University')

--15. Find reverse of “Darshan”. 
SELECT REVERSE('Darshan')

--16. Repeat your name 3 times.
SELECT REPLICATE('Darshan',3)
