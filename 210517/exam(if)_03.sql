-- 구매한 금액에따라서 최우수/우수/일반고객으로 분류하는 쿼리작성
--SELECT * FROM userTbl
--SELECT * FROM buyTbl   --두개 열어서 멀조인할지 확인

WITH cte_custlevel([사용자ID],[회원명],[총구매금액],[고객등급])
AS
(
SELECT u.userID AS '사용자ID'
     , u.name AS '회원명'
     , IIF(SUM(price*amount) IS NULL, 0,SUM(price*amount)) AS '총구매금액'  --NULL을 0으로 바꿈
     , CASE 
	    WHEN (sum(b.price*b.amount) >=2500) THEN '최우수고객'
	    WHEN (sum(b.price*b.amount) >=2000) THEN '우수고객'
	    WHEN (sum(b.price*b.amount) >=1) THEN '일반고객'
	    ELSE '유령고객'
	   END AS '고객등급'
  FROM userTbl AS u 
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 GROUP BY u.userID, u.name
 --ORDER BY SUM(b.price*b.amount) DESC;
)

SELECT [사용자ID],[회원명]
      , FORMAT([총구매금액],'C4') AS '총구매금액'
	  ,[고객등급] 
  FROM cte_custlevel
 ORDER BY [총구매금액] DESC;