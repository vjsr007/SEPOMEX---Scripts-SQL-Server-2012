USE [Intranet]
GO
/****** Object:  Table [dbo].[tmpUsuarios]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tmpUsuarios](
	[UsuarioID] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[RolID] [int] NOT NULL,
	[Rol] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
