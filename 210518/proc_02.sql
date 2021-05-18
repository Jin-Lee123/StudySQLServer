CREATE OR ALTER PROC usp_isyoung
	@userName NVARCHAR(10)
AS
	DECLARE @bYear INT   --출생연도 저장변수
	SELECT @bYear = birthYear FROM userTbl
	 WHERE name = @userName

	IF (@bYear >= 1980)
	BEGIN
		PRINT '아직 젊습니다'
	END
	ELSE
	BEGIN
		PRINT '늙으셨네용'
	END
GO
EXEC usp_isyoung '이승기'    --출력	
EXEC usp_isyoung '성시경'    --출력

