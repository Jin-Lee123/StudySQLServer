-- UPDATE
-- 트랜잭션 시작
BEGIN TRAN; --(TRANSACTION)  --혹시모르니 트랜잭션 먼저 시작하기!!

UPDATE testTbl
   SET userName = '성명권'
 WHERE Id =2;               --수정하는 부분의 위치!!(WHERE절을 빼먹지 말자 빼먹으면 전부 값 같아짐)

UPDATE testTbl
   SET userName = '성명건'
     , addr = '부산'
 WHERE Id =4;

SELECT * FROM testTbl;

COMMIT;  --재대로 수정했을때 커밋
ROLLBACK;  --수정이 오류가있을때 롤빽!

TRUNCATE TABLE testTBL; --있는 데이터 전부를 삭제하고 
-- 1부터 다시 시작