USE [Intranet]
GO
/****** Object:  StoredProcedure [dbo].[spObtenerFunciones]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spObtenerFunciones]
@FuncionID int
,@FuncionPadreID int
,@Nombre varchar(50)
,@Descripcion varchar(100)
,@Url varchar(2000)
,@TipoFuncionID int
,@Activo bit
,@TipoFuncion varchar(50)
AS

SELECT		f.FuncionID
			,f.FuncionPadreID
			,f.Nombre
			,f.Descripcion
			,f.Url
			,f.TipoFuncionID
			,f.Activo
			,tf.Nombre as TipoFuncion
FROM		Intranet.dbo.Funcion f WITH(NOLOCK)
INNER JOIN	Intranet.dbo.TipoFuncion tf WITH(NOLOCK)
ON			f.TipoFuncionID=tf.TipoFuncionID
WHERE		(f.FuncionID= @FuncionID OR @FuncionID IS NULL) AND
			(f.FuncionPadreID= @FuncionPadreID OR @FuncionPadreID IS NULL) AND
			(f.Nombre like @Nombre OR @Nombre IS NULL) AND
			(f.Descripcion like @Descripcion OR @Descripcion IS NULL) AND
			(f.Url like @Url OR @Url IS NULL) AND
			(f.TipoFuncionID = @TipoFuncionID OR @TipoFuncionID IS NULL) AND
			(f.Activo = @Activo OR @Activo IS NULL) AND
			(tf.Nombre like @TipoFuncion OR @TipoFuncion IS NULL)


GO
