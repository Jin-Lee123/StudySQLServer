-- �ܺ� ����
-- �츮 ���θ����� ������ �ѹ��� �������� ���� ȸ������ ��ȸ
SELECT u.userID,u.name
     , u.addr,CONCAT(u.mobile1,u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl As b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID

 SELECT u.userID,u.name
     , u.addr,CONCAT(u.mobile1,u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
 RIGHT OUTER JOIN buyTbl As b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID
 

 -- �л�/���Ƹ�/�������� ���̺�
 -- OUTERJOIN
 SELECT s.StdID, s.StdName, s.Region
      , c.ClubName, c.CluubRoom
	  , r.RegDate
   FROM StdTbl As s
  LEFT OUTER JOIN reginfoTbl As r
     ON s.StdID= r.StdID
  LEFT OUTER JOIN ClubTbl AS c
     ON c.ClubName= r.ClubName

 SELECT s.StdID, s.StdName, s.Region
      , r.ClubName, c.CluubRoom, r.RegDate
   FROM StdTbl As s
  right OUTER JOIN reginfoTbl As r
     ON s.StdID= r.StdID
  right OUTER JOIN ClubTbl AS c
     ON c.ClubName= r.ClubName





 SELECT s.StdID, s.StdName, s.Region
      , r.ClubName,  r.RegDate
   FROM StdTbl As s
  LEFT OUTER JOIN reginfoTbl As r
     ON s.StdID= r.StdID

--
SELECT c.ClubName, c.CluubRoom ,r.ID,c.CluubRoom, r.RegDate
  FROM ClubTbl AS c
  LEFT OUTER JOIN reginfoTbl AS r
    ON r.ClubName = c.ClubName 
   
