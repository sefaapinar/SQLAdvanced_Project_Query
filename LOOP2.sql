SELECT * FROM ISIMLER
SELECT * FROM SOYISIMLER
SELECT * FROM KISILER

DECLARE @I AS INT = 0
DECLARE @AD AS VARCHAR(50)
DECLARE @CINSIYET AS VARCHAR(50)
DECLARE @SOYAD AS VARCHAR(50)
DECLARE @DOGUMTARIHI AS DATE
DECLARE @YAS AS INT
DECLARE @YASGRUBU AS VARCHAR(50)
WHILE @I<1
BEGIN

SELECT * FROM ISIMLER WHERE ID = ROUND(RAND()*611,0)

SELECT @AD = AD,@CINSIYET=CINSIYET FROM ISIMLER WHERE ID = ROUND(RAND()*611,0)

SELECT @AD,@CINSIYET,@SOYAD

SET @DOGUMTARIHI= DATEADD(YEAR, ROUND(RAND()*611,0),'1950-01-01'

SELECT ROUND(RAND()*611,0)

SET @YAS=DATEDIFF(YEAR,@DOGUMTARIHI,GETDATE())




IF @YAS BETWEEN 10 AND 20
	SET @YASGRUBU ='20 YAS ALTI'
IF @YAS BETWEEN 30 AND 40
	SET @YASGRUBU ='50 YAS ALTI'
IF @YAS BETWEEN 50 AND 60
	SET @YASGRUBU ='70 YAS ALTI'
IF @YAS BETWEEN 70 AND 80
	SET @YASGRUBU ='90 YAS ALTI'
SELECT @AD,@SOYAD,@CINSIYET,@DOGUMTARIHI,@YAS,@YAS

INSERT INTO KISILER(AD,SOYAD,CINSIYET,YAS,YASGRUBU,DOGUMTARIHI)
VALUES(@AD,@SOYAD,@CINSIYET,@YAS,@YASGRUBU,@DOGUMTARIHI)


SET @I= @I+1



END