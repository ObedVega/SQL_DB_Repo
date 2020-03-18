USE [DB_T]
GO

/****** Object:  Table [dbo].[Clientes]    Script Date: 3/18/2020 10:49:30 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Clientes](
	[ClienteID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellido] [varchar](20) NOT NULL,
	[Empresa] [varchar](30) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Telefono] [varchar](10) NOT NULL,
	[Mobile] [varchar](10) NOT NULL,
	[ProveedorServ] [varchar](30) NOT NULL,
	[FechadeAlta] [date] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Clientes] ADD  DEFAULT (getdate()) FOR [FechadeAlta]
GO


