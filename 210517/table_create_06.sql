-- ���̺� ����
CREATE TABLE ddlTbl
(
    id int NOT NULL PRIMARY KEY IDENTITY (1,1) ,
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME
);
GO

--DDL�� ���̺� ����
ALTER TABLE ddlTbl ADD newColumn VARCHAR(10);  
DROP TABLE ddlTbl