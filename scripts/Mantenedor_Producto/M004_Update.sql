-- ====================================================================
-- SCRIPT: M004_Update
-- OBJETIVO: Actualización controlada de datos (DML) - Casos de Uso QA
-- ====================================================================

-- CASO 1: El negocio decide suspender temporalmente el ramo de Vida.
-- Cambia el estado de un maestro basándose en una condición de negocio.
UPDATE tab_ramos 
SET estado_registro = 'RESTRINGIDO',
    codigo_usuario = 'MCASTANEDA'
WHERE descripcion_corta = 'VIDA';

-- CASO 2: Corrección funcional por error del usuario en la carga inicial.
-- Se actualiza el nombre comercial del producto de salud.
UPDATE tab_productos 
SET nproducto = 'Salud Colectiva Clínicas Oro Premium'
WHERE producto_id = 101;

-- CASO 3: Control de Vigencia - Anulación/Baja lógica de un módulo.
-- Modifica la fecha de vigencia del mercado y usa la columna nueva agregada en el ALTER.
UPDATE tab_modul 
SET fecha_anulacion = CURRENT_DATE,
    estado_registro = 'NO_ACTIVO',
    observaciones_qa = 'Módulo descontinuado por reestructuración de pólizas 2026'
WHERE modulo_id = 52;
