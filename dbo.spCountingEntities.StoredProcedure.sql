USE [Intranet]
GO
/****** Object:  StoredProcedure [dbo].[spCountingEntities]    Script Date: 25/08/2015 12:27:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spCountingEntities]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT		NoPaises		= (SELECT COUNT(0) FROM sepomex.Pais WITH(NOLOCK)),
				NoEstados		= (SELECT COUNT(0) FROM sepomex.Estado WITH(NOLOCK)),
				NoMunicipios	= (SELECT COUNT(0) FROM sepomex.Municipio WITH(NOLOCK)),
				NoCiudades		= (SELECT COUNT(0) FROM sepomex.Ciudad WITH(NOLOCK)),
				NoCP			= (SELECT COUNT(0) FROM sepomex.CodigoPostal WITH(NOLOCK))
END


GO
