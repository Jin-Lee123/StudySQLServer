--������ ��ȸ
SELECT * FROM userTbl;

--������ ��ȸ ���͸�
SELECT * FROM userTbl
 WHERE userID = 'BBk';

SELECT * FROM userTbl
 WHERE name = '������';

SELECT */*ALL*/ FROM userTbl
 WHERE name LIKE '%��%';

SELECT userID,name,addr /*not ALL*/ FROM userTbl
 WHERE name LIKE '%��%';

--Ư�� ���̺� ���ڵ�(������) ����Ȯ��
SELECT COUNT(*) FROM userTbl;

-- ����� ���̺���
-- Ű�� 180�̻��̰� ��������� 1970�����Ŀ� �¾ �����
-- ���̵�,�̸�, Ű�� ��ȸ �ϼ���!?
SELECT userID, name, height FROM userTbl
 WHERE height >= 180 AND birthYear >= 1970



