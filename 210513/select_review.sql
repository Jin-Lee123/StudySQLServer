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

--������� ������ (��������)���� �����ؼ� ��ȸ
SELECT * FROM userTbl
 ORDER BY birthYear ASC;  --ASC(ENDING), DESC(ENDING)

--SELECT INTO (����, ���翡 ���),(PK Ű������ �̻���)
--(���࿡�� �����Ͱ� ��ӽ��̸��� �ʹ� �����Ͱ� �׿��� ���ɹ��� �߻�)
--userTbl_New ���̺� ����
SELECT * INTO userTbl_New FROM userTbl;
SELECT * FROM userTbl_New;

--���ϴ� �ʵ常 ����
SELECT userID,Name,addr INTO userTbl_Backup2 FROM userTbl
WHERE addr = '����';

SELECT * FROM userTbl_Backup;

SELECT * FROM userTbl_Backup2;

