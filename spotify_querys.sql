/*1-Listar las canciones que poseen la letra “z” en su título.
2-Listar las canciones que poseen como segundo carácter la letra “a” y como último, la letra “s”.
3-Mostrar la playlist que tiene más canciones, renombrando las columnas poniendo mayúsculas en la primera letra, los tildes correspondientes y agregar los espacios entre palabras.
4-En otro momento se obtuvo un listado con los 5 usuarios más jóvenes, obtener un listado de los 10 siguientes.
5-Listar las 5 canciones con más reproducciones, ordenadas descendentemente.
6-Generar un reporte de todos los álbumes ordenados alfabéticamente.
7-Listar todos los álbumes que no tengan imagen, ordenados alfabéticamente.
8-Insertar un usuario nuevo con los siguientes datos (tener en cuenta las relaciones):
a) nombreusuario: nuevousuariodespotify@gmail.com
b) Nombre y apellido: Elmer Gomez
c) password: S4321m
d) Fecha de nacimiento: 15/11/1991
e) Sexo: Masculino
f) Código Postal: B4129ATF
g) País: Colombia
9-Editar todos los artistas que no tengan una imagen cargada y cargarles el texto “Imagen faltante” en la columna de imagen.*/

#SELECT titulo FROM cancion WHERE titulo LIKE "%z%"
#SELECT titulo FROM cancion WHERE titulo LIKE "_a%s" 
#SELECT titulo AS Titulo, cantcanciones AS "Cantidad de canciones", Fechacreacion AS "Fecha de creacion", Fechaeliminada AS "Fecha Eliminada" FROM playlist ORDER BY cantcanciones DESC LIMIT 1
#SELECT * FROM usuario ORDER BY fecha_nac DESC LIMIT 10 OFFSET 5 
#SELECT * FROM cancion ORDER BY cantreproduccion DESC LIMIT 5
#SELECT * FROM album ORDER BY Titulo ASC
#SELECT * FROM album WHERE imagenportada IS null ORDER BY Titulo 
#INSERT INTO usuario VALUES (DEFAULT, 'nuevousuariodespotify@gmail.com', 'Elmer Gomez', '1991-11-15', 'Masculino', 'B4129ATF', 'S4321m', 2, 3, '2022-08-26')
#UPDATE artista SET imagen = 'imagen faltante' WHERE imagen IS NULL;
