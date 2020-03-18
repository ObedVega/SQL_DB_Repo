USE [DB_T]
GO

/****** Object:  Table [dbo].[UserC]    Script Date: 3/18/2020 10:49:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserC](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FName] [varchar](15) NOT NULL,
	[LName] [varchar](15) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[Password] [varchar](30) NOT NULL,
	[Company] [varchar](15) NULL,
	[StartDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserC] ADD  DEFAULT (getdate()) FOR [StartDate]
GO


