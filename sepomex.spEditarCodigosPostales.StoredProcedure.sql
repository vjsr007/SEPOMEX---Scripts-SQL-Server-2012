USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spEditarCodigosPostales]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [sepomex].[spEditarCodigosPostales]
@CodigoPostalID AS INT,
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

UPDATE sepomex.CodigoPostal
   SET CodigoPostal = @CodigoPostal
      ,MunicipioID = @MunicipioID
      ,CiudadID = @CiudadId
      ,Asentamiento = @Asentamiento
      ,TipoAsentamiento = @TipoAsentamiento
      ,Zona = @Zona
      ,FechaUltimaModificacion = GETDATE()
      ,UsuarioID = @UsuarioID
      ,Activo = @Activo
 WHERE CodigoPostalID=@CodigoPostalID

SET NOCOUNT OFF




GO
