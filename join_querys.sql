/*Realizar una consulta de la facturación de e-market. Incluir la siguiente información:
● Id de la factura
● fecha de la factura
● nombre de la empresa de correo
● nombre del cliente
● categoría del producto vendido
● nombre del producto
● precio unitario
● cantidad

SELECT f.FacturaID, f.FechaFactura, c.Compania, cl.Contacto, ca.CategoriaNombre AS Nombre, p.ProductoNombre AS Producto, fd.PrecioUnitario, fd.Cantidad
FROM facturas f
INNER JOIN correos c ON f.EnvioVia = c.CorreoID
INNER JOIN clientes cl ON f.ClienteID = cl.ClienteID
INNER JOIN facturadetalle fd ON f.FacturaID = fd.FacturaID
INNER JOIN productos p ON fd.ProductoID = p.ProductoID
INNER JOIN categorias ca ON p.CategoriaID = ca.CategoriaID;

1.listar todas las categorías junto con información de sus productos. Incluir todas
las categorías aunque no tengan productos.

Select * from categorias
left join productos on categorias.categoriaID = productos.categoriaID

2. Listar la información de contacto de los clientes que no hayan comprado nunca
en emarket.

select * from clientes
left join Facturas on facturas.clienteID = clientes.clienteID
where facturas.ClienteID is null

3. Realizar un listado de productos. Para cada uno indicar su nombre, categoría, y
la información de contacto de su proveedor. Tener en cuenta que puede haber
productos para los cuales no se indicó quién es el proveedor.

select productonombre from productos
left join proveedores on proveedores.proveedorID = productos.proveedorID
join categorias on categorias.categoriaID = productos.categoriaID

4. Para cada categoría listar el promedio del precio unitario de sus productos.
select categoriaID

SELECT CategoriaNombre, AVG (precioUnitario) FROM categorias
INNER JOIN productos ON productos.CategoriaID = categorias.CategoriaID
GROUP BY CategoriaNombre;

5. Para cada cliente, indicar la última factura de compra. Incluir a los clientes que
nunca hayan comprado en e-market.

select c.clienteID, max(fechafactura) facturaID from facturas f
right join clientes c on c.clienteID = f.clienteID
group by c.clienteID;


6. Todas las facturas tienen una empresa de correo asociada (enviovia). Generar un
listado con todas las empresas de correo, y la cantidad de facturas
correspondientes. Realizar la consulta utilizando RIGHT JOIN.*/

SELECT c.Compania, COUNT(f.FacturaID) AS "Cantidad de facturas"
FROM facturas f
RIGHT JOIN correos c ON f.EnvioVia = c.CorreoID
group by c.Compania;