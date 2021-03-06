USE [Intranet]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rol](
	[RolID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL CONSTRAINT [DF_Rol_Activo]  DEFAULT ((1)),
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[RolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([RolID], [Nombre], [Activo]) VALUES (1, N'Administrador', 1)
INSERT [dbo].[Rol] ([RolID], [Nombre], [Activo]) VALUES (2, N'Operador', 1)
SET IDENTITY_INSERT [dbo].[Rol] OFF
