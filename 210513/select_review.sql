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

--출생연도 순으로 (오름차순)으로 정렬해서 조회
SELECT * FROM userTbl
 ORDER BY birthYear ASC;  --ASC(ENDING), DESC(ENDING)

--SELECT INTO (빽업, 복사에 사용),(PK 키정보는 미생성)
--(은행에서 데이터가 계속쌓이면은 너무 데이터가 쌓여서 성능문제 발생)
--userTbl_New 테이블 생성
SELECT * INTO userTbl_New FROM userTbl;
SELECT * FROM userTbl_New;

--원하는 필드만 빽업
SELECT userID,Name,addr INTO userTbl_Backup2 FROM userTbl
WHERE addr = '서울';

SELECT * FROM userTbl_Backup;

SELECT * FROM userTbl_Backup2;

