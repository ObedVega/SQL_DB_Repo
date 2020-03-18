USE [DB_T]
GO

/****** Object:  StoredProcedure [dbo].[CreateNewClient]    Script Date: 3/18/2020 11:04:34 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateNewClient] @Nombre varchar(20), @Apellido varchar(20), @Empresa varchar(30), @Email varchar(50), @Telefono varchar(10), @Mobile varchar(10), @ProveedorServ varchar(30)
AS
BEGIN
INSERT INTO dbo.Clientes (Nombre, Apellido, Empresa, Email, Telefono, Mobile, ProveedorServ)
VALUES (@Nombre, @Apellido, @Empresa, @Email, @Telefono, @Mobile,@ProveedorServ)
END;
GO


