--REPLACE
SELECT 'MEHMET YUSUF B�RCAN'
SELECT REPLACE('MEHMET YUSUF B�RCAN','YUSUF','YUSUFLAR')

DECLARE @PARAGRAF AS VARCHAR(MAX)
SET @PARAGRAF='HAREZM� ad�, "algoritma" teriminin k�keni olarak bilinen al-Khwarizminin y�ntemi ile �zde�le�mi�tir.
Ayr�ca, Hindistandan Arap d�nyas�na ge�en say� sistemini tan�tan ve 0� 
matematikteki yerine oturtan eserleriyle de bilinir. 
Onun �al��malar�, Orta�a� �slam medeniyetinin bilimsel ve matematiksel miras�na b�y�k katk�larda bulunmu�
ve Avrupa R�nesans�nda da �nemli bir etki b�rakm��t�r.HAREZM�, sadece matematik ve astronomiye de�il,
ayn� zamanda co�rafya ve di�er bilim alanlar�na yapt��� katk�larla da hat�rlanan bir bilim adam�d�r'
--SET @PARAGRAF=REPLACE(@PARAGRAF,'hindistan','konya')
--SET @PARAGRAF=REPLACE(@PARAGRAF,'terim','terlik')
--SET @PARAGRAF=REPLACE(@PARAGRAF,'ONUN','')
--SELECT LEN(@PARAGRAF)
--SELECT @PARAGRAF


DECLARE @LEN1 AS INT
SET @LEN1=LEN(@PARAGRAF)
SET @PARAGRAF=REPLACE(@PARAGRAF,'ONUN','')
DECLARE @LEN2 AS INT
SET @LEN2=LEN(@PARAGRAF)

SELECT (@LEN1-@LEN2)/LEN('ONUN')