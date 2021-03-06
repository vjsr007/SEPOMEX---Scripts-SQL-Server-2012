USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spAgregarEstados]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [sepomex].[spAgregarEstados]
@Codigo AS VARCHAR(5),
@Nombre AS VARCHAR(500),
@PaisID AS INT,
@UsuarioID INT,
@Activo AS BIT
AS

SET NOCOUNT ON

DECLARE @EstadoID AS INT
SET @EstadoID = ISNULL((SELECT MAX(EstadoID) FROM sepomex.Estado WITH(NOLOCK)),0)+1

INSERT INTO sepomex.Estado
           (EstadoID
           ,Codigo
           ,Nombre
           ,PaisID
           ,FechaUltimaModificacion
           ,UsuarioID
           ,Activo)
     VALUES
           (
			@EstadoID
			,@Codigo
			,@Nombre
			,@PaisID
			,GETDATE()
			,@UsuarioID
			,@Activo
		   )

SET NOCOUNT OFF




GO
