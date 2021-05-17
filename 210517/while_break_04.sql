--1부터 100까지 수를 반복하면서 7의 배수는 합산 하지않고 나머지 합산하라.
DECLARE @i INT, @hap BIGINT

SET @i = 0
SET @hap= 0

WHILE (@i<=100)
BEGIN
    IF (@i % 7 = 0)
	BEGIN
	    PRINT CONCAT('7의 배수 : ' , @i)
		SET @i = @i+1
		CONTINUE
	END
    
	SET @hap = @hap + @i
	-- IF (@hap >2000) BREAK
	SET @i = @i+1;          -- @i++
END

PRINT CONCAT('1~100 합은==>' , @hap);