----proc
CREATE PROC usp_users
AS
    SELECT userID, name, birthYear, addr FROM userTbl
GO
EXEC usp_users;

----view
CREATE VIEW v_users
AS
    SELECT userID, name, birthYear, addr FROM userTbl
GO
SELECT * FROM v_users

-------proc 활용(파라미터:매개변수) 들어가는 프로시저
CREATE PROC usp_users1
    @userName NVARCHAR(10)
AS
   --로직
   SELECT userID, name, birthYear FROM userTbl
   WHERE name = @userName
GO
EXEC usp_users1 '성시경'   --검색

SELECT * FROM v_userbuyINfo WHERE name = '성시경'

----------활용2
CREATE PROC usp_users2
    @userBirthYear INT,
	@userHeight INT
AS
   SELECT userID, name, birthYear,height,mDate FROM userTbl
    WHERE birthYear >=@userBirthYear
	  AND height >= @userHeight
GO
EXEC usp_users2 1970, 178;    --검색

------포로시저 함수 코딩때는
------CREATE OR ALTER PROC(FUNC) 생상과 수정을 동시에..할수있엉
CREATE OR ALTER PROC usp_users3
    @lastName NVARCHAR(2),
	@outCount INt OUTPUT       --되돌려받음 return 받는 값 같은것.
AS
    SELECT @outCount = Count(*) FROM userTbl WHERE name LIKE @lastName + '%'
GO
--SELECT COUNT(*) FROM userTbl WHERE name LIKE '김' + '%';
DECLARE @myValue INT;
EXEC usp_users3 '김', @myValue OUTPUT;
PRINT CONCAT('김씨 성을 가진 사용자 수는 ' , @myvalue);
