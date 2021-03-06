USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spEditarMunicipios]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [sepomex].[spEditarMunicipios]
@MunicipioID AS INT,
@Codigo AS VARCHAR(5),
@Nombre AS VARCHAR(500),
@EstadoID AS INT,
@Activo AS BIT,
@UsuarioID AS INT
AS

SET NOCOUNT ON

UPDATE sepomex.Municipio
   SET Codigo = @Codigo
      ,Nombre = @Nombre
      ,EstadoID = @EstadoID
      ,FechaUltimaModificacion = GETDATE()
      ,UsuarioID = @UsuarioID
      ,Activo = @Activo
 WHERE MunicipioID=@MunicipioID

SET NOCOUNT OFF




GO
