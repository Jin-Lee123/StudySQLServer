USE sampleDB
GO

-- VIEW
CREATE VIEW v_userTbl
AS 
    SELECT userID, name, addr FROM userTbl;
GO

SELECT * FROM v_userTbl

SELECT * FROM v_buyTbl

-----Ŀ���� �ܼ�ȭ ���� VIEW �̿��ؼ�
CREATE VIEW v_userbuyInfo
AS
	SELECT u.userID, u.name, b.prodName, b.price
	  FROM userTbl as u
	 INNER JOIN buyTBl as b
		ON u.userID= b.userID
GO

SELECT * FROM v_userbuyInfo
 ORDER BY price DESC;

DROP VIEW v_userTbl  --����