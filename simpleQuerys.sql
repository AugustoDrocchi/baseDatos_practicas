/*1. Queremos tener un listado de todas las categorías.
2. Cómo las categorías no tienen imágenes, solamente interesa obtener un
listado de CategoriaNombre y Descripcion.
3. Obtener un listado de los productos.
4. ¿Existen productos discontinuados? (Discontinuado = 1).
5. Para el viernes hay que reunirse con el Proveedor 8. ¿Qué productos son
los que nos provee?
6. Queremos conocer todos los productos cuyo precio unitario se encuentre
entre 10 y 22.
7. Se define que un producto hay que solicitarlo al proveedor si sus unidades
en stock son menores al Nivel de Reorden. ¿Hay productos por solicitar?
8. Se quiere conocer todos los productos del listado anterior, pero que
unidades pedidas sea igual a cero.*/

# 1- SELECT * FROM categorias
# 2- SELECT CategoriaNombre, Descripcion FROM categorias
# 3- select * from productos
# 4- SELECT * FROM productos WHERE Discontinuado = 1
# 5- SELECT ProductoNombre FROM productos where ProveedorID = 8
# 6- SELECT * FROM productos WHERE precioUnitario BETWEEN 10 AND 22
# 7- SELECT * FROM productos WHERE UnidadesStock < NivelReorden
# 8- SELECT * FROM productos WHERE UnidadesStock < NivelReorden AND UnidadesPedidas = 0 . SI

/*1. Obtener un listado de todos los clientes con Contacto, Compania, Título,
País. Ordenar el listado por País.
2. Queremos conocer a todos los clientes que tengan un título “Owner”.
3. El operador telefónico que atendió a un cliente no recuerda su nombre.
Solo sabe que comienza con “C”. ¿Lo ayudamos a obtener un listado con
todos los contactos que inician con la letra “C”?*/

#1- SELECT contacto, compania, titulo, pais FROM Clientes ORDER BY pais
#2- SELECT * FROM clientes WHERE titulo = "owner"
#3- SELECT Contacto FROM clientes WHERE contacto LIKE "C%"

/*Obtener un listado de todas las facturas, ordenado por fecha de factura
ascendente.
2. Ahora se requiere un listado de las facturas con el país de envío “USA” y
que su correo (EnvioVia) sea distinto de 3.
3. ¿El cliente 'GOURL' realizó algún pedido?
4. Se quiere visualizar todas las facturas de los empleados 2, 3, 5, 8 y 9.*/

#1-SELECT * FROM facturas ORDER BY FechaFactura ASC
#2-SELECT * FROM facturas WHERE PaisEnvio = "USA"
#3-SELECT * FROM facturas WHERE ClienteID = "GOURL" 
#4-SELECT * FROM Facturas WHERE EmpleadoID IN (2, 3, 5, 8, 9)

/*1. Obtener el listado de todos los productos ordenados
descendentemente por precio unitario.
2. Obtener el listado de top 5 de productos cuyo precio unitario es
el más caro.
3. Obtener un top 10 de los productos con más unidades en stock.*/

#1-SELECT * FROM productos ORDER BY PrecioUnitario DESC
#2-SELECT * FROM productos order by PrecioUnitario DESC LIMIT 5
#3-SELECT * FROM productos order by UnidadesStock DESC LIMIT 10

/*1. Obtener un listado de FacturaID, Producto, Cantidad.
2. Ordenar el listado anterior por cantidad descendentemente.
3. Filtrar el listado solo para aquellos productos donde la cantidad
se encuentre entre 50 y 100.
4. En otro listado nuevo, obtener un listado con los siguientes
nombres de columnas: NroFactura (FacturaID), Producto
(ProductoID), Total (PrecioUnitario*Cantidad).*/

#1-SELECT facturaID, ProductoID, cantidad  FROM FacturaDetalle
#2-SELECT facturaID, ProductoID, cantidad  FROM FacturaDetalle ORDER BY cantidad DESC
#3-SELECT facturaID, ProductoID, cantidad  FROM FacturaDetalle LIMIT 50 OFFSET 50 
#4-SELECT facturaID AS NroFactura, ProductoID AS Producto, cantidad*PrecioUnitario AS Total  FROM FacturaDetalle

/*1. Obtener un listado de todos los clientes que viven en “Brazil" o “Mexico”,
o que tengan un título que empiece con “Sales”.
2. Obtener un listado de todos los clientes que pertenecen a una compañía
que empiece con la letra "A".
3. Obtener un listado con los datos: Ciudad, Contacto y renombrarlo
como Apellido y Nombre, Titulo y renombrarlo como Puesto, de todos
los clientes que sean de la ciudad "Madrid".
4. Obtener un listado de todas las facturas con ID entre 10000 y 10500
5. Obtener un listado de todas las facturas con ID entre 10000 y 10500 o de
los clientes con ID que empiecen con la letra “B”.
6. ¿Existen facturas que la ciudad de envío sea “Vancouver” o que
utilicen el correo 3?
7. ¿Cuál es el ID de empleado de “Buchanan”?
8. ¿Existen facturas con EmpleadoID del empleado del ejercicio anterior?
(No relacionar, sino verificar que existan facturas)*/

#1-SELECT * FROM Clientes WHERE Pais LIKE "Brazil" OR pais LIKE "Mexico" OR Titulo LIKE "Sales%"
#2-SELECT * FROM Clientes WHERE compania LIKE "A%"
#3-SELECT ciudad, contacto AS "Apellido y Nombre", titulo AS Puesto FROM Clientes WHERE ciudad = "Madrid"
#4-SELECT * FROM facturas WHERE FacturaID BETWEEN 10000 AND 10500
#5-SELECT * FROM facturas WHERE FacturaID BETWEEN 10000 AND 10500 OR ClienteID LIKE "B%"
#6-SELECT * FROM facturas WHERE ciudadEnvio = "Vancouver" OR EnvioVia = 3
#7-SELECT * FROM Empleados WHERE Apellido LIKE "Buchanan" OR Nombre LIKE "Buchanan" => SI, es el 5
#8-SELECT * FROM facturas WHERE EmpleadoID = 5 