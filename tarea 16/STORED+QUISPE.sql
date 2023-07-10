USE primera_entrega;

DELIMITER //
CREATE PROCEDURE acomodar_animales(IN columna CHAR(20), IN forma CHAR(20))
BEGIN
IF columna <> " " THEN
	IF forma = "ASC" OR forma = "DESC" THEN
		SET @ordenar = CONCAT("ORDER BY"," ", columna," ", forma);
	ELSE
		SET @ordenar = " ";
	END IF;
ELSE 
SET @ordenar = " "; 
END IF;

SET @consulta = CONCAT("SELECT * FROM animal", " ", @ordenar);
PREPARE listo FROM @consulta;
EXECUTE listo;
DEALLOCATE PREPARE listo;

END//


CREATE PROCEDURE agregar_animal (IN nombre CHAR(20), IN tipo CHAR(20), IN raza CHAR(20),IN estado CHAR(20), IN descripcion CHAR(100), IN edad_meses INT, IN malestar CHAR(200))
BEGIN

IF nombre = ''  THEN
SET nombre = NULL;
END IF;
IF raza = ''  THEN
SET raza = NULL;
END IF;
IF malestar = '' THEN
SET malestar = NULL;
END IF;

INSERT INTO animal(nombre,tipo,raza,estado,descripcion,edad_meses,malestar)
VALUES(nombre , tipo , raza , estado , descripcion , edad_meses , malestar);
SELECT * FROM animal;
END//

CREATE PROCEDURE quitar_animal (IN id_animal CHAR(20))
BEGIN
DELETE FROM animal WHERE id = id_animal; 
END//
DELIMITER ;