SELECT Productos.Nombre, Productos.Descripcion, Productos.Precio, Inventario.Cantidad
FROM   Productos INNER JOIN
             Inventario ON Productos.ProductoID = Inventario.ProductoID