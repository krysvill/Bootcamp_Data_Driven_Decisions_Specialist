CREATE DATABASE Competencias_Esports;
USE Competencias_Esports;

-- Tabla Competencias
CREATE TABLE Competencias (
    competencia_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    ubicacion VARCHAR(100),
    premios DECIMAL(10,2),
    duracion DECIMAL(5,2)
);

-- Tabla Equipos
CREATE TABLE Equipos (
    equipo_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    region VARCHAR(50),
    rendmiento_actual DECIMAL(5,2)
);

-- Tabla Jugadores
CREATE TABLE Jugadores (
    jugador_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT,
    equipo_id INT, 
    estadisticas VARCHAR(255), 
    FOREIGN KEY (equipo_id) REFERENCES Equipos(equipo_id)
);

CREATE TABLE Registros_Competencias (
    id_registro INT AUTO_INCREMENT PRIMARY KEY,
    id_competencia INT NOT NULL,       -- a qué partido/competencia pertenece
    id_equipo INT NOT NULL,            -- qué equipo jugó
    posicion TINYINT NOT NULL,      -- 0 = visitante, 1 = local
    rendimiento DECIMAL(5,2),                -- rendimiento numérico del equipo tipo calificacion 0 a 10
    resultado TINYINT NOT NULL,     -- 0 = derrota, 1 = empate, 2 = victoria
    tiempo_duracion INT NOT NULL,      -- duración real del partido en minutos
    FOREIGN KEY (id_competencia) REFERENCES Competencias(competencia_id),
    FOREIGN KEY (id_equipo) REFERENCES Equipos(equipo_id)
);

DROP TABLE Registros_Competencias;
-- DROP DATABASE competencias_esports;


