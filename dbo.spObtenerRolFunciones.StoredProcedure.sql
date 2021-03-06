USE [Intranet]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerRolFunciones]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spObtenerRolFunciones]
@RolID int
,@Rol varchar(50)
,@RolActivo bit
,@FuncionID int
,@FuncionPadreID int
,@Funcion varchar(50)
,@FuncionDescripcion varchar(100)
,@Url varchar(2000)
,@TipoFuncionID int
,@FuncionActivo bit
,@TipoFuncion varchar(50)
AS

SELECT		r.RolID
			,r.Nombre as Rol
			,r.Activo as RolActivo
			,f.FuncionID
			,f.FuncionPadreID
			,f2.Nombre as FuncionPadre
			,f.Nombre as Funcion
			,f.Descripcion as FuncionDescripcion
			,f.Url
			,f.TipoFuncionID
			,f.Activo as FuncionActivo
			,tf.Nombre as TipoFuncion
			,f.Metadata
FROM		Intranet.dbo.Rol r WITH(NOLOCK)
INNER JOIN	Intranet.dbo.RolFuncion rf WITH(NOLOCK)
ON			rf.RolID=r.RolID
INNER JOIN	Intranet.dbo.Funcion f WITH(NOLOCK)
ON			f.FuncionID=rf.FuncionID
INNER JOIN	Intranet.dbo.TipoFuncion tf WITH(NOLOCK)
ON			f.TipoFuncionID=tf.TipoFuncionID
LEFT JOIN	Intranet.dbo.Funcion f2 WITH(NOLOCK)
ON			f2.FuncionID=f.FuncionPadreID
WHERE		(f.FuncionID= @FuncionID OR @FuncionID IS NULL) AND
			(f.FuncionPadreID= @FuncionPadreID OR @FuncionPadreID IS NULL) AND
			(f.Nombre like @Funcion OR @Funcion IS NULL) AND
			(f.Descripcion like @FuncionDescripcion OR @FuncionDescripcion IS NULL) AND
			(f.Url like @Url OR @Url IS NULL) AND
			(f.TipoFuncionID = @TipoFuncionID OR @TipoFuncionID IS NULL) AND
			(f.Activo = @FuncionActivo OR @FuncionActivo IS NULL) AND
			(tf.Nombre like @TipoFuncion OR @TipoFuncion IS NULL)


GO
