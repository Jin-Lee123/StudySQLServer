CREATE OR ALTER FUNCTION ufn_getZodiac(@bYear INT)
	RETURNS NVARCHAR(3)
AS
BEGIN
	DECLARE @result NVARCHAR(3)
	SET @result =
		CASE	
			WHEN (@bYear%12=0)THEN '¿ø¼þÀÌ'  --½Å
			WHEN (@bYear%12=1)THEN '´ß'      --À¯
			WHEN (@bYear%12=2)THEN '°³'      --¼ú
			WHEN (@bYear%12=3)THEN 'µÅÁö'    --ÇØ
			WHEN (@bYear%12=4)THEN 'Áã'      --ÀÚ
			WHEN (@bYear%12=5)THEN '¼Ò'      --Ãà
			WHEN (@bYear%12=6)THEN 'È£¶ûÀÌ'  --ÀÎ
			WHEN (@bYear%12=7)THEN 'Åä³¢'    --¿ä
			WHEN (@bYear%12=8)THEN 'Áø'      --¿ë
			WHEN (@bYear%12=9)THEN '»ç'      --¹ì
			WHEN (@bYear%12=10)THEN '¿À'     --¸»
			ELSE '¾ç'  
		END
	RETURN (@result)
END
GO
SELECT userID,name
     , birthYear , dbo.ufn_getZodiac(birthYear) AS '¶ì'
	 , addr
	 , height
  FROM userTbl;