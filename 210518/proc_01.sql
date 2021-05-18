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

-------proc Ȱ��(�Ķ����:�Ű�����) ���� ���ν���
CREATE PROC usp_users1
    @userName NVARCHAR(10)
AS
   --����
   SELECT userID, name, birthYear FROM userTbl
   WHERE name = @userName
GO
EXEC usp_users1 '���ð�'   --�˻�

SELECT * FROM v_userbuyINfo WHERE name = '���ð�'

----------Ȱ��2
CREATE PROC usp_users2
    @userBirthYear INT,
	@userHeight INT
AS
   SELECT userID, name, birthYear,height,mDate FROM userTbl
    WHERE birthYear >=@userBirthYear
	  AND height >= @userHeight
GO
EXEC usp_users2 1970, 178;    --�˻�

------���ν��� �Լ� �ڵ�����
------CREATE OR ALTER PROC(FUNC) ����� ������ ���ÿ�..�Ҽ��־�
CREATE OR ALTER PROC usp_users3
    @lastName NVARCHAR(2),
	@outCount INt OUTPUT       --�ǵ������� return �޴� �� ������.
AS
    SELECT @outCount = Count(*) FROM userTbl WHERE name LIKE @lastName + '%'
GO
--SELECT COUNT(*) FROM userTbl WHERE name LIKE '��' + '%';
DECLARE @myValue INT;
EXEC usp_users3 '��', @myValue OUTPUT;
PRINT CONCAT('�达 ���� ���� ����� ���� ' , @myvalue);
