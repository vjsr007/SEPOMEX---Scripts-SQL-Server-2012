USE [Intranet]
GO
/****** Object:  Table [sepomex].[Pais]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sepomex].[Pais](
	[PaisID] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Codigo] [varchar](2) NOT NULL,
	[Moneda] [varchar](5) NOT NULL,
	[CodMoneda] [varchar](3) NOT NULL,
	[FechaUltimaModificacion] [datetime] NULL,
	[UsuarioID] [int] NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[PaisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [sepomex].[Pais] ([PaisID], [Nombre], [Codigo], [Moneda], [CodMoneda], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (1, N'México', N'52', N'Pe', N'MX', CAST(N'2015-08-20 22:36:36.793' AS DateTime), 2, 1)
INSERT [sepomex].[Pais] ([PaisID], [Nombre], [Codigo], [Moneda], [CodMoneda], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (2, N'USA', N'23', N'US', N'USD', CAST(N'2015-07-17 12:57:32.297' AS DateTime), 1, 1)
INSERT [sepomex].[Pais] ([PaisID], [Nombre], [Codigo], [Moneda], [CodMoneda], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (3, N'México', N'52', N'Pe', N'MX', CAST(N'2015-08-21 17:52:17.130' AS DateTime), 2, 1)
INSERT [sepomex].[Pais] ([PaisID], [Nombre], [Codigo], [Moneda], [CodMoneda], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (4, N'Alemania', N'XX', N'XX', N'XX', CAST(N'2015-04-14 16:47:16.930' AS DateTime), 1, NULL)
INSERT [sepomex].[Pais] ([PaisID], [Nombre], [Codigo], [Moneda], [CodMoneda], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (5, N'Alemania', N'AL', N'AL', N'AL', CAST(N'2015-04-14 16:50:08.897' AS DateTime), 1, NULL)
INSERT [sepomex].[Pais] ([PaisID], [Nombre], [Codigo], [Moneda], [CodMoneda], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (6, N'México', N'52', N'Pe', N'MX', CAST(N'2015-08-20 22:58:25.997' AS DateTime), 2, 1)
INSERT [sepomex].[Pais] ([PaisID], [Nombre], [Codigo], [Moneda], [CodMoneda], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (7, N'México', N'52', N'Pe', N'MX', CAST(N'2015-08-21 16:05:23.930' AS DateTime), 2, 1)
INSERT [sepomex].[Pais] ([PaisID], [Nombre], [Codigo], [Moneda], [CodMoneda], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (8, N'Australia', N'a', N'a', N'a', CAST(N'2015-08-20 22:35:15.243' AS DateTime), 2, 1)
