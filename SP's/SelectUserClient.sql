USE [DB_T]
GO

/****** Object:  StoredProcedure [dbo].[SelectUserClient]    Script Date: 3/18/2020 11:05:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectUserClient] @Email varchar(30), @passwd varchar(30) 
AS
BEGIN 
	DECLARE @Mensag varchar(30);
	IF NOT EXISTS(SELECT * FROM dbo.UserC WHERE Email=@Email)
	BEGIN
		SET @Mensag='Usuario Incorrecto'
		SELECT @Mensag AS Mensaje
	END
	ELSE
	BEGIN
		IF NOT EXISTS(SELECT * FROM dbo.UserC WHERE Password=@passwd)
		BEGIN
			SET @Mensag='Contraseña Incorrecta'
			SELECT @Mensag AS Mensaje
		END
		ELSE
		BEGIN
			SELECT FName, LName FROM dbo.UserC WHERE Email=@Email AND Password=@passwd
		END
	END

	
END


 
GO


