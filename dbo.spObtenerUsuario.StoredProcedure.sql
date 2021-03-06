USE [Intranet]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerUsuario]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spObtenerUsuario]
@nombre nvarchar(100),
@pass nvarchar(100)
AS

SET NOCOUNT ON

SELECT		u.UsuarioID,
			u.Nombre,
			r.RolID,
			Rol = r.Nombre
FROM		dbo.Usuario					u WITH(NOLOCK)
INNER JOIN	dbo.UsuarioRol				ur WITH(NOLOCK)
ON			u.UsuarioID=ur.UsuarioID
INNER JOIN	dbo.Rol							r WITH(NOLOCK)
ON			ur.RolID=r.RolID
WHERE		u.Nombre=@nombre AND u.Pass=@pass AND u.Activo=1

SET NOCOUNT OFF


GO
