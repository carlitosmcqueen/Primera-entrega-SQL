USE primera_entrega;

DELIMITER //
CREATE PROCEDURE sp_venta_temporal_ticket_mercederia (IN in_id_trabajador INT, IN in_id_mercaderia INT,IN in_cantidad INT)
BEGIN
IF in_id_trabajador <= 0 OR in_id_mercaderia <=0 OR in_cantidad <= 0 THEN
	SIGNAL SQLSTATE "42000"
	SET MESSAGE_TEXT = "todos los campos son requeridos";
ELSE
INSERT INTO ticket_venta_temporal (id_trabajador, id_mercaderia,cantidad)
VALUES(in_id_trabajador,in_id_mercaderia,in_cantidad);
END IF;

END//

CREATE PROCEDURE sp_venta_temporal_ticket_tratamiento(IN in_id_trabajador INT, IN in_id_tratamiento INT)
BEGIN
IF in_id_trabajador <= 0 OR in_id_tratamiento <= 0 THEN
	SIGNAL SQLSTATE "42000"
	SET MESSAGE_TEXT = "todos los campos son requeridos";
ELSE
INSERT INTO ticket_venta_temporal (id_trabajador, id_tratamiento)
VALUES(in_id_trabajador,in_id_tratamiento);
END IF;

END//

DELIMITER ;



DELIMITER //

CREATE PROCEDURE sp_venta_ticket (IN in_id_cliente INT, IN in_id_trabajador INT)
BEGIN
DECLARE id_factura INT;
DECLARE subtotal, iva, total DECIMAL (9,2);

DECLARE precio_total_variable DECIMAL(10,2);
DECLARE precio_total_variable2 DECIMAL(10,2);


IF in_id_trabajador <= 0 OR in_id_cliente <=0 THEN
	SIGNAL SQLSTATE "42000"
	SET MESSAGE_TEXT = "todos los campos son requeridos";
ELSE
	INSERT INTO ticket
    VALUES (NULL,in_id_cliente,NULL,NULL,NULL,CURRENT_TIMESTAMP(),in_id_trabajador);

SET @id_factura = LAST_INSERT_ID();

INSERT INTO ticket_mercaderia (id_ticket,id_mercaderia,precio_unidad,cantidad,precio_total,iva,id_trabajador,subtotal)
SELECT @id_factura,
		vt.id_mercaderia,
        m.precio,
        vt.cantidad,
        precio_total(vt.cantidad * m.precio),
        iva(vt.cantidad * m.precio),
        in_id_trabajador,
        vt.cantidad * m.precio
        
FROM ticket_venta_temporal AS vt
JOIN mercaderia AS m ON vt.id_mercaderia = m.id
WHERE vt.id_trabajador = in_id_trabajador;

-- esta bien que aca se haga el control de stock? --





INSERT INTO ticket_tratamiento (id_ticket,id_tratamiento,precio_unidad,id_trabajador)
SELECT @id_factura,
		vt.id_tratamiento,
        t.costo,
        in_id_trabajador
        
FROM ticket_venta_temporal AS vt
JOIN tratamiento AS t ON vt.id_tratamiento = t.id
WHERE vt.id_trabajador = in_id_trabajador;

DELETE FROM ticket_venta_temporal WHERE id_trabajador = in_id_trabajador;

CALL suma_totales_tablas('ticket_mercaderia', "subtotal", @id_factura);
SET precio_total_variable = @precio_total;
IF (precio_total_variable IS NULL) THEN 
SET precio_total_variable = 0;
END IF;

CALL suma_totales_tablas("ticket_tratamiento","precio_unidad",@id_factura);
SET precio_total_variable2 = @precio_total;
IF (precio_total_variable2 IS NULL) THEN 
SET precio_total_variable2 = 0;
END IF;

SELECT (precio_total_variable + precio_total_variable2) INTO @subtotal;
UPDATE ticket SET subtotal = @subtotal, iva = iva(@subtotal), total = precio_total(@subtotal) WHERE id = @id_factura;

END IF;

END//


DELIMITER ;

DELIMITER //
CREATE PROCEDURE st_paga_trabajadores (IN in_id_trabajador INT,  IN in_horas_extras INT)
BEGIN
DECLARE var_sueldo DECIMAL(9,2);
SELECT sueldo FROM trabajadores WHERE id = in_id_trabajador INTO @var_sueldo;

IF in_id_trabajadores <= 0 OR in_horas_extras < 0 THEN
	SIGNAL SQLSTATE "42000"
	SET MESSAGE_TEXT = "todos los campos son requeridos";
ELSE
INSERT INTO trabajadores_pago
VALUES(NULL,in_id_trabajador,@var_sueldo,in_horas_extras,horas_extra_pago(in_id_trabajador,in_horas_extras),current_date());
END IF;


END//








