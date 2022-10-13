# Entidades y Atributos

Lo primero que tenemos que hacer al diseñar una base de datos es hacer un listado de las entidades y sus atributos, que se verán involucrados en nuestra base de datos.

## Base de Datos:

### Sistema de Ventas en línea

1. Identifica las entidades del sistema.
1. Identifica los atributos de las entidades.

## Entidades

### Clientes

- cliente_id (**PK**)
- nombre
- apellidos
- telefono
- email
- direccion
- cp
- ciudad
- pais

### Productos

- producto_id (**PK**)
- nombre
- descripcion
- foto
- precio
- cantidad

### Ventas

- venta_id (**PK**)
- cliente_id (**FK**)
- producto_id (**FK**)
- fecha

### Artículos X Venta

- articulo_id (**PK**)
- venta_id (**FK**)
- producto_id (**FK**)
- cantidad
