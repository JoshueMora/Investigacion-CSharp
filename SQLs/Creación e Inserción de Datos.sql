USE master;
GO

IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'dbinvestigacion')
    CREATE DATABASE dbinvestigacion;
GO

USE dbinvestigacion;
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'usuario')
    CREATE TABLE usuario (
        id INT PRIMARY KEY IDENTITY(1, 1),
        cedula VARCHAR(10),
        nombre VARCHAR(20),
        telefono VARCHAR(10),
        correo VARCHAR(50)
    );
GO

SELECT * FROM dbo.usuario;

INSERT INTO dbo.usuario (cedula, nombre, telefono, correo)
VALUES
    ('1234567890', 'Usuario 1', '1111111111', 'usuario1@ejemplo.com'),
    ('2345678901', 'Usuario 2', '2222222222', 'usuario2@ejemplo.com'),
    ('3456789012', 'Usuario 3', '3333333333', 'usuario3@ejemplo.com'),
    ('4567890123', 'Usuario 4', '4444444444', 'usuario4@ejemplo.com'),
    ('5678901234', 'Usuario 5', '5555555555', 'usuario5@ejemplo.com');

SELECT * FROM dbo.usuario;