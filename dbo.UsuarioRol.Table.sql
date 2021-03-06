USE [Intranet]
GO
/****** Object:  Table [dbo].[UsuarioRol]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioRol](
	[UsuarioRolID] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[RolID] [int] NOT NULL,
 CONSTRAINT [PK_UsuarioRol] PRIMARY KEY CLUSTERED 
(
	[UsuarioRolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[UsuarioRol] ON 

INSERT [dbo].[UsuarioRol] ([UsuarioRolID], [UsuarioID], [RolID]) VALUES (1, 1, 2)
INSERT [dbo].[UsuarioRol] ([UsuarioRolID], [UsuarioID], [RolID]) VALUES (2, 2, 1)
SET IDENTITY_INSERT [dbo].[UsuarioRol] OFF
