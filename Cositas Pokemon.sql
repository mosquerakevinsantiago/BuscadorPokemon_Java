CREATE DATABASE pokedex_db;
USE pokedex_db;

CREATE TABLE Usuario (
	id_usuario INT PRIMARY KEY NOT NULL,
    nombre_completo VARCHAR(50) NOT NULL,
    tipo_documento VARCHAR(10),
    documento VARCHAR(20),
    correo VARCHAR(100) UNIQUE,
    pass VARCHAR(100),
    pais VARCHAR(100),
    ciudad VARCHAR(50),
    fecha_registro DATE
);

CREATE TABLE Mochila (
	id_mochila INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_pokemon INT,
    nombre VARCHAR(100),
    imagen VARCHAR(200),	
    tipo VARCHAR(50),
    experiencia_base INT,
    es_favorito BOOLEAN DEFAULT FALSE,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
    
);