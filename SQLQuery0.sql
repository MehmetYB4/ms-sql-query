SELECT *FROM CUSTOMERS

UPDATE CUSTOMERS
SET NATION='TR'

UPDATE CUSTOMERS
SET AGE=DATEDIFF(YEAR,BIRTHDATE,GETDATE()), NATION='TR'

SELECT DATEDIFF(YEAR,'1980-12-14','2020-01-01')