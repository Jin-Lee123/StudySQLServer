-- GROUP BY
-- ���̵� ���� ������ � �����ߴ��� ��ȸ
SELECT userID, SUM(amount) AS '�ѱ��� ����'
  FROM buyTbl
 GROUP BY userID;

--�츮 ���θ����� ���� �����̾� ����� 
--���̵� ���� ��ȸ�ϰ� �� �ݾ��� ����϶�
SELECT userID, Sum(amount*price) AS '�� ���� �ݾ�'
  FROM buyTbl
 GROUP BY userID
 ORDER BY SUM (amount*price) DESC;

--�츮 ���θ� �� ���� �ݾ�
SELECT Sum(amount*price) AS '�� ���� �ݾ�'
  FROM buyTbl

-- ��ձ��űݾ�
SELECT AVG(price) AS [��ձ��űݾ�] FROM buyTbl;

-- ��������̺��� Ű�� ���� ū����ϰ� ���� ������� ��ȸ
SELECT * FROM userTbl
 ORDER BY height DESC;

SELECT * FROM userTbl
 ORDER BY height ASC;

SELECT * FROM userTBL
WHERE height = 166 OR height = 186;

SELECT name AS '�̸�', height AS 'Ű' FROM userTbl
 WHERE height = (SELECT MAX (height) FROM userTbl)
    OR height = (SELECT MIN (height) FROM userTbl)

--GROUP BY / HAVING
SELECT userID AS '����� ���̵�'
     , SUM(price*amount) AS '�� ���űݾ�'
  FROM buyTbl
-- WHERE SUM(price * amount) >= 1000   //����Ұ�
 GROUP BY userID
HAVING SUM(price * amount) >= 1000 

-- ���
-- ��ǰ�׷캰�� ����ڰ� �󸶸�ŭ ���Ÿ� �ߴ��� ��ȸ
SELECT groupName 
     , userID
     , SUM(price*amount) AS [�� ���űݾ�]
  FROM buyTbl
 GROUP BY userID,groupName

SELECT groupName 
     , userID
     , SUM(price*amount) AS [�� ���űݾ�]
  FROM buyTbl
 GROUP BY ROLLUP(groupName,userID)

SELECT groupName 
     , userID
     , SUM(price*amount) AS [�� ���űݾ�]
  FROM buyTbl
 GROUP BY CUBE(groupName,userID)  --�ؿ����� ������ ��ģ��? 

SELECT groupName 
     , SUM(price*amount) AS [�� ���űݾ�]
     , GROUPING_ID(groupName) AS 'SUM'
  FROM buyTbl
 GROUP BY ROLLUP (groupName);   -- ROLLUP : ����