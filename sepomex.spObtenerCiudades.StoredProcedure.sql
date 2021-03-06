USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spObtenerCiudades]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [sepomex].[spObtenerCiudades]
@CiudadID AS INT,
@MunicipioID AS INT,
@Nombre AS VARCHAR(500),
@EstadoID AS INT,
@Activo AS BIT,
@PaisID AS INT
AS

IF(@CiudadID=0) SET @CiudadID=NULL
IF(@MunicipioID=0) SET @MunicipioID=NULL
IF(@EstadoID=0) SET @EstadoID=NULL
IF(@PaisID=0) SET @PaisID=NULL

IF(LTRIM(RTRIM(@Nombre))='') SET @Nombre=NULL

SET NOCOUNT ON

SELECT 
			c.CiudadID
			,c.Nombre
			,c.EstadoID
			,c.MunicipioID
			,c.FechaUltimaModificacion
			,c.UsuarioID
			,c.Activo
			,m.Nombre AS Municipio
			,e.Nombre AS Estado
			,p.Nombre AS Pais
			,p.PaisID
FROM		Intranet.sepomex.Ciudad c WITH(NOLOCK)
INNER JOIN	Intranet.sepomex.Municipio m WITH(NOLOCK)
ON			c.MunicipioId=m.MunicipioId
INNER JOIN	Intranet.sepomex.Estado e WITH(NOLOCK)
ON			m.EstadoID=e.EstadoID
INNER JOIN	Intranet.sepomex.Pais p WITH(NOLOCK)
ON			e.PaisID=p.PaisID
WHERE		(c.CiudadID=@CiudadID OR @CiudadID IS NULL) AND
			(c.Nombre LIKE '%' + @Nombre + '%' OR @Nombre IS NULL) AND
			(c.Activo=@Activo OR @Activo IS NULL) AND
			(c.MunicipioID=@MunicipioID OR @MunicipioID IS NULL) AND			
			(c.EstadoID=@EstadoID OR @EstadoID IS NULL) AND
			(e.PaisID=@PaisID OR @PaisID IS NULL)

SET NOCOUNT OFF




GO
