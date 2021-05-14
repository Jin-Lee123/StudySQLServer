--문자열 함수
SELECT ASCII('+'), CHAR(67);  -- 사용빈도:하
SELECT UNICODE('가'),NCHAR(44032);

--문자열 연결
SELECT CONCAT('SQL ', 'server ',2019) AS[name];  --사용빈도:상  (문자든 숫자열이든 다가능 형변환 필요x)
SELECT 'SQL '+ 'server '+ CAST(2019 AS VARCHAR);

--단어 시작 위치
SELECT CHARINDEX('world', 'Hello world!');
-- C#,java,python 문자열0부터 시작
-- BUT DB는 1부터 시작

--LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20)
SET @STR = 'SQL Server 2019'
SELECT LEFT(@STR,3), RIGHT(@STR,4) 

SELECT SUBSTRING('대한민국만세!',5,2);  --5번째부터 2개

SELECT LEN('Hello World');  --글자 길이 수
SELECT LEN('대한민국만세!');

SELECT LOWER('hELLO World!'); --소문자변경
SELECT UPPER('hELLO World!'); --대문자변경

SELECT '     SQL     ',LTRIM('     SQL     '); --왼쪽 스페이스 삭제 -중
SELECT '     SQL     ',RTRIM('     SQL     '); --오른쪽 스페이스 삭제 -중
SELECT '     SQL     ',TRIM('     SQL     ');--양쪽 스페이스 삭제 -상

--REPlACE 사용빈도 : 최상
SELECT REPLACE('SQL Server 2019,Server만쉐','Server','서버')  --'Server'를 '서버'로 변경

--STR 사용빈도 : 하
SELECT STR(3.141592);   --숫자를 문자로변경
SELECT STR(45);

--FORMAT 사용빈도 : 상
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss')  --한국식
SELECT FORMAT(GETDATE(), 'MM/dd/yyyy hh:mm:ss')  --미국식

