-- �Է��� ����⵵ ���Ŀ� ����߿��� ���ŵ�޿� ���� ����� ��ȯ
CREATE OR ALTER FUNCTION ufn_userGrage(@bYear INT)
	RETURNS @retTable TABLE
	(userID CHAR(8) , name NCHAR(10), grade NVARCHAR(5))
AS
BEGIN
	DECLARE @rowCnt INT
	SELECT @rowCnt = COUNT(*) FROM userTbl WHERE birthYear >= @bYear

	IF @rowCnt <=0
	BEGIN
		INSERT INTO @retTable VALUES('����', '����', '����')
		RETURN
	END
	ELSE
	BEGIN
		--�Է±���
		INSERT INTO @retTable
		SELECT u.userID, u.name, 
			   CASE
			    WHEN SUM(b.price * b.amount) >=1500 THEN '�ֿ��'
			    WHEN SUM(b.price * b.amount) >=1000 THEN '���'
			    WHEN SUM(b.price * b.amount) >=1 THEN '�Ϲ�'
			    ELSE '����'
			   END
		  FROM userTbl AS u
		  LEFT OUTER JOIN buyTbl AS b
		    ON u.userID=b.userID
		 WHERE u.birthYear >= @bYear
		 GROUP BY u.userID, u.name

		RETURN
	END
	RETURN
END
GO

SELECT * FROM dbo.ufn_userGrage(1970)