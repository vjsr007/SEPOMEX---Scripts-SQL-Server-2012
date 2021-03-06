USE [Intranet]
GO
/****** Object:  Table [dbo].[RolFuncion]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolFuncion](
	[RolFuncionID] [int] IDENTITY(1,1) NOT NULL,
	[RolID] [int] NOT NULL,
	[FuncionID] [int] NOT NULL,
 CONSTRAINT [PK_RolFuncion] PRIMARY KEY CLUSTERED 
(
	[RolFuncionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[RolFuncion] ON 

INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (1, 1, 1)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (2, 1, 2)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (3, 1, 3)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (4, 1, 4)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (5, 1, 5)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (6, 1, 7)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (7, 1, 8)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (8, 2, 1)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (9, 2, 2)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (10, 2, 3)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (11, 2, 4)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (12, 2, 5)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (13, 2, 7)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (14, 2, 8)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (15, 1, 9)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (16, 1, 10)
INSERT [dbo].[RolFuncion] ([RolFuncionID], [RolID], [FuncionID]) VALUES (17, 2, 9)
SET IDENTITY_INSERT [dbo].[RolFuncion] OFF
