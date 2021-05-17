

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
	  FOREIGN KEY REFERENCES userTbl(userID),  --왜래키,Relational!! 부모자식 관계맺음(RDB) userTbl의 userID랑
    prodName NCHAR(6) NOT NULL,
	price INT NOT NULL
)
--DDL 한개 이상 컬럼 PK로 지정 테이블 생성
CREATE TABLE prodTbl
(
   prodCode NCHAR(3) NOT NULL ,
   prodID NCHAR(4) NOT NULL ,
   prodDate DATETIME NOT NULL ,
   prodCur NCHAR(4) NOT NULL ,
   CONSTRAINT PK_prodTbl_prodCode_prodID
        PRIMARY KEY (prodCode,prodID)
)
--UNIQUE(유니크) 제약조건!
--userTbl에 email(유니크제약조건) 추가
--buyTBL 데이터 다삭제, userTBL 데이터 다삭제
--userTBL(email) 컬럼삭제한뒤, 밑의 쿼리 실행
ALTER TABLE userTbl
  ADD email VARCHAR(50) NOT NULL  UNIQUE

--CHECK 제약조건
ALTER TABLE userTBL
  ADD CONSTRAINT CK_birthYear
  CHECK (birthYear >= 1900 AND birthYear <= YEAR(GETDATE()));  --2021까지

--DEFAULT 아무것도 않넣으면 알아서 지정값이 들어감

---
SELECT * FROM sampleDB.dbo.userTbl;

SELECT * FROM sqlDB.dbo.buyTbl;

SELECT * FROM AdventureWorksLT2019.SalesLT.Product;