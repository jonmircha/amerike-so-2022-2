# Bases de Datos:

## Diseño de BDs

1. Identificar las entidades del sistema.
1. Identificar los atributos de las entidades.
1. Identificar llaves primarias y foráneas.
1. Asignar una nomenclatura adeacuada a las entidades y sus atributos.
1. Identificar las entidades pivote del sistema.
1. Identificar los catálogos del sistema.

### Sistema de ventas en línea

## Entidades y Atributos

Lo primero que tenemos que hacer al diseñar una base de datos es hacer un listado de las entidades y sus atributos, que se verán involucrados en el modelo de nuestra base de datos.

### clientes

- cliente_id (**PK**)
- nombre
- apellidos
- telefono
- email
- direccion
- cp
- ciudad
- pais_id (**FK**)

### productos

- producto_id (**PK**)
- nombre
- descripcion
- foto
- precio
- cantidad

### ventas

- venta_id (**PK**)
- cliente_id (**FK**)
- fecha
- monto

### articulos_x_venta

- articulo_id (**PK**)
- venta_id (**FK**)
- producto_id (**FK**)
- cantidad

### paises

- pais_id (**PK**)
- nombre
- dominio

## Pivotes

Las entidades pivotes son las que relacionan la información de 2 o más entidades. Nos ayudan a mantener consistencia e integridad en nuestro sistema y evitan la duplicidad de datos.

## Catálogos

Los catálogos son entidades que sus registros son una lista o relación ordenada con algún criterio de datos y por tal motivo su información debe estar precargada en la base de datos, antes de comenzar a introducir información en ella.

### Códigos Postales

- [Códigos Postales México](https://datos.gob.mx/busca/dataset/catalogo-nacional-de-codigos-postales)
- [CPs México en formato TXT](https://www.correosdemexico.gob.mx/datosabiertos/cp/cpdescarga.txt)
- [Consulta de CPs México](https://www.correosdemexico.gob.mx/SSLServicios/ConsultaCP/Descarga.aspx)

### Países

- [Información Paises](https://gist.github.com/brenes/1095110)
