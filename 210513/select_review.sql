--데이터 조회
SELECT * FROM userTbl;

--데이터 조회 필터링
SELECT * FROM userTbl
 WHERE userID = 'BBk';

SELECT * FROM userTbl
 WHERE name = '조용필';

SELECT */*ALL*/ FROM userTbl
 WHERE name LIKE '%용%';

SELECT userID,name,addr /*not ALL*/ FROM userTbl
 WHERE name LIKE '%용%';

--특정 테이블 레코드(데이터) 갯수확인
SELECT COUNT(*) FROM userTbl;

-- 사용자 테이블에서
-- 키가 180이상이고 출생연도가 1970년이후에 태어난 사람의
-- 아이디,이름, 키를 조회 하세요!?
SELECT userID, name, height FROM userTbl
 WHERE height >= 180 AND birthYear >= 1970



