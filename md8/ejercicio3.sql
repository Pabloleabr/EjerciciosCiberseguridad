-- 1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "precio" (numérico).
CREATE TABLE Productos (
    id INTEGER PRIMARY KEY,
    nombre TEXT,
    precio NUMERIC
);

-- 2. Inserta al menos cinco registros en la tabla "Productos".
INSERT INTO Productos (id, nombre, precio) VALUES (1, 'Camiseta', 22.0);
INSERT INTO Productos (id, nombre, precio) VALUES (2, 'Calcetin', 43.0);
INSERT INTO Productos (id, nombre, precio) VALUES (3, 'Zapatos', 61.0);
INSERT INTO Productos (id, nombre, precio) VALUES (4, 'Gorra', 15.0);
INSERT INTO Productos (id, nombre, precio) VALUES (5, 'Guantes', 81.0);

-- 3. Actualiza el precio de un producto en la tabla "Productos".
UPDATE Productos SET precio = 25.4 WHERE id = 1;

-- 4. Elimina un producto de la tabla "Productos".
DELETE FROM Productos WHERE id = 5;

-- 5. Realiza una consulta que muestre los nombres de los usuarios junto con los nombres de los productos que han comprado (utiliza un INNER JOIN con la tabla "Productos").

-- Suponiendo que existe una tabla "Compras" que relaciona a los usuarios con los productos comprados
-- La tabla "Compras" tendría las columnas: "usuario_id" (entero) y "producto_id" (entero)

CREATE TABLE Compras (
    usuario_id INTEGER,
    producto_id INTEGER,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id),
    FOREIGN KEY (producto_id) REFERENCES Productos(id)
);

-- Inserción de datos en la tabla "Compras" para ejemplo
INSERT INTO Compras (usuario_id, producto_id) VALUES (1, 1);
INSERT INTO Compras (usuario_id, producto_id) VALUES (1, 3);
INSERT INTO Compras (usuario_id, producto_id) VALUES (2, 2);

-- Consulta para mostrar los nombres de los usuarios junto con los nombres de los productos que han comprado
SELECT Usuarios.nombre AS nombre_usuario, Productos.nombre AS nombre_producto
FROM Compras
INNER JOIN Usuarios ON Compras.usuario_id = Usuarios.id
INNER JOIN Productos ON Compras.producto_id = Productos.id;
