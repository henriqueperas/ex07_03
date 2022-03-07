CREATE DATABASE ex07_03
GO
USE ex07_03

DECLARE @num INT

SET @num = 25

IF ( @num%2 = 0)
	BEGIN
	PRINT N'o numero é multiplo de 2'; 
END
ELSE IF ( @num%3 = 0)
	BEGIN
	PRINT N'o numero é multiplo de 3'; 
END
ELSE IF ( @num%5 = 0)
	BEGIN
	PRINT N'o numero é multiplo de 5'; 
END

DECLARE @num1 INT, @num2 INT, @num3 INT, @res VARCHAR(10)

SET @num1 = 20
SET @num2 = 10
SET @num3 = 30

IF (@num1 > @num2 AND @num1> @num3)
BEGIN
	IF (@num2> @num3)
		BEGIN
		PRINT @num1
		PRINT @num2
		PRINT @num3
	END
	ELSE
		BEGIN
		PRINT @num1
		PRINT @num3
		PRINT @num2
	END
END
ELSE IF (@num2 > @num1 AND @num2> @num3)
BEGIN
	IF (@num1> @num3)
		BEGIN
		PRINT @num2
		PRINT @num1
		PRINT @num3
	END
	ELSE
		BEGIN
		PRINT @num2
		PRINT @num3
		PRINT @num1
	END
END
ELSE IF (@num3 > @num1 AND @num3 > @num2)
BEGIN
	IF (@num1> @num2)
		BEGIN
		PRINT @num3
		PRINT @num1
		PRINT @num2
	END
	ELSE
		BEGIN
		PRINT @num3
		PRINT @num2
		PRINT @num1
	END
END

DECLARE @num21 INT, @num22 INT, @inter INT, @inter2 INT

SET @num21 = 1
SET @num22 = 2
SET @inter = 0
SET @inter2 = 4

WHILE(@inter <= 11)
BEGIN
	IF(@num21 > @num22)
		BEGIN
		SET @num22 = @num21 + @num22
		SET @inter2 = @inter2 + @num22
	END
	ELSE
		BEGIN
		SET @num21 = @num21 + @num22
		SET @inter2 = @inter2 + @num21
	END
	SET @inter = @inter + 1
END
PRINT @num21
PRINT @num22
PRINT @inter2

DECLARE @num31 INT, @num32 INT, @texto VARCHAR(30)

SET @num31 = 1
SET @num32 = 6
SET @texto = 'aPeNaS uM tExTo PaRa TeStE'

PRINT LOWER(SUBSTRING(@texto, @num31, @num32))
PRINT UPPER(SUBSTRING(@texto, @num31, @num32))

DECLARE @num41 INT, @num42 INT, @texto2 VARCHAR(30)

SET @num41 = 1
SET @num42 = 6
SET @texto2 = 'apenas um texto de teste'

PRINT REVERSE(SUBSTRING(@texto2, @num41, @num42))




