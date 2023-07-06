USE primera_entrega;

DELIMITER $$

CREATE FUNCTION horas_extras_pago (id_trabajador INT,horas_extras INT) RETURNS DECIMAL(9,2)
DETERMINISTIC
BEGIN
DECLARE pago_extra DECIMAL(9,2);
DECLARE sueldo_x_hora DECIMAL(9,2);
SET sueldo_x_hora = ((SELECT sueldo FROM trabajadores WHERE id = id_trabajador)/30)/8;
SET pago_extra = ( (sueldo_x_hora * horas_extras)*2);
RETURN pago_extra;
END$$


CREATE FUNCTION edad_anos(meses INT) RETURNS DECIMAL(9,2)
DETERMINISTIC
BEGIN
DECLARE anos INT;
DECLARE anos_totales DECIMAL(9,2);
SET anos= 12;
SET anos_totales = 0;
SELECT meses / anos INTO anos_totales;
RETURN anos_totales;
END$$


CREATE FUNCTION iva (monto DECIMAL) RETURNS DECIMAL(9,2)
DETERMINISTIC
BEGIN
DECLARE total,iva DECIMAL(9,2);
SET total = 0.00;
SET iva= 0.21;
SELECT monto * iva INTO total;
RETURN total;
END$$


CREATE FUNCTION total_venta_cliente(id_cliente_total INT) RETURNS DECIMAL(9,2)
DETERMINISTIC
BEGIN
DECLARE resultado DECIMAL(9,2);
SET resultado = (SELECT SUM(total) FROM ventas WHERE id_cliente = id_cliente_total);
RETURN resultado;
END$$

DELIMITER ;

