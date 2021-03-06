USE [Intranet]
GO
/****** Object:  Table [dbo].[Funcion]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcion](
	[FuncionID] [int] IDENTITY(1,1) NOT NULL,
	[FuncionPadreID] [int] NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Url] [nvarchar](2000) NULL,
	[TipoFuncionID] [int] NOT NULL,
	[Activo] [bit] NOT NULL CONSTRAINT [DF_Funcion_Activo]  DEFAULT ((1)),
	[Metadata] [nvarchar](1000) NULL,
	[Orden] [int] NULL,
 CONSTRAINT [PK_Funcion] PRIMARY KEY CLUSTERED 
(
	[FuncionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Funcion] ON 

INSERT [dbo].[Funcion] ([FuncionID], [FuncionPadreID], [Nombre], [Descripcion], [Url], [TipoFuncionID], [Activo], [Metadata], [Orden]) VALUES (1, NULL, N'Catalogos', N'Catálogos', N'/Catalogo/Pais', 1, 1, N'fa fa-database fa-fw', 2)
INSERT [dbo].[Funcion] ([FuncionID], [FuncionPadreID], [Nombre], [Descripcion], [Url], [TipoFuncionID], [Activo], [Metadata], [Orden]) VALUES (2, 1, N'Pais', N'País', N'/Catalogo/Pais', 1, 1, NULL, NULL)
INSERT [dbo].[Funcion] ([FuncionID], [FuncionPadreID], [Nombre], [Descripcion], [Url], [TipoFuncionID], [Activo], [Metadata], [Orden]) VALUES (3, 1, N'Estado', N'Estado', N'/Catalogo/Estado', 1, 1, NULL, NULL)
INSERT [dbo].[Funcion] ([FuncionID], [FuncionPadreID], [Nombre], [Descripcion], [Url], [TipoFuncionID], [Activo], [Metadata], [Orden]) VALUES (4, 1, N'Municipio', N'Municipio', N'/Catalogo/Municipio', 1, 1, NULL, NULL)
INSERT [dbo].[Funcion] ([FuncionID], [FuncionPadreID], [Nombre], [Descripcion], [Url], [TipoFuncionID], [Activo], [Metadata], [Orden]) VALUES (5, 1, N'Ciudad', N'Ciudad', N'/Catalogo/Ciudad', 1, 1, NULL, NULL)
INSERT [dbo].[Funcion] ([FuncionID], [FuncionPadreID], [Nombre], [Descripcion], [Url], [TipoFuncionID], [Activo], [Metadata], [Orden]) VALUES (7, 1, N'CodigoPostal', N'Codigo Postal', N'/Catalogo/CodigoPostal', 1, 1, NULL, NULL)
INSERT [dbo].[Funcion] ([FuncionID], [FuncionPadreID], [Nombre], [Descripcion], [Url], [TipoFuncionID], [Activo], [Metadata], [Orden]) VALUES (8, 1, N'Cliente', N'Cliente', N'/Catalogo/Cliente', 1, 1, NULL, NULL)
INSERT [dbo].[Funcion] ([FuncionID], [FuncionPadreID], [Nombre], [Descripcion], [Url], [TipoFuncionID], [Activo], [Metadata], [Orden]) VALUES (9, NULL, N'Home', N'Home', N'/Home/Index', 1, 1, N'fa fa-dashboard fa-fw', 1)
INSERT [dbo].[Funcion] ([FuncionID], [FuncionPadreID], [Nombre], [Descripcion], [Url], [TipoFuncionID], [Activo], [Metadata], [Orden]) VALUES (10, NULL, N'Seguridad', N'Seguridad', N'/Seguridad/Index', 1, 1, N'fa fa-lock fa-fw', 3)
SET IDENTITY_INSERT [dbo].[Funcion] OFF
