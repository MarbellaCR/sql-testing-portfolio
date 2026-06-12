-- ====================================================================
-- SCRIPT: M005_Delete
-- OBJETIVO: Eliminación física y controlada de datos (DML)
-- ====================================================================

-- Eliminar un módulo específico que no superó los criterios de certificación.
DELETE FROM tab_modul 
WHERE modulo_id = 51;

-- Limpieza secuencial respetando la Clave Foránea (FK)
DELETE FROM tab_modul WHERE producto_id = 201;
DELETE FROM tab_productos WHERE producto_id = 201;
