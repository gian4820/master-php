/*RENOMBRAR UNA TABLA*/
ALTER TABLE usuarios RENAME TO usuarios_rename;

/*CAMBIAR EL NOMBRE DE UNA COLUMA, SE UTILIZA ALTER PORQUE TIENE DATOS DENTRO!*/
    ALTER TABLE usuarios_rename  CHANGE apellido apellidos VARCHAR(100) null;

/*CAMBIAR PROPIEDAEDS DE COLUMNA SIN CAMBIAR EL NOMBRE*/
    ALTER TABLE usuarios_rename MODIFY apellidos char(40) not null;

/*AÑADIR COLUMNA*/
    ALTER TABLE usuarios_rename ADD website VARCHAR(100);

/*AÑADIR RESTRICCION A COLUMNA*/
ALTER TABLE usuarios_rename ADD CONSTRAINT uq_email UNIQUE(email);

/*BORRAR UNA COLUMNA*/
ALTER TABLE usuarios_rename DROP website;