-- UPDATE
-- Ʈ����� ����
BEGIN TRAN; --(TRANSACTION)  --Ȥ�ø𸣴� Ʈ����� ���� �����ϱ�!!

UPDATE testTbl
   SET userName = '�����'
 WHERE Id =2;               --�����ϴ� �κ��� ��ġ!!(WHERE���� ������ ���� �������� ���� �� ������)

UPDATE testTbl
   SET userName = '�����'
     , addr = '�λ�'
 WHERE Id =4;

SELECT * FROM testTbl;

COMMIT;  --���� ���������� Ŀ��
ROLLBACK;  --������ ������������ �ѻ�!

TRUNCATE TABLE testTBL; --�ִ� ������ ���θ� �����ϰ� 
-- 1���� �ٽ� ����