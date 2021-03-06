USE [Intranet]
GO
/****** Object:  StoredProcedure [sepomex].[spAgregarPais]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [sepomex].[spAgregarPais]
@Nombre varchar(100),
@Codigo varchar(2),
@Moneda varchar(5),
@CodMoneda varchar(3),
@UsuarioID int
AS

SET NOCOUNT ON

DECLARE @PaisID AS INT

SET @PaisID = ISNULL((SELECT MAX(PaisID) FROM sepomex.Pais WITH(NOLOCK)),0)+1

INSERT INTO sepomex.Pais
           (PaisID
           ,Nombre
           ,Codigo
           ,Moneda
           ,CodMoneda
           ,FechaUltimaModificacion
           ,UsuarioID
           ,Activo)
     VALUES
           (@PaisID,
           @Nombre,
           @Codigo,
           @Moneda,
           @CodMoneda,
           GETDATE(),
           @UsuarioID,
           1)

SET NOCOUNT OFF



GO
