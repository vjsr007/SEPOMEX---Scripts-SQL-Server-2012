USE [Intranet]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[UsuarioID] [int] IDENTITY(1,1) NOT NULL,
	[Pass] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
	[Recordarme] [bit] NULL,
	[Foto] [nvarchar](4000) NULL,
	[NombreCompleto] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([UsuarioID], [Pass], [Nombre], [Activo], [Recordarme], [Foto], [NombreCompleto]) VALUES (1, N'Operador', N'Operador', 1, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([UsuarioID], [Pass], [Nombre], [Activo], [Recordarme], [Foto], [NombreCompleto]) VALUES (2, N'Administrador', N'Administrador', 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
