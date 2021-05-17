BEGIN TRAN
UPDATE userTBL SET addr = '제주' WHERE userID = 'KBS'
COMMIT  --값들어감

BEGIN TRAN
UPDATE userTBL SET addr = '미국' WHERE userID = 'KKH'
ROLLBACK  --값안들어감

BEGIN TRAN
UPDATE userTBL SET addr = '호주' WHERE userID = 'JYP'
COMMIT  --값들어감

SELECT * FROM userTbl
-------------------------------
BEGIN TRAN
UPDATE userTBL SET addr = '뉴욕' WHERE userID = 'KBS'
UPDATE userTBL SET addr = '델리' WHERE userID = 'KKH'
UPDATE userTBL SET addr = '런던' WHERE userID = 'JYP'
COMMIT
ROLLBACK

-----------------------------Transaction 처리순서 시뮬레이션
CREATE TABLE testTbl (num INT);
GO
INSERT INTO testTbl VALUES (1),(3),(5);
--실행하지말것
BEGIN TRAN
UPDATE testTbl SET num = 11 WHERE num=1;  --1실행
UPDATE testTbl SET num = 33 WHERE num=3; 
UPDATE testTbl SET num = 55 WHERE num=5;
COMMIT
ROLLBACK

SELECT * FROM testTbl    --다른창에선 실행안됨(데드락 락!걸린거임)

SELECT @@TRANCOUNT