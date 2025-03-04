--URUNLER�N F�YAT ALANL�Z�, EN COK HANGI AY SATILDI
SET STATISTICS IO ON  
SELECT ITM.ITEMCODE AS URUNKODU,
ITM.ITEMNAME AS URUNADI,
(SELECT MIN(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENDUSUK,
(SELECT MAX(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENDUSUK,
(SELECT AVG(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ORTALAMA,
(SELECT SUM(AMOUNT) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS TOPLAMSATIS,
(
SELECT TOP 1 
DATEPART(MONTH, O.DATE_) AS AY FROM ORDERDETAILS OD 
JOIN ORDERS O ON O.ID = OD.ORDERID
WHERE OD.ITEMID = ITM.ID
GROUP BY DATEPART(MONTH, O.DATE_)
ORDER BY SUM(OD.AMOUNT) DESC
) AS ENCOKSATIS

FROM ITEMS ITM
WHERE ITM.ID NOT IN --NUL KAYITLARI GET�R�R VEYA KOLON IS NULL
(SELECT ITEMID FROM ORDERDETAILS)
ORDER BY 3