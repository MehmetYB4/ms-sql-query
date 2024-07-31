--REPLACE
SELECT 'MEHMET YUSUF BÝRCAN'
SELECT REPLACE('MEHMET YUSUF BÝRCAN','YUSUF','YUSUFLAR')

DECLARE @PARAGRAF AS VARCHAR(MAX)
SET @PARAGRAF='HAREZMÝ adý, "algoritma" teriminin kökeni olarak bilinen al-Khwarizminin yöntemi ile özdeþleþmiþtir.
Ayrýca, Hindistandan Arap dünyasýna geçen sayý sistemini tanýtan ve 0ý 
matematikteki yerine oturtan eserleriyle de bilinir. 
Onun çalýþmalarý, Ortaçað Ýslam medeniyetinin bilimsel ve matematiksel mirasýna büyük katkýlarda bulunmuþ
ve Avrupa Rönesansýnda da önemli bir etki býrakmýþtýr.HAREZMÝ, sadece matematik ve astronomiye deðil,
ayný zamanda coðrafya ve diðer bilim alanlarýna yaptýðý katkýlarla da hatýrlanan bir bilim adamýdýr'
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