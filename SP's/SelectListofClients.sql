USE [DB_T]
GO

/****** Object:  StoredProcedure [dbo].[SelectListofClients]    Script Date: 3/18/2020 11:04:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectListofClients] @ProveedorServ varchar(30)
AS
BEGIN
SELECT  Nombre, Apellido, Empresa, Email, Telefono, Mobile, FechadeAlta FROM dbo.Clientes WHERE ProveedorServ=@ProveedorServ
END
GO


