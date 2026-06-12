-- ====================================================================
-- SCRIPT: M001_Create
-- OBJETIVO: Creación de tablas mantenedoras del catálogo de productos
-- ====================================================================

-- 1. TABLA MANTENEDORA: RAMOS
CREATE TABLE tab_ramos (
    ramo_id INT PRIMARY KEY,
    descripcion VARCHAR(100) NOT NULL,
    descripcion_corta VARCHAR(20),
    fecha_registro DATE DEFAULT CURRENT_DATE,
    estado_registro VARCHAR(15) DEFAULT 'ACTIVO' CHECK (estado_registro IN ('ACTIVO', 'RESTRINGIDO', 'NO_ACTIVO')),
    codigo_usuario VARCHAR(30) NOT NULL -- Auditoría: Quién creó/modificó
);

-- 2. TABLA MANTENEDORA: PRODUCTOS
CREATE TABLE tab_productos (
    producto_id INT PRIMARY KEY,
    ramo_id INT NOT NULL,
    nproducto VARCHAR(100) NOT NULL,
    fecha_creacion DATE DEFAULT CURRENT_DATE,
    fecha_anulacion DATE,
    estado_registro VARCHAR(15) DEFAULT 'ACTIVO' CHECK (estado_registro IN ('ACTIVO', 'RESTRINGIDO', 'NO_ACTIVO')),
    codigo_usuario VARCHAR(30) NOT NULL, -- Auditoría: Quién creó/modificó
    FOREIGN KEY (ramo_id) REFERENCES tab_ramos(ramo_id)
);

-- 3. TABLA MANTENEDORA: MÓDULOS DEL PRODUCTO
CREATE TABLE tab_modul (
    modulo_id INT PRIMARY KEY,
    ramo_id INT NOT NULL, 
    producto_id INT NOT NULL,
    nombre_modulo VARCHAR(100) NOT NULL,
    descripcion_corta VARCHAR(20),
    fecha_creacion DATE DEFAULT CURRENT_DATE,
    fecha_anulacion DATE,
    fecha_registro DATE DEFAULT CURRENT_DATE,
    estado_registro VARCHAR(15) DEFAULT 'ACTIVO' CHECK (estado_registro IN ('ACTIVO', 'RESTRINGIDO', 'NO_ACTIVO')),
    codigo_usuario VARCHAR(30) NOT NULL, -- Auditoría: Quién creó/modificó
    FOREIGN KEY (ramo_id) REFERENCES tab_ramos(ramo_id),
    FOREIGN KEY (producto_id) REFERENCES tab_productos(producto_id)
);
