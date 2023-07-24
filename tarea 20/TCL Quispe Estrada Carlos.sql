USE primera_entrega;
START TRANSACTION;
DELETE FROM especialidades 
WHERE id = 13;
-- ROLLBACK;
-- COMMIT;
-- INSERT INTO especialidades VALUES (NULL,"borrar","para borrar")

START TRANSACTION;
INSERT INTO provedor VALUES(NULL,"empresa1","empesa N1",current_date());
INSERT INTO provedor VALUES(NULL,"empresa2","empesa N2",current_date());
INSERT INTO provedor VALUES(NULL,"empresa3","empesa N3",current_date());
INSERT INTO provedor VALUES(NULL,"empresa4","empesa N4",current_date());
SAVEPOINT primer_savepoint;
INSERT INTO provedor VALUES(NULL,"empresa5","empesa N5",current_date());
INSERT INTO provedor VALUES(NULL,"empresa6","empesa N6",current_date());
INSERT INTO provedor VALUES(NULL,"empresa7","empesa N7",current_date());
INSERT INTO provedor VALUES(NULL,"empresa8","empesa N8",current_date());
SAVEPOINT segundo_savepoint;
-- Vueldo a mi primer SAVEPOINT lo que hara que todo apartir de el se pierda
ROLLBACK TO primer_savepoint;

-- COMMIT;





