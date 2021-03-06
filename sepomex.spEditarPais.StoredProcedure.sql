USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spEditarPais]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [sepomex].[spEditarPais]
@PaisID AS INT,
@Nombre varchar(100),
@Codigo varchar(2),
@Moneda varchar(5),
@CodMoneda varchar(3),
@UsuarioID int,
@Activo bit 
AS

SET NOCOUNT ON

UPDATE	sepomex.Pais
SET		Nombre = @Nombre
		,Codigo = @Codigo
		,Moneda = @Moneda
		,CodMoneda = @CodMoneda
		,FechaUltimaModificacion = GETDATE()
		,UsuarioID = @UsuarioID
		,Activo = @Activo
 WHERE	PaisID=@PaisID

SET NOCOUNT OFF




GO
