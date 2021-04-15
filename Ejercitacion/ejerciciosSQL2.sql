CREATE TABLE Clientes (
	id INTEGER NOT NULL,
    nombre VARCHAR (255),
    pais VARCHAR (255),
    PRIMARY KEY (id)
    

);

CREATE TABLE Productos (
	id INTEGER NOT NULL,
    nombre VARCHAR (255),
    precio INTEGER,
    PRIMARY KEY (id)
    

);

CREATE TABLE Pedidos (
    id INTEGER NOT NULL,
    client_id INTEGER NOT NULL,
    fecha_realizacion DATE,
    FOREIGN KEY (client_id) REFERENCES Clientes(id),
    PRIMARY KEY (id)

);

CREATE TABLE PedidosProductos (
    id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    order_id INTEGER NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Productos(id),
    FOREIGN KEY (order_id) REFERENCES Pedidos(id),
    PRIMARY KEY (id)

);

INSERT INTO Clientes (nombre, pais) 
VALUES 
(
	"Google", "Estados Unidos"
), (

	"Mercadolibre", "Argentina"
);

INSERT INTO Productos (nombre, precio) 
VALUES 
(
	"Mantenimiento", 100
), (

	"Desarrollo", 200
);

INSERT INTO Pedidos (client_id, fecha_realizacion) 
VALUES 
(
	2, "2-2-2020"
), (

	2, "4-2-2020"
), (

    1, "3-2-2021"
), (
    2, "4-5-2021"
)

INSERT INTO PedidosProductos (product_id, order_id) 
VALUES 
(
	1, 1
), (

	2, 1
), (

    1, 2
), (
    2, 3
), (
    1, 4
), (
    2, 4
);

SELECT * FROM Clientes;

Select Pedidos.*, c.nombre FROM Pedidos INNER JOIN Clientes as c ON
c.id = Pedidos.client_id WHERE Pedidos.client_id =2;}

Select p.nombre, pd.fecha_realizacion From PedidosProductos as pp
INNER JOIN Productos as p ON 
p.id = pp.product_id
INNER JOIN Pedidos as pd ON
pd.id =pp.order_id
INNER JOIN Clientes as c ON
c.id = pd.client_id

WHERE pd.id = 1;
