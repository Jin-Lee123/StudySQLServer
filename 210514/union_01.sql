--집합
SELECT StdName, Region FROM StdTbl
UNION    --관계없는걸 합쳐버림 ㅎㅎ(테이블 합치기)
SELECT ClubName, CluubRoom FROM ClubTbl;

--데이터 타입 일치
SELECT CAST(id AS varchar),StdID FROM reginfoTbl 
UNION   --데이터 타입이 달라서 원래 안댐 그래서 CAST씀
SELECT ClubName, CluubRoom FROM ClubTbl;

SELECT stdName, Region FROM stuTbl
UNION ALL --중복을 허용
SELECT StdName, Region FROM stuTbl;

--except
SELECT name, CONCAT(mobile1,mobile2) AS mobile FROM userTbl
EXCEPT
SELECT name, CONCAT(mobile1,mobile2) AS mobile FROM userTbl
 WHERE mobile1 IS NOT NULL 

--INTERSECT : 뒤의 테이블 기준 만족 되는것 추려내는 것
SELECT name, CONCAT(mobile1,mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1,mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL 