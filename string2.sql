--Substring
SELECT *FROM USERS WHERE USERNAME_ LIKE 'O%'
SELECT *FROM USERS WHERE SUBSTRING(USERNAME_,1,1)='O'

SELECT *FROM USERS WHERE USERNAME_ LIKE '%O'
SELECT *FROM USERS WHERE SUBSTRING(USERNAME_,LEN(USERNAME_),1)='O'

--CHARINDEX
SELECT CHARINDEX('EHM','MEHMET YUSUF',1)

--CONCAT
SELECT 'OMER' + 'FARUK'
SELECT CONCAT('OMER',' ','FARUK')
SELECT CONCAT_WS(' ','MEHMET','YUSUF','BIRCAN')

SELECT 
	USERNAME_+' '+PASSWORD_+' '+NAMESURNAME,
	CONCAT(USERNAME_,' ',PASSWORD_),
	CONCAT_WS(' ',USERNAME_,PASSWORD_,NAMESURNAME)
FROM USERS 

--FORMAT:SAYI YADA TAR�H T�R�NDEK� DEGERLER� �STED�G�M�Z FORMATTA YAZDIRMAMIZI SAGLAR
SELECT GETDATE()
SELECT FORMAT(GETDATE(),'D','en-us')
SELECT FORMAT(GETDATE(),'d','en-us')
SELECT FORMAT(GETDATE(),'D','en-gb')
SELECT FORMAT(GETDATE(),'d','en-gb')

--LEFT,RIGHT,LEN
SELECT LEFT('MEHMET YUSUF',4)
SELECT RIGHT('MUSTAFA HASAN',7)
SELECT LEN('KONYA')

SELECT LEFT('MEHMET B�RCAN',CHARINDEX(' ','MEHMET B�RCAN'))
SELECT RIGHT('MEHMET B�RCAN',LEN('MEHMET B�RCAN')-CHARINDEX(' ','MEHMET B�RCAN'))
SELECT LEFT('MEHMET B�RCAN',CHARINDEX(' ','MEHMET B�RCAN')),RIGHT('MEHMET B�RCAN',LEN('MEHMET B�RCAN')-CHARINDEX(' ','MEHMET B�RCAN'))

SELECT LEFT(NAMESURNAME,CHARINDEX(' ',NAMESURNAME)),RIGHT(NAMESURNAME,LEN(NAMESURNAME)-CHARINDEX(' ',NAMESURNAME))
FROM USERS


--TRIM,LTRIM,RTRIM BOSLUKLARI TEM�ZLE

SELECT TRIM(' MEHMET YUSUF  ')
SELECT LTRIM(' AHMET  ')   --BASTAKI BOSLUK S�L�N�R
SELECT RTRIM('  MEHMET  ')  --SODNDAK� BOSLUK S�L�N�R
--VER� TEM�ZL���NDE KULLANILIR
SELECT LTRIM(RTRIM('  MEHMET '))

--LOWER UPPER
SELECT LOWER('MEHMET')  --K�C�K HARFE �EV�R�R
SELECT UPPER('mehmet')  --B�Y�K HARFLERE �EV�R�R�
SELECT REVERSE('MEHMET')  --TERS CEV�R�R
SELECT REPLICATE('10',10)  
--000007187
--000000147
SELECT '148'+REPLICATE('0',8-LEN('148'))
SELECT *, REPLICATE('0', 8 - LEN(ADDRESSID)) AS FARK
FROM INVOICES
