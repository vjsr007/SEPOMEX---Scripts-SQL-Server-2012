USE [Intranet]
GO
/****** Object:  Table [dbo].[TipoFuncion]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoFuncion](
	[TipoFuncionID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoFuncion] PRIMARY KEY CLUSTERED 
(
	[TipoFuncionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoFuncion] ON 

INSERT [dbo].[TipoFuncion] ([TipoFuncionID], [Nombre]) VALUES (1, N'Menu')
SET IDENTITY_INSERT [dbo].[TipoFuncion] OFF
