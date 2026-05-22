# Informe de Base de Datos

## 1. Descripción general

La base de datos `ventas` sirve para gestionar clientes, comerciales y registros de auditoría sobre cambios realizados en comisiones.

---

## 2. Estructura

### Tablas principales

- `clientes`
- `comercial`
- `auditoria`

### Relaciones

- La tabla `auditoria` utiliza el campo `id_comercial` para registrar cambios realizados sobre comerciales.
- Sin embargo, la DB no implementa claves foráneas explícitas, por lo que MySQL Workbench no es capaz de generar un diagrama con relaciones
mediante ingeniería inversa.

---

## 3. Análisis

### Aspectos positivos

- Uso de claves primarias.
- Tabla de auditoría para control de cambios.
- Restricción UNIQUE en emails.

### Aspectos mejorables

- No existen claves foráneas explícitas.
- Algunos datos son inconsistentes.
- Falta validación en ciertos campos.

---

## 4. Problemas detectados

- Falta de cláve foránea explícita entre `auditoria` y `comercial`.
- Importes negativos en `importe`.
- Teléfonos almacenados como INT, lo cuál no se suele recomendar.

---

## 5. Propuestas de mejora

- Añadir claves foráneas explícitas.
- Revisar importes.
- Cambiar teléfonos a VARCHAR.
- Crear otras tablas, como `ventas` y `productos`.

---

## 6. Conclusión personal

La base de datos es sencilla y funcional, aunque necesita mejoras en validaciones y relaciones entre tablas. Este trabajo permitió practicar MySQL, consultas SQL y análisis de bases de datos.
