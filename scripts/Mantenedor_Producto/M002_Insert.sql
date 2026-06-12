-- ====================================================================
-- SCRIPT: M002_Insert
-- OBJETIVO: Carga de datos iniciales para tablas mantenedoras de producto
-- ====================================================================

-- 1. INSERTS: TABLA MANTENEDORA RAMOS
INSERT INTO tab_ramos (ramo_id, descripcion, descripcion_corta, fecha_registro, estado_registro, codigo_usuario) 
VALUES (1, 'Seguros de Salud o Enfermedad', 'SALUD', CURRENT_DATE, 'ACTIVO', 'MCASTANEDA');

INSERT INTO tab_ramos (ramo_id, descripcion, descripcion_corta, fecha_registro, estado_registro, codigo_usuario) 
VALUES (2, 'Seguros de Vida Colectivo e Individual', 'VIDA', CURRENT_DATE, 'ACTIVO', 'MCASTANEDA');


-- 2. INSERTS: TABLA MANTENEDORA PRODUCTOS
INSERT INTO tab_productos (producto_id, ramo_id, nproducto, fecha_creacion, fecha_anulacion, estado_registro, codigo_usuario) 
VALUES (101, 1, 'Salud Integral Clínicas Oro', CURRENT_DATE, NULL, 'ACTIVO', 'MCASTANEDA');

INSERT INTO tab_productos (producto_id, ramo_id, nproducto, fecha_creacion, fecha_anulacion, estado_registro, codigo_usuario) 
VALUES (201, 2, 'Vida Riesgo Temporal Familiar', CURRENT_DATE, NULL, 'ACTIVO', 'MCASTANEDA');


-- 3. INSERTS: TABLA MANTENEDORA MÓDULOS (tab_modul)
INSERT INTO tab_modul (modulo_id, ramo_id, producto_id, nombre_modulo, descripcion_corta, fecha_creacion, fecha_anulacion, fecha_registro, estado_registro, codigo_usuario) 
VALUES (50, 1, 101, 'Módulo Gastos Hospitalarios y Cirugía', 'HOSP', CURRENT_DATE, NULL, CURRENT_DATE, 'ACTIVO', 'MCASTANEDA');

INSERT INTO tab_modul (modulo_id, ramo_id, producto_id, nombre_modulo, descripcion_corta, fecha_creacion, fecha_anulacion, fecha_registro, estado_registro, codigo_usuario) 
VALUES (51, 1, 101, 'Módulo Maternidad y Neonatal', 'MATER', CURRENT_DATE, NULL, CURRENT_DATE, 'ACTIVO', 'MCASTANEDA');

INSERT INTO tab_modul (modulo_id, ramo_id, producto_id, nombre_modulo, descripcion_corta, fecha_creacion, fecha_anulacion, fecha_registro, estado_registro, codigo_usuario) 
VALUES (52, 1, 101, 'Módulo Consultas Externas y Farmacia', 'AMBUL', CURRENT_DATE, NULL, CURRENT_DATE, 'ACTIVO', 'MCASTANEDA');
