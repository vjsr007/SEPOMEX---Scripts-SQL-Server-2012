USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spAgregarCodigosPostales]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [sepomex].[spAgregarCodigosPostales]
@CodigoPostal AS VARCHAR(5),
@TipoAsentamiento AS VARCHAR(30),
@Asentamiento AS VARCHAR(100),
@Zona AS VARCHAR(100),
@MunicipioID AS INT,
@CiudadId AS INT,
@Activo AS BIT,
@UsuarioID AS INT
AS

SET NOCOUNT ON

DECLARE @CodigoPostalID AS INT
SET @CodigoPostalID = ISNULL((SELECT MAX(CodigoPostalID) FROM sepomex.CodigoPostal WITH(NOLOCK)),0)+1

INSERT INTO sepomex.CodigoPostal
           (CodigoPostalID
           ,CodigoPostal
           ,MunicipioID
           ,CiudadID
           ,Asentamiento
           ,TipoAsentamiento
           ,Zona
           ,FechaUltimaModificacion
           ,UsuarioID
           ,Activo)
     VALUES
           (@CodigoPostalID
           ,@CodigoPostal
           ,@MunicipioID
           ,@CiudadID
           ,@Asentamiento
           ,@TipoAsentamiento
           ,@Zona
           ,GETDATE()
           ,@UsuarioID
           ,@Activo)

SET NOCOUNT OFF




GO
