/* Comentario en SQL */

CREATE DATABASE IF NOT EXISTS tienda;

USE tienda;

CREATE TABLE paises(
  pais_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  dominio CHAR(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE productos(
  producto_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  descripcion TEXT,
  foto VARCHAR(255),
  precio FLOAT NOT NULL,
  cantidad INTEGER UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE clientes(
  cliente_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellidos VARCHAR(50) NOT NULL,
  telefono VARCHAR(10) UNIQUE NOT NULL,
  email VARCHAR(50) UNIQUE NOT NULL,
  direccion VARCHAR(100),
  cp CHAR(5) NOT NULL,
  ciudad VARCHAR(50),
  pais INTEGER UNSIGNED,
  FOREIGN KEY (pais)
    REFERENCES paises(pais_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE ventas(
  venta_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cliente_id INTEGER UNSIGNED,
  fecha DATETIME NOT NULL,
  monto FLOAT NOT NULL,
  FOREIGN KEY(cliente_id)
    REFERENCES clientes(cliente_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE articulos_x_ventas(
  articulo_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  venta_id INTEGER UNSIGNED,
  producto_id INTEGER UNSIGNED,
  cantidad INTEGER UNSIGNED,
  FOREIGN KEY(venta_id)
    REFERENCES ventas(venta_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY(producto_id)
    REFERENCES productos(producto_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;