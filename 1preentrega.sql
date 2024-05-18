-- Creacion de la base de datos
CREATE DATABASE empresa_desarrollo_software;
USE empresa_desarrollo_software;

-- Tabla clientes
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);


-- Tabla rol
CREATE TABLE rol (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

-- Tabla seniority
CREATE TABLE seniority (
    id_seniority INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

-- Tabla gerentes
CREATE TABLE gerentes (
    id_gerente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL
);

-- Tabla proyectos
CREATE TABLE proyectos (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_gerente INT,
    descripcion VARCHAR(255) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    fecha_inicio DATE,
    fecha_fin DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_gerente) REFERENCES gerentes(id_gerente)
);

-- Tabla recursos
CREATE TABLE recursos (
    id_recurso INT AUTO_INCREMENT PRIMARY KEY,
    id_seniority INT,
    id_rol INT,
    id_gerente INT,
    id_proyecto INT,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_seniority) REFERENCES seniority(id_seniority),
    FOREIGN KEY (id_rol) REFERENCES rol(id_rol),
    FOREIGN KEY (id_gerente) REFERENCES gerentes(id_gerente),
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto)
);
