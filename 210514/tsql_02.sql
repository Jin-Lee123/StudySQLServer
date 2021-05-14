-- �ý����Լ�(SQL ������ �⺻���� �������ִ� �Լ���)
SELECT price FROM buyTbl;
SELECT MIN(price) FROM buyTbl;
SELECT MAX(price) FROM buyTbl;
SELECT AVG(price) FROM buyTbl;
SELECT AVG(amount) FROM buyTbl;  --amount�� �������̶� ��հ��� ����������
SELECT AVG(CAST(amount AS float)) FROM buyTbl;
SELECT CAST(AVG(CAST(amount AS float)) AS decimal(4,3)) FROM buyTbl;
SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;
SELECT PARSE('3.14' AS INT);  -- ���ܰ� �߻��ϸ� ������ ������ ����
SELECT TRY_PARSE('3.14' AS INT);   -- ����ȯ���ϸ� NULL ����ü ���� ������ ����

-- heigt SMALLINT --> VARCHAR, CHAR ����ȯ
SELECT name, CAST(height AS VARCHAR)+'cm' FROM userTbl
 WHERE height IS NOT NULL;  
--NULL���� =�� ��x // IS(����) / IS NOT(�����ʴ�)

SELECT PARSE('2021�� 5�� 14�� 10�� 27��' AS DATETIME);
SELECT PARSE('2021-05-14 10:28:10' AS DATETIME);
-- YYYY-MM-DD HH:min:ss

SELECT GETDATE();   -- INSERT ���� ����Ͻú��� ���� ���� ���

SELECT @@SERVERNAME;  -- @@ : �ý��ۺ����� (DECLARE�ʿ����)
SELECT @@VERSION;

--��¥ �� �ð� �Լ�
SELECT YEAR(GETDATE()) AS '����⵵';
SELECT MONTH(GETDATE()) AS '�����';
SELECT DAY(GETDATE()) AS '����';

--��ġ�Լ�
SELECT ABS(-100);  --���밪
SELECT ROUND (3.141592,2); --�ݿø�
SELECT RAND();
SELECT FLOOR(RAND() * 100);  --������ �ٴ� �Ҽ����̶� ���Ѱ���

--�� �Լ�
SELECT IIF(100>200,'��','����');