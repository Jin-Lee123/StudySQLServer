-- 1��
SELECT Email, Mobile, Names,addr 
  FROM membertbl
 ORDER BY Names DESC

-- 2��
SELECT Names, Author, ReleaseDate, Price FROM bookstbl

-- 3��
SELECT Idx
     , CONCAT('���� : ', Names) AS 'Names'
	 , CONCAT('���� > ', Author) AS 'Author'
	 , FORMAT(ReleaseDate,'yyyy�� MM�� dd��') AS '������'
	 , ISBN
	 , CONCAT(FORMAT(Price, N'#,0'), '��') AS '����'
  FROM bookstbl
 ORDER BY Idx DESC

--4��
SELECT m.Names, m.Levels, m.Addr
     , r.rentalDate
  FROM  membertbl AS m
  LEFT OUTER JOIN rentaltbl AS r
    ON m.Idx = r.memberIdx
 WHERE r.rentalDate IS NULL

-- 5��
SELECT d.Names
     , CONCAT(FORMAT(SUM(price), N'#,0'),'��')AS '���հ�ݾ�'
  FROM  bookstbl AS b
 INNER JOIN  divtbl AS d
    ON b.Division = d.Division
 GROUP BY ROLLUP(d.Names) 
