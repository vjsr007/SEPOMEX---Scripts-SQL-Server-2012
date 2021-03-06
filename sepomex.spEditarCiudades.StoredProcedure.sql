USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spEditarCiudades]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [sepomex].[spEditarCiudades]
@CiudadID AS INT,
@MunicipioID AS INT,
@Nombre AS VARCHAR(500),
@EstadoID AS INT,
@Activo AS BIT,
@UsuarioID AS INT
AS

SET NOCOUNT ON

UPDATE	sepomex.Ciudad
   SET 
		Nombre = @Nombre
		,EstadoID = @EstadoID
		,MunicipioID = @MunicipioID
		,FechaUltimaModificacion = GETDATE()
		,UsuarioID = @UsuarioID
		,Activo = @Activo
 WHERE	UsuarioID=@UsuarioID

SET NOCOUNT OFF




GO
