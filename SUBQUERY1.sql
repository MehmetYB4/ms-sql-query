--URUNLER�N F�YAT ALANL�Z�
--SUBQUERY:DURUMLARA G�RE KULALNILIR.
SET STATISTICS IO ON  --BELLEKTEN NE KADAR VER OKUR, JOIN KULLANMAK DAHA VER�ML�D�R
SELECT ITM.ITEMCODE AS URUNKODU,
ITM.ITEMNAME AS URUNADI,
(SELECT MIN(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENDUSUK,
(SELECT MAX(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ENDUSUK,
(SELECT AVG(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS ORTALAMA,
(SELECT SUM(AMOUNT) FROM ORDERDETAILS WHERE ITEMID=ITM.ID) AS TOPLAMSATIS


FROM ITEMS ITM
ORDER BY ITM.ITEMNAME