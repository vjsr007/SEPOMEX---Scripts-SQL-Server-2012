USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spObtenerMunicipios]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [sepomex].[spObtenerMunicipios]
@MunicipioID AS INT,
@Codigo AS VARCHAR(5),
@Nombre AS VARCHAR(500),
@EstadoID AS INT,
@Activo AS BIT,
@PaisID AS INT
AS

IF(@MunicipioID=0) SET @MunicipioID=NULL
IF(@EstadoID=0) SET @EstadoID=NULL
IF(@PaisID=0) SET @PaisID=NULL

IF(LTRIM(RTRIM(@Nombre))='') SET @Nombre=NULL
IF(LTRIM(RTRIM(@Codigo))='') SET @Codigo=NULL

SET NOCOUNT ON

SELECT 
			m.MunicipioID
			,m.Codigo
			,m.Nombre
			,m.EstadoID
			,m.FechaUltimaModificacion
			,m.UsuarioID
			,m.Activo
			,e.Nombre AS Estado
			,p.Nombre AS Pais
			,p.PaisID
FROM		Intranet.sepomex.Municipio m WITH(NOLOCK)
INNER JOIN	Intranet.sepomex.Estado e WITH(NOLOCK)
ON			m.EstadoID=e.EstadoID
INNER JOIN	Intranet.sepomex.Pais p WITH(NOLOCK)
ON			e.PaisID=p.PaisID
WHERE		(m.MunicipioID=@MunicipioID OR @MunicipioID IS NULL) AND
			(m.Codigo LIKE '%' + @Codigo + '%' OR @Codigo IS NULL) AND
			(m.Nombre LIKE '%' + @Nombre + '%' OR @Nombre IS NULL) AND
			(m.EstadoID=@EstadoID OR @EstadoID IS NULL) AND
			(m.Activo=@Activo OR @Activo IS NULL) AND
			(e.PaisID=@PaisID OR @PaisID IS NULL)

SET NOCOUNT OFF




GO
