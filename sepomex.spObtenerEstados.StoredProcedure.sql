USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spObtenerEstados]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [sepomex].[spObtenerEstados]
@EstadoID AS INT,
@Codigo AS VARCHAR(5),
@Nombre AS VARCHAR(500),
@PaisID AS INT,
@Activo AS BIT
AS

IF(@EstadoID=0) SET @EstadoID=NULL
IF(@PaisID=0) SET @PaisID=NULL

IF(LTRIM(RTRIM(@Nombre))='') SET @Nombre=NULL
IF(LTRIM(RTRIM(@Codigo))='') SET @Codigo=NULL

SET NOCOUNT ON

SELECT 
			e.EstadoID
			,e.Codigo
			,e.Nombre
			,e.PaisID
			,e.FechaUltimaModificacion
			,e.UsuarioID
			,e.Activo
			,p.Nombre AS Pais
FROM		Intranet.sepomex.Estado e WITH(NOLOCK)
INNER JOIN	Intranet.sepomex.Pais p WITH(NOLOCK)
ON			e.PaisID=p.PaisID
WHERE		(e.EstadoID=@EstadoID OR @EstadoID IS NULL) AND
			(e.Codigo LIKE '%' + @Codigo + '%' OR @Codigo IS NULL) AND
			(e.Nombre LIKE '%' + @Nombre + '%' OR @Nombre IS NULL) AND
			(e.PaisID=@PaisID OR @PaisID IS NULL) AND
			(e.Activo=@Activo OR @Activo IS NULL)

SET NOCOUNT OFF




GO
