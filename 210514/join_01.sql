SELECT * FROM buyTbl;
SELECT * FROM userTbl;

--JOIN : INNER JOIN(��������)
SELECT u.userID
     , u.name
	 , u.addr
	 , CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.num
	 , b.prodName
	 , b.price
	 , b.amount
  FROM userTbl AS u    --u ��Ī ���� userTbl �ٽ�ߴ�
 INNER JOIN buyTbl AS b   --b ��Ī ���� buyTbl �ٽ�ߴ�
    ON u.userID=b.userID
 
 WHERE u.userID = 'JYP'    --���� ���� WHERE�� ������ ã��