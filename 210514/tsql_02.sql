-- 시스템함수(SQL 서버가 기본으로 제공해주는 함수들)
SELECT price FROM buyTbl;
SELECT MIN(price) FROM buyTbl;
SELECT MAX(price) FROM buyTbl;
SELECT AVG(price) FROM buyTbl;
SELECT AVG(amount) FROM buyTbl;  --amount는 정수값이라 평균값이 정수값나옴
SELECT AVG(CAST(amount AS float)) FROM buyTbl;
SELECT CAST(AVG(CAST(amount AS float)) AS decimal(4,3)) FROM buyTbl;
SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;
SELECT PARSE('3.14' AS INT);  -- 예외가 발생하면 쿼리가 비정상 종료
SELECT TRY_PARSE('3.14' AS INT);   -- 값변환못하면 NULL 값대체 이후 정상적 수행

-- heigt SMALLINT --> VARCHAR, CHAR 형변환
SELECT name, CAST(height AS VARCHAR)+'cm' FROM userTbl
 WHERE height IS NOT NULL;  
--NULL값은 =로 비교x // IS(같다) / IS NOT(같지않다)

SELECT PARSE('2021년 5월 14일 10시 27분' AS DATETIME);
SELECT PARSE('2021-05-14 10:28:10' AS DATETIME);
-- YYYY-MM-DD HH:min:ss

SELECT GETDATE();   -- INSERT 현재 년월일시분초 제일 많이 사용

SELECT @@SERVERNAME;  -- @@ : 시스템변수들 (DECLARE필요없음)
SELECT @@VERSION;

--날짜 및 시간 함수
SELECT YEAR(GETDATE()) AS '현재년도';
SELECT MONTH(GETDATE()) AS '현재월';
SELECT DAY(GETDATE()) AS '오늘';

--수치함수
SELECT ABS(-100);  --절대값
SELECT ROUND (3.141592,2); --반올림
SELECT RAND();
SELECT FLOOR(RAND() * 100);  --랜덤값 근대 소수점이라 곱한거임

--논리 함수
SELECT IIF(100>200,'참','거짓');