USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spAgregarMunicipios]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [sepomex].[spAgregarMunicipios]
@Codigo AS VARCHAR(5),
@Nombre AS VARCHAR(500),
@EstadoID AS INT,
@Activo AS BIT,
@UsuarioID AS INT
AS

SET NOCOUNT ON

DECLARE @MunicipioID AS INT
SET @MunicipioID = ISNULL((SELECT MAX(MunicipioID) FROM sepomex.Municipio WITH(NOLOCK)),0)+1

INSERT INTO sepomex.Municipio
           (MunicipioID
           ,Codigo
           ,Nombre
           ,EstadoID
           ,FechaUltimaModificacion
           ,UsuarioID
           ,Activo)
     VALUES
           (
			@MunicipioID
			,@Codigo
			,@Nombre
			,@EstadoID
			,GETDATE()
			,@UsuarioID
			,@Activo
		   )

SET NOCOUNT OFF




GO
