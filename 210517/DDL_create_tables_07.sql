

CREATE TABLE userTbl
(
    userID CHAR(8) NOT NULL PRIMARY KEY,
	name NVARCHAR(10) NOT NULL,
	birthYear INT NOT NULL,
	height SMALLINT
);
-- DDL
CREATE TABLE buyTbl
(
    num INT NOT NULL PRIMARY KEY,
	userID CHAR(8) NOT NULL
	  FOREIGN KEY REFERENCES userTbl(userID),  --�ַ�Ű,Relational!! �θ��ڽ� �������(RDB) userTbl�� userID��
    prodName NCHAR(6) NOT NULL,
	price INT NOT NULL
)
--DDL �Ѱ� �̻� �÷� PK�� ���� ���̺� ����
CREATE TABLE prodTbl
(
   prodCode NCHAR(3) NOT NULL ,
   prodID NCHAR(4) NOT NULL ,
   prodDate DATETIME NOT NULL ,
   prodCur NCHAR(4) NOT NULL ,
   CONSTRAINT PK_prodTbl_prodCode_prodID
        PRIMARY KEY (prodCode,prodID)
)
--UNIQUE(����ũ) ��������!
--userTbl�� email(����ũ��������) �߰�
--buyTBL ������ �ٻ���, userTBL ������ �ٻ���
--userTBL(email) �÷������ѵ�, ���� ���� ����
ALTER TABLE userTbl
  ADD email VARCHAR(50) NOT NULL  UNIQUE

--CHECK ��������
ALTER TABLE userTBL
  ADD CONSTRAINT CK_birthYear
  CHECK (birthYear >= 1900 AND birthYear <= YEAR(GETDATE()));  --2021����

--DEFAULT �ƹ��͵� �ʳ����� �˾Ƽ� �������� ��

---
SELECT * FROM sampleDB.dbo.userTbl;

SELECT * FROM sqlDB.dbo.buyTbl;

SELECT * FROM AdventureWorksLT2019.SalesLT.Product;