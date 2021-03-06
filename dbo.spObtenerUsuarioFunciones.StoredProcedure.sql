USE [Intranet]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerUsuarioFunciones]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spObtenerUsuarioFunciones]
@UsuarioID INT,
@Nombre VARCHAR(50),
@RolID INT,
@RolActivo BIT,
@Activo BIT,
@FuncionActivo BIT
AS

SET NOCOUNT ON

SELECT		u.UsuarioID,
			u.Nombre,
			u.Recordarme,
			u.Foto,
			u.NombreCompleto,
			r.RolID,
			Rol = r.Nombre,
			f.FuncionID,
			Funcion = f.Nombre,
			f.FuncionPadreID,
			FuncionPadre = f2.Nombre,
			FuncionDescripcion = f.Descripcion,
			f.Url,
			f.Metadata,
			u.Activo UsuarioActivo,
			r.Activo RolActivo,
			f.Activo FuncionActivo,
			f.TipoFuncionID
FROM		dbo.Usuario					u WITH(NOLOCK)
LEFT JOIN	dbo.UsuarioRol				ur WITH(NOLOCK)
ON			u.UsuarioID=ur.UsuarioID
LEFT JOIN	dbo.Rol							r WITH(NOLOCK)
ON			ur.RolID=r.RolID
LEFT JOIN	dbo.RolFuncion					rf WITH(NOLOCK)
ON			rf.RolID=r.RolID
LEFT JOIN	dbo.Funcion						f WITH(NOLOCK)
ON			f.FuncionID=rf.FuncionID		
LEFT JOIN	dbo.Funcion						f2 WITH(NOLOCK)
ON			f2.FuncionID=f.FuncionPadreID
WHERE		(u.UsuarioID=@UsuarioID OR @UsuarioID IS NULL) AND 
			(u.Activo=@Activo OR @Activo IS NULL) AND 
			(f.Activo=@FuncionActivo OR @FuncionActivo IS NULL) AND
			(r.Activo=@RolActivo OR @RolActivo IS NULL)
ORDER BY	f.Orden, f.FuncionPadreID,f.FuncionID

SET NOCOUNT OFF



GO
