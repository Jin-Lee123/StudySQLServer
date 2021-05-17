-- ������ �ݾ׿����� �ֿ��/���/�Ϲݰ����� �з��ϴ� �����ۼ�
--SELECT * FROM userTbl
--SELECT * FROM buyTbl   --�ΰ� ��� ���������� Ȯ��

WITH cte_custlevel([�����ID],[ȸ����],[�ѱ��űݾ�],[�����])
AS
(
SELECT u.userID AS '�����ID'
     , u.name AS 'ȸ����'
     , IIF(SUM(price*amount) IS NULL, 0,SUM(price*amount)) AS '�ѱ��űݾ�'  --NULL�� 0���� �ٲ�
     , CASE 
	    WHEN (sum(b.price*b.amount) >=2500) THEN '�ֿ����'
	    WHEN (sum(b.price*b.amount) >=2000) THEN '�����'
	    WHEN (sum(b.price*b.amount) >=1) THEN '�Ϲݰ�'
	    ELSE '���ɰ�'
	   END AS '�����'
  FROM userTbl AS u 
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 GROUP BY u.userID, u.name
 --ORDER BY SUM(b.price*b.amount) DESC;
)

SELECT [�����ID],[ȸ����]
      , FORMAT([�ѱ��űݾ�],'C4') AS '�ѱ��űݾ�'
	  ,[�����] 
  FROM cte_custlevel
 ORDER BY [�ѱ��űݾ�] DESC;