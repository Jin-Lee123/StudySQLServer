--���α׷��� ����
USE sqlDB
GO

DECLARE @myVar1 INT;
DECLARE @myVar2 DECIMAL(5,2);  -- ��:5�ڸ�(����:3�ڸ�,�Ҽ���:2�ڸ�)(�Ҽ����� ©�����)
DECLARE @myVar3 NCHAR(20);
DECLARE @inchUnit DECIMAL(4,3)

SET @myVar1 = 4000;
SET @myVar2 = 233.114;
SET @myVar3 = '���� �̸� ==>';
SET @inchUnit = 0.393;

--SELECT @myVar1,@myVar2
--SELECT @myVar3 AS 'string', name FROM userTbl WHERE height >180;
SELECT name, height * @inchUnit AS 'Ű(inch)'From userTbl;