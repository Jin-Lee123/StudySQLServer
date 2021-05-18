CREATE OR ALTER PROC usp_zodiac
	@userName NVARCHAR(10)
AS
	DECLARE @bYear INT
	DECLARE @zodiac NVARCHAR(3)    --띠이름 변수
	SELECT @bYear = birthYear FROM userTbl
	 WHERE name = @userName

	SET @zodiac =
		CASE	
			WHEN (@bYear%12=0)THEN '원숭이'  --신
			WHEN (@bYear%12=1)THEN '닭'      --유
			WHEN (@bYear%12=2)THEN '개'      --술
			WHEN (@bYear%12=3)THEN '돼지'    --해
			WHEN (@bYear%12=4)THEN '쥐'      --자
			WHEN (@bYear%12=5)THEN '소'      --축
			WHEN (@bYear%12=6)THEN '호랑이'  --인
			WHEN (@bYear%12=7)THEN '토끼'    --요
			WHEN (@bYear%12=8)THEN '진'      --용
			WHEN (@bYear%12=9)THEN '사'      --뱀
			WHEN (@bYear%12=10)THEN '오'     --말
			ELSE '양'                        --미
		END
	PRINT CONCAT(@userName,'(',@bYear,')', '의 띠는' , @zodiac ,' 입니다');
GO

EXEC usp_zodiac '성시경'
EXEC usp_zodiac '김경호'
EXEC usp_zodiac '이승기'

------시스템 저장 프로시저
EXEC sp_databases
EXEC sp_tables 'userTBL', 'dbo'

SELECT * FROM userTbl WHERE userID = 'KKH'