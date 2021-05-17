-- 테이블 생성
CREATE TABLE ddlTbl
(
    id int NOT NULL PRIMARY KEY IDENTITY (1,1) ,
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME
);
GO

--DDL로 테이블 수정
ALTER TABLE ddlTbl ADD newColumn VARCHAR(10);  
DROP TABLE ddlTbl