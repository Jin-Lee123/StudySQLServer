CREATE OR ALTER FUNCTION ufn_getAge (@bYear INT)
	RETURNS INT
AS
BEGIN
	DECLARE @age INT
	SET @age = YEAR(GETDATE()) -@bYear + 1   --한국식나이
	RETURN(@age)
END
GO

SELECT userID,name
     , birthYear , dbo.ufn_getAge(birthYear) AS '나이'
	 , addr,height
  FROM userTbl;
