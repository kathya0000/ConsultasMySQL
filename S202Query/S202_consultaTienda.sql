SELECT nombre FROM producto;
SELECT nombre, precio FROM producto;
SHOW COLUMNS FROM producto;
SELECT nombre, precio, precio * 1.18 AS dollars FROM producto;
SELECT nombre AS "nombre producto", precio AS euros, precio * 1.18 AS dolar FROM producto;
SELECT UPPER(nombre), precio FROM producto;
SELECT LOWER(nombre), precio FROM producto;
SELECT nombre, UPPER(SUBSTRING(nombre, 1, 2)) FROM fabricante;
SELECT nombre, ROUND(precio) FROM producto;
SELECT nombre, TRUNCATE(precio, 0) FROM producto;
SELECT codigo_fabricante FROM producto;
SELECT DISTINCT codigo_fabricante FROM producto;
SELECT nombre FROM fabricante ORDER BY nombre ASC;
SELECT nombre FROM fabricante ORDER BY nombre DESC;
SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;
SELECT * FROM fabricante LIMIT 5;
SELECT * FROM fabricante LIMIT 3, 2;
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
SELECT producto.nombre FROM producto JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.codigo = 2;
SELECT p.nombre AS 'nombre producto', p.precio, f.nombre AS 'nombre fabricante'FROM producto p JOIN fabricante f ON p. codigo_fabricante = f.codigo;
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY f.nombre ASC;
SELECT p.codigo AS codigo_producto, p.nombre AS nombre_producto, p.codigo_fabricante, f.nombre AS nombre_fabrica FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo;
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo 
WHERE p.precio = (SELECT MIN(precio) FROM producto);
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo 
WHERE p.precio = (SELECT MAX(precio) FROM producto);
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre = 'Lenovo';
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre = 'Crucial' AND p.precio > 200;
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre = 'Asus' OR f.nombre = 'Hewlett-Packard' OR f.nombre = 'Seagate';
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre IN ('Asus', 'Hewlett-Packard', 'Seagate');
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre LIKE '%e';
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre LIKE '%w%';
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE p.precio >= 180 ORDER BY p.precio DESC, p.nombre ASC;
SELECT f.codigo AS codigo_fabricante, f.nombre AS nombre_fabricante FROM fabricante f JOIN producto p ON f.codigo = p.codigo_fabricante
GROUP BY f.codigo, f.nombre;
SELECT f.nombre AS nomre_fabricant, p.nombre AS nombre_producto FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante;
SELECT f.nombre AS nombre_fabricante FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante WHERE p.codigo IS NULL;
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo AND f.nombre = 'Lenovo';
SELECT * FROM producto WHERE precio = (SELECT MAX(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo'));
SELECT nombre AS nombre_producto FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo') ORDER BY precio DESC LIMIT 1;
SELECT nombre AS nombre_producto FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Hewlett-Packard') ORDER BY precio ASC LIMIT 1;
SELECT * FROM producto WHERE precio >= (SELECT MAX(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo'));
SELECT * FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Asus') AND precio > (SELECT AVG(precio) 
FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Asus'));
































