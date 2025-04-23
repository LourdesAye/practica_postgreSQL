-- Si querés hacer rollback en vez de commit
BEGIN;
CALL insertar_cliente_tests();
ROLLBACK;