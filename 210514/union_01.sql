--����
SELECT StdName, Region FROM StdTbl
UNION    --������°� ���Ĺ��� ����(���̺� ��ġ��)
SELECT ClubName, CluubRoom FROM ClubTbl;

--������ Ÿ�� ��ġ
SELECT CAST(id AS varchar),StdID FROM reginfoTbl 
UNION   --������ Ÿ���� �޶� ���� �ȴ� �׷��� CAST��
SELECT ClubName, CluubRoom FROM ClubTbl;

SELECT stdName, Region FROM stuTbl
UNION ALL --�ߺ��� ���
SELECT StdName, Region FROM stuTbl;

--except
SELECT name, CONCAT(mobile1,mobile2) AS mobile FROM userTbl
EXCEPT
SELECT name, CONCAT(mobile1,mobile2) AS mobile FROM userTbl
 WHERE mobile1 IS NOT NULL 

--INTERSECT : ���� ���̺� ���� ���� �Ǵ°� �߷����� ��
SELECT name, CONCAT(mobile1,mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1,mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL 