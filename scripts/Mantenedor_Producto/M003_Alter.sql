-- ====================================================================
-- SCRIPT: M003_Alter
-- OBJETIVO: Modificación de estructuras (DDL) en tablas mantenedoras
-- ====================================================================

ALTER TABLE tab_ramos ALTER COLUMN descripcion_corta TYPE VARCHAR(50);
ALTER TABLE tab_productos ADD COLUMN usuario_anulacion VARCHAR(30);
ALTER TABLE tab_modul ADD COLUMN observaciones_qa VARCHAR(250);
