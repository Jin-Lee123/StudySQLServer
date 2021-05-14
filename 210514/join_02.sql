-- 3개 테이블 내부조인

SELECT s.stdID, s.stdname,  r.ID,r.clubname ,c.cluubroom,r.regdate
  FROM stdTbl AS s
 INNER JOIN regInfoTbl AS r
    ON s.stdID= r.stdID
 INNER JOIN clubTbl AS c
    ON c.clubname = r.clubname
 WHERE s.StdID ='kbs';