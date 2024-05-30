-- 1. Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y "id_producto" (entero, clave foránea de la tabla "Productos").
CREATE TABLE Pedidos (
    id INTEGER PRIMARY KEY,
    id_usuario INTEGER,
    id_producto INTEGER,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);

-- 2. Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con productos.
INSERT INTO Pedidos (id, id_usuario, id_producto) VALUES (1, 1, 1);
INSERT INTO Pedidos (id, id_usuario, id_producto) VALUES (2, 1, 3);
INSERT INTO Pedidos (id, id_usuario, id_producto) VALUES (3, 2, 2);

-- 3. Realiza una consulta que muestre los nombres de los usuarios y los nombres de los productos que han comprado, incluidos aquellos que no han realizado ningún pedido (utiliza LEFT JOIN y COALESCE).
SELECT Usuarios.nombre AS nombre_usuario, COALESCE(Productos.nombre, 'No comprado') AS nombre_producto
FROM Usuarios
LEFT JOIN Pedidos ON Usuarios.id = Pedidos.id_usuario
LEFT JOIN Productos ON Pedidos.id_producto = Productos.id;

-- 4. Realiza una consulta que muestre los nombres de los usuarios que han realizado un pedido, pero también los que no han realizado ningún pedido (utiliza LEFT JOIN).
SELECT Usuarios.nombre AS nombre_usuario, Pedidos.id AS id_pedido
FROM Usuarios
LEFT JOIN Pedidos ON Usuarios.id = Pedidos.id_usuario;

-- 5. Agrega una nueva columna llamada "cantidad" a la tabla "Pedidos" y actualiza los registros existentes con un valor (utiliza ALTER TABLE y UPDATE).
ALTER TABLE Pedidos ADD COLUMN cantidad INTEGER;

UPDATE Pedidos SET cantidad = 1 WHERE id = 1;
UPDATE Pedidos SET cantidad = 2 WHERE id = 2;
UPDATE Pedidos SET cantidad = 3 WHERE id = 3;
