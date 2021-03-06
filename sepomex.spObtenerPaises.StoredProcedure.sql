USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spObtenerPaises]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [sepomex].[spObtenerPaises]
@Activo AS BIT,
@Nombre AS VARCHAR(100),
@Codigo AS VARCHAR(3),
@PaisID AS INT
AS

SET NOCOUNT ON

	IF(LTRIM(RTRIM(@Nombre))='') SET @Nombre=NULL
	IF(LTRIM(RTRIM(@Codigo))='') SET @Codigo=NULL

	SELECT		PaisID
				,Nombre
				,Codigo
				,Moneda
				,CodMoneda
				,FechaUltimaModificacion
				,UsuarioID
				,Activo
	FROM		Intranet.sepomex.Pais p WITH(NOLOCK)
    WHERE		(p.Activo=@Activo OR @Activo IS NULL) AND 
				(p.Nombre like '%' + @Nombre + '%' OR @Nombre IS NULL) AND
				(p.Codigo like '%' + @Codigo + '%' OR @Codigo IS NULL) AND
				(p.PaisID = @PaisID OR @PaisID IS NULL)

SET NOCOUNT OFF


GO
