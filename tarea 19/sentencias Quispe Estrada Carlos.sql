-- Creo el usuario user1 con su respectiva contraseña
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'contraseña 1'; 
-- le doy el permiso de poder Ver todas las tablas
GRANT SELECT ON *.* TO 'user1'@'localhost';




-- Creo el usuario user2 con su respectiva contraseña
CREATE USER 'user2'@'localhost' IDENTIFIED BY 'contraseña2';
-- le doy permiso de ver, actualizar e insertar nuevos datos en todas las tablas
GRANT SELECT, UPDATE, INSERT ON *.* TO 'user2'@'localhost';


-- le cambio la contraseña a user1 por que tenia un espacio
ALTER USER 'user1'@'localhost' IDENTIFIED BY 'contraseña1';