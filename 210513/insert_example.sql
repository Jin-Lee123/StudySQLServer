-- ������ �Է�
INSERT INTO testTbl VALUES ('ȫ�浿', '����');
INSERT INTO testTBL ( userName,addr) VALUES ( '����' ,'����');
INSERT INTO testTBL (userName) VALUES ( '������')  --�ȵ� 3���� 2������ ���ؼ�
INSERT INTO testTBL (addr,  userName) VALUES ('����', '������')
INSERT INTO testTBL (userName) VALUES ( 'ȫ���')
INSERT INTO testTBL (addr) VALUES('����')

SELECT * FROM testTBL

--DELETE FROM testTBL;

INSERT INTO userTbl (userID, name, birthYear, addr) 
VALUES ('IU','������',1993,'����');

SELECT * FROM userTbl WHERE userID = 'IU'

INSERT INTO userTbl (userID, name, birthYear, addr,height)
VALUES ('JJH','������','1982','�ž�',187);

SELECT * FROM userTbl

