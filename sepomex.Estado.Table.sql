USE [Intranet]
GO
/****** Object:  Table [sepomex].[Estado]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sepomex].[Estado](
	[EstadoID] [int] NOT NULL,
	[Codigo] [varchar](5) NULL,
	[Nombre] [varchar](500) NULL,
	[PaisID] [int] NOT NULL,
	[FechaUltimaModificacion] [datetime] NULL,
	[UsuarioID] [int] NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[EstadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (1, N'01', N'Aguascalientes', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (2, N'02', N'Baja California', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (3, N'03', N'Baja California Sur', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (4, N'04', N'Campeche', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (5, N'05', N'Coahuila de Zaragoza', 1, CAST(N'2015-01-29 21:13:22.833' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (6, N'06', N'Colima', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (7, N'07', N'Chiapas', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (8, N'08', N'Chihuahua', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (9, N'09', N'Distrito Federal', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (10, N'10', N'Durango', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (11, N'11', N'Guanajuato', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (12, N'12', N'Guerrero', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (13, N'13', N'Hidalgo', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (14, N'14', N'Jalisco', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (15, N'15', N'México', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (16, N'16', N'Michoacán de Ocampo', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (17, N'17', N'Morelos', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (18, N'18', N'Nayarit', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (19, N'19', N'Nuevo León', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (20, N'20', N'Oaxaca', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (21, N'21', N'Puebla', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (22, N'22', N'Querétaro', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (23, N'23', N'Quintana Roo', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (24, N'24', N'San Luis Potosí', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (25, N'25', N'Sinaloa', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (26, N'26', N'Sonora', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (27, N'27', N'Tabasco', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (28, N'28', N'Tamaulipas', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (29, N'29', N'Tlaxcala', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (30, N'30', N'Veracruz de Ignacio de la Llave', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (31, N'31', N'Yucatán', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (32, N'32', N'Zacatecas', 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 1)
INSERT [sepomex].[Estado] ([EstadoID], [Codigo], [Nombre], [PaisID], [FechaUltimaModificacion], [UsuarioID], [Activo]) VALUES (33, N'Tx', N'Texas', 2, CAST(N'2015-01-29 22:14:22.130' AS DateTime), 1, 1)
ALTER TABLE [sepomex].[Estado]  WITH CHECK ADD  CONSTRAINT [FK_Pais_Estado] FOREIGN KEY([PaisID])
REFERENCES [sepomex].[Pais] ([PaisID])
GO
ALTER TABLE [sepomex].[Estado] CHECK CONSTRAINT [FK_Pais_Estado]
GO
