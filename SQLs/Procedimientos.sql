USE dbinvestigacion;
GO

-- Validacion de existencia de procedimientos

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'SP_registrar')
    DROP PROCEDURE SP_registrar;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'SP_modificar')
    DROP PROCEDURE SP_modificar;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'SP_obtener')
    DROP PROCEDURE SP_obtener;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'SP_listar')
    DROP PROCEDURE SP_listar;
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'SP_eliminar')
    DROP PROCEDURE SP_eliminar;
GO

-- Procedimientos a crear
CREATE PROCEDURE SP_registrar
(
    @cedula VARCHAR(60),
    @nombre VARCHAR(60),
    @telefono VARCHAR(60),
    @correo VARCHAR(60)
)
AS
BEGIN
    INSERT INTO usuario (cedula, nombre, telefono, correo)
    VALUES (@cedula, @nombre, @telefono, @correo);
END
GO

CREATE PROCEDURE SP_modificar
(
    @idusuario INT,
    @cedula VARCHAR(60),
    @nombre VARCHAR(60),
    @telefono VARCHAR(60),
    @correo VARCHAR(60)
)
AS
BEGIN
    UPDATE usuario SET
        cedula = @cedula,
        nombre = @nombre,
        telefono = @telefono,
        correo = @correo
    WHERE id = @idusuario;
END
GO

CREATE PROCEDURE SP_obtener(@idusuario INT)
AS
BEGIN
    SELECT * FROM usuario WHERE id = @idusuario;
END
GO

CREATE PROCEDURE SP_listar
AS
BEGIN
    SELECT * FROM usuario;
END
GO

CREATE PROCEDURE SP_eliminar(@idusuario INT)
AS
BEGIN
    DELETE FROM usuario WHERE id = @idusuario;
END
GO
