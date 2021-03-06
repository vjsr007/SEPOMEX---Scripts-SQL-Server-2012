USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spAgregarCiudades]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [sepomex].[spAgregarCiudades]
@MunicipioID AS INT,
@Nombre AS VARCHAR(500),
@EstadoID AS INT,
@Activo AS BIT,
@UsuarioID AS INT
AS

SET NOCOUNT ON

DECLARE @CiudadID AS INT
SET @CiudadID = ISNULL((SELECT MAX(CiudadID) FROM sepomex.Ciudad WITH(NOLOCK)),0)+1

INSERT INTO sepomex.Ciudad
           (CiudadID
           ,Nombre
           ,EstadoID
           ,MunicipioID
           ,FechaUltimaModificacion
           ,UsuarioID
           ,Activo)
     VALUES
           (
			@CiudadID
			,@Nombre
			,@EstadoID
			,@MunicipioID
			,GETDATE()
			,@UsuarioID
			,@Activo
		   )

SET NOCOUNT OFF




GO
