USE [DB_T]
GO

/****** Object:  StoredProcedure [dbo].[CreateNewUserClient]    Script Date: 3/18/2020 11:04:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateNewUserClient] @FirstName varchar(15), @LastName varchar(15), @Email varchar(30), @Password varchar(30)
AS
BEGIN
INSERT INTO dbo.UserC (FName, LName, Email, Password)
VALUES (@FirstName, @LastName, @Email, @Password)
END;
GO


