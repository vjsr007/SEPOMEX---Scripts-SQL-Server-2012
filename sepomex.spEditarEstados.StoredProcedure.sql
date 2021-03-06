USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spEditarEstados]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [sepomex].[spEditarEstados]
@EstadoID AS INT,
@Codigo AS VARCHAR(5),
@Nombre AS VARCHAR(500),
@PaisID AS INT,
@UsuarioID INT,
@Activo AS BIT
AS

SET NOCOUNT ON

UPDATE sepomex.Estado
   SET Codigo = @Codigo
      ,Nombre = @Nombre
      ,PaisID = @PaisID
      ,FechaUltimaModificacion = GETDATE()
      ,UsuarioID = @UsuarioID
      ,Activo = @Activo
 WHERE EstadoID=@EstadoID

SET NOCOUNT OFF




GO
