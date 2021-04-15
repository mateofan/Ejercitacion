CREATE TABLE Bandas (
	id INTEGER NOT NULL,
    nombre VARCHAR (255),
    integrantes INTEGER,
    fecha_inicio DATE,
    fecha_separacion DATE,
    pais VARCHAR (255),
    PRIMARY KEY (id)
    

);

CREATE TABLE Albumes (
	id INTEGER NOT NULL,
    nombre_album VARCHAR (255),
    id_banda INTEGER NOT NULL,
    fecha_publicacion DATE,
	FOREIGN KEY (id_banda) REFERENCES Bandas(id),
    PRIMARY KEY (id)
    

);

CREATE TABLE Canciones (
	id INTEGER NOT NULL,
    nombre VARCHAR (255),
    duracion INTEGER,
    id_album INTEGER NOT NULL,
    id_banda INTEGER NOT NULL,
    fecha_publicacion DATE,
	FOREIGN KEY (id_banda) REFERENCES Bandas(id),
    FOREIGN KEY (id_album) REFERENCES Albumes(id),

    PRIMARY KEY (id)
    

);

INSERT INTO Bandas (nombre, integrantes, fecha_inicio, fecha_separacion, pais) 
VALUES 
(
	"Banda1", 1, '1-1-1999', NULL, "Argentina"
), (

	"Banda2", 2, '1-1-1999', '1-12-2017', "Suecia"
);

INSERT INTO Albumes (nombre_album, id_banda, fecha_publicacion) 
VALUES 
(
	"Album1", 1, "1-3-1999"
), (

	"Album2", 2, "1-3-2016"
);

INSERT INTO Canciones (nombre, duracion, id_album, id_banda, fecha_publicacion) 
VALUES 
(
	"Cancion1", 4, 1, 1,"1-4-2000"
),(
	"Cancion2", 2, 1, 1, "1-4-2000"
),(
	"Cancion3", 4, 1, 1, "1-4-2016"
),(
	"Cancion4", 6, 2, 2, "1-4-2016"
)

SELECT * FROM Bandas;

SELECT * FROM Bandas WHERE pais LIKE "%Argentina%";

SELECT * FROM Bandas WHERE integrantes = 1 ;

SELECT * FROM Canciones WHERE (fecha_publicacion) > DATE(12-12-2015) ;

SELECT * FROM Canciones WHERE duracion > 3 ;

SELECT * FROM Albumes;

