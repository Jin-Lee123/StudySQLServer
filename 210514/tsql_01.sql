--프로그래밍 시작
USE sqlDB
GO

DECLARE @myVar1 INT;
DECLARE @myVar2 DECIMAL(5,2);  -- 총:5자리(정수:3자리,소수점:2자리)(소수점은 짤라버림)
DECLARE @myVar3 NCHAR(20);
DECLARE @inchUnit DECIMAL(4,3)

SET @myVar1 = 4000;
SET @myVar2 = 233.114;
SET @myVar3 = '가수 이름 ==>';
SET @inchUnit = 0.393;

--SELECT @myVar1,@myVar2
--SELECT @myVar3 AS 'string', name FROM userTbl WHERE height >180;
SELECT name, height * @inchUnit AS '키(inch)'From userTbl;