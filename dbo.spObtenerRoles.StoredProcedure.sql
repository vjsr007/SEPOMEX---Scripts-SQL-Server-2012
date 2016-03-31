USE [Intranet]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerRoles]    Script Date: 12/08/2015 05:54:42 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spObtenerRoles]
AS

SET NOCOUNT ON

SELECT 
		RolID
		,Nombre
		,Activo
FROM	Intranet.dbo.Rol WITH(NOLOCK)

SET NOCOUNT OFF





GO
