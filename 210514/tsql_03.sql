--���ڿ� �Լ�
SELECT ASCII('+'), CHAR(67);  -- ����:��
SELECT UNICODE('��'),NCHAR(44032);

--���ڿ� ����
SELECT CONCAT('SQL ', 'server ',2019) AS[name];  --����:��  (���ڵ� ���ڿ��̵� �ٰ��� ����ȯ �ʿ�x)
SELECT 'SQL '+ 'server '+ CAST(2019 AS VARCHAR);

--�ܾ� ���� ��ġ
SELECT CHARINDEX('world', 'Hello world!');
-- C#,java,python ���ڿ�0���� ����
-- BUT DB�� 1���� ����

--LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20)
SET @STR = 'SQL Server 2019'
SELECT LEFT(@STR,3), RIGHT(@STR,4) 

SELECT SUBSTRING('���ѹα�����!',5,2);  --5��°���� 2��

SELECT LEN('Hello World');  --���� ���� ��
SELECT LEN('���ѹα�����!');

SELECT LOWER('hELLO World!'); --�ҹ��ں���
SELECT UPPER('hELLO World!'); --�빮�ں���

SELECT '     SQL     ',LTRIM('     SQL     '); --���� �����̽� ���� -��
SELECT '     SQL     ',RTRIM('     SQL     '); --������ �����̽� ���� -��
SELECT '     SQL     ',TRIM('     SQL     ');--���� �����̽� ���� -��

--REPlACE ���� : �ֻ�
SELECT REPLACE('SQL Server 2019,Server����','Server','����')  --'Server'�� '����'�� ����

--STR ���� : ��
SELECT STR(3.141592);   --���ڸ� ���ڷκ���
SELECT STR(45);

--FORMAT ���� : ��
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss')  --�ѱ���
SELECT FORMAT(GETDATE(), 'MM/dd/yyyy hh:mm:ss')  --�̱���

