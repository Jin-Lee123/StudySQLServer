SELECT * FROM buyTbl;
SELECT * FROM userTbl;

--JOIN : INNER JOIN(내부조인)
SELECT u.userID
     , u.name
	 , u.addr
	 , CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.num
	 , b.prodName
	 , b.price
	 , b.amount
  FROM userTbl AS u    --u 별칭 없음 userTbl 다써야댐
 INNER JOIN buyTbl AS b   --b 별칭 없음 buyTbl 다써야댐
    ON u.userID=b.userID
 
 WHERE u.userID = 'JYP'    --그중 에서 WHERE로 조용필 찾기