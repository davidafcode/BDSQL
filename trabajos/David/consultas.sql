use `ventas`;

# Consultas básicas
SELECT * 
FROM clientes;

SELECT * 
FROM auditoria;

SELECT *
FROM comercial;

SELECT nombre_c, ciudad
FROM clientes;

SELECT nombre_co, apellido1, comision
FROM comercial;
-- ---------------------------------------------------------------------------------------------

# Consultas con condiciones
SELECT apellido1 
FROM clientes 
WHERE apellido1 LIKE 'R%';

SELECT nombre_co, apellido1, comision
FROM comercial
WHERE comision > 0.20;

SELECT *
FROM clientes
WHERE ciudad = 'Sevilla';

SELECT nombre_c, apellido1, ciudad, email
FROM clientes
WHERE ciudad = 'Tenerife';

SELECT nombre_co, apellido1, comision
FROM comercial
WHERE comision BETWEEN 0.10 AND 0.30;
-- ---------------------------------------------------------------------------------------------

# Consultas JOIN (Solo tienen sentido entre auditoría y comercial, ya que auditoría tiene el id_comercial aunque no se especifique la clave foránea)
SELECT co.nombre_co, a.fecha_modificacion
FROM comercial co
JOIN auditoria a
ON co.id_comercial = a.id_comercial;

SELECT co.nombre_co, a.comisionAnterior, a.comisionActual
FROM comercial co
JOIN auditoria a
ON co.id_comercial = a.id_comercial;

SELECT co.nombre_co, co.tlf_co, a.usuario
FROM comercial co
JOIN auditoria a
ON co.id_comercial = a.id_comercial;
-- ---------------------------------------------------------------------------------------------

#Consultas más complejas
SELECT nombre_co, apellido1, comision
FROM comercial
WHERE comision > (
SELECT AVG(comision)
FROM comercial
);

SELECT nombre_co, apellido1, comision
FROM comercial
WHERE comision > (
SELECT AVG(comision)
FROM comercial
)
ORDER BY comision DESC;