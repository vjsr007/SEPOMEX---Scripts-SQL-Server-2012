USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spObtenerCodigosPostales]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [sepomex].[spObtenerCodigosPostales]
@CodigoPostal AS VARCHAR(5),
@TipoAsentamiento AS VARCHAR(30),
@Asentamiento AS VARCHAR(100),
@Zona AS VARCHAR(100),
@MunicipioID AS INT,
@CiudadId AS INT,
@EstadoID AS INT,
@Activo AS BIT,
@PaisID AS INT
AS

IF(@MunicipioID=0) SET @MunicipioID=NULL
IF(@CiudadId=0) SET @CiudadId=NULL
IF(@EstadoID=0) SET @EstadoID=NULL
IF(@PaisID=0) SET @PaisID=NULL

IF(LTRIM(RTRIM(@CodigoPostal))='') SET @CodigoPostal=NULL
IF(LTRIM(RTRIM(@TipoAsentamiento))='') SET @TipoAsentamiento=NULL
IF(LTRIM(RTRIM(@Asentamiento))='') SET @Asentamiento=NULL
IF(LTRIM(RTRIM(@Zona))='') SET @Zona=NULL

SET NOCOUNT ON

SELECT 
			cp.CodigoPostalID
			,cp.CodigoPostal
			,cp.MunicipioID
			,cp.CiudadID
			,cp.Asentamiento
			,cp.TipoAsentamiento
			,cp.Zona
			,cp.FechaUltimaModificacion
			,cp.UsuarioID
			,cp.Activo
			,m.Nombre AS Municipio
			,c.Nombre AS Ciudad
			,e.Nombre AS Estado
			,p.Nombre AS Pais
			,p.PaisID
FROM		Intranet.sepomex.CodigoPostal cp WITH(NOLOCK)
LEFT JOIN	Intranet.sepomex.Ciudad c WITH(NOLOCK)
ON			cp.MunicipioId=c.MunicipioID
INNER JOIN	Intranet.sepomex.Municipio m WITH(NOLOCK)
ON			cp.MunicipioId=m.MunicipioId
INNER JOIN	Intranet.sepomex.Estado e WITH(NOLOCK)
ON			m.EstadoID=e.EstadoID
INNER JOIN	Intranet.sepomex.Pais p WITH(NOLOCK)
ON			e.PaisID=p.PaisID
WHERE		
			(cp.CodigoPostal=@CodigoPostal OR @CodigoPostal IS NULL) AND
			(cp.TipoAsentamiento=@TipoAsentamiento OR @TipoAsentamiento IS NULL) AND
			(cp.Asentamiento=@Asentamiento OR @Asentamiento IS NULL) AND
			(cp.Zona=@Zona OR @Zona IS NULL) AND
			(cp.CiudadID=@CiudadID OR @CiudadID IS NULL) AND
			(cp.Activo=@Activo OR @Activo IS NULL) AND
			(cp.MunicipioID=@MunicipioID OR @MunicipioID IS NULL) AND			
			(m.EstadoID=@EstadoID OR @EstadoID IS NULL) AND			
			(e.PaisID=@PaisID OR @PaisID IS NULL)

SET NOCOUNT OFF




GO
