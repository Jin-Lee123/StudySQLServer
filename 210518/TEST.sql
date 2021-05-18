-- 1번
SELECT Email, Mobile, Names,addr 
  FROM membertbl
 ORDER BY Names DESC

-- 2번
SELECT Names, Author, ReleaseDate, Price FROM bookstbl

-- 3번
SELECT Idx
     , CONCAT('제목 : ', Names) AS 'Names'
	 , CONCAT('저자 > ', Author) AS 'Author'
	 , FORMAT(ReleaseDate,'yyyy년 MM월 dd일') AS '출판일'
	 , ISBN
	 , CONCAT(FORMAT(Price, N'#,0'), '원') AS '가격'
  FROM bookstbl
 ORDER BY Idx DESC

--4번
SELECT m.Names, m.Levels, m.Addr
     , r.rentalDate
  FROM  membertbl AS m
  LEFT OUTER JOIN rentaltbl AS r
    ON m.Idx = r.memberIdx
 WHERE r.rentalDate IS NULL

-- 5번
SELECT d.Names
     , CONCAT(FORMAT(SUM(price), N'#,0'),'원')AS '총합계금액'
  FROM  bookstbl AS b
 INNER JOIN  divtbl AS d
    ON b.Division = d.Division
 GROUP BY ROLLUP(d.Names) 
