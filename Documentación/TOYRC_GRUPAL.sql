
CREATE DATABASE tramite
	DEFAULT CHARACTER SET utf8;
-- CREATE DATABASE tramite;
USE tramite;

-- Table: PERSONA
CREATE TABLE PERSONA(
    IDPER int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de cada persona',
    NOMPER varchar(50) NULL COMMENT 'Nombre de la persona',
    APEPER varchar(50) NULL COMMENT 'Apellido de la persona',
    TELPER char(11) NULL COMMENT 'Teléfono de la persona',
    TIPPER varchar(25) NULL COMMENT 'Tipo de persona',
    DNIPER varchar(50) NULL COMMENT 'DNI de la persona',
    CONSTRAINT PERSONA_pk PRIMARY KEY (IDPER)
)   COMMENT 'Contiene los datos de la persona';

CREATE TABLE ACTA(
	IDACT int NOT NULL AUTO_INCREMENT COMMENT 'Contiene el codigo por cada acta',
    FECNACACT date NOT NULL COMMENT 'Fecha de nacimiento',
    IDPER int NOT NULL COMMENT 'Identificador de cada persona',
    TIPACT varchar(20) NULL COMMENT 'Tipo de acta',
    CONSTRAINT ACTA_apk PRIMARY KEY (IDACT)
    )COMMENT 'Contiene los datos del ACTA';

CREATE TABLE TUPA(
    IDTUPA int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de cada TUPA',
    TIPTUPA varchar(50) NULL COMMENT 'Tipo de TUPA',
	PRETUPA varchar(30) NULL COMMENT 'Precio de TUPA',
    PLATUPA varchar(50) NOT NULL COMMENT 'Plazo de TUPA',
    CONSTRAINT TUPA_pk PRIMARY KEY (IDTUPA)
) COMMENT 'Contiene los datos del TUPA';

CREATE TABLE DOCUMENTO(
    IDDOC int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de cada documento',
    IDTUPA int NOT NULL COMMENT 'Identificador de cada TUPA',
    IDPER int NOT NULL COMMENT 'Identificador de cada persona',
    CONSTRAINT DOCUMENTO_pk PRIMARY KEY (IDDOC)
) COMMENT 'Contiene los datos del DOCUMENTO';

CREATE TABLE PROCESO(
	IDPRO int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de cada proceso',
    IDAREA int NOT NULL COMMENT 'Identificador de cada area',
    IDDOC int NOT NULL COMMENT 'Identificador de cada documento',
    CONSTRAINT PROCESO_pk PRIMARY KEY (IDPRO)
) COMMENT 'Contiene los datos del PROCESO';
CREATE TABLE ÁREA(
    IDAREA int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de cada area',
    NOMAREA varchar(30) NULL COMMENT 'Nombre del area',
    NOMSUBAREA varchar(30) NULL COMMENT 'Nombre del Subarea',
    CONSTRAINT ÁREA_pk PRIMARY KEY (IDAREA)
) COMMENT 'Contiene los datos del AREA';

ALTER TABLE ACTA ADD CONSTRAINT ACTA_PERSONA FOREIGN KEY ACTA_PERSONA (IDPER)
    REFERENCES PERSONA (IDPER);
    
ALTER TABLE DOCUMENTO ADD CONSTRAINT DOCUMENTO_PERSONA FOREIGN KEY DOCUMENTO_PERSONA (IDPER)
    REFERENCES PERSONA (IDPER);
    
ALTER TABLE DOCUMENTO ADD CONSTRAINT DOCMUENTO_TUPA FOREIGN KEY DOCMUENTO_TUPA (IDTUPA)
    REFERENCES TUPA (IDTUPA);

ALTER TABLE PROCESO ADD CONSTRAINT PROCESO_DOCUMENTO FOREIGN KEY PROCESO_DOCUMENTO (IDDOC)
    REFERENCES DOCUMENTO (IDDOC);

ALTER TABLE PROCESO ADD CONSTRAINT PROCESO_ÁREA FOREIGN KEY PROCESO_ÁREA (IDAREA)
    REFERENCES ÁREA (IDAREA);
    
    INSERT INTO PERSONA(NOMPER,APEPER,TELPER,TIPPER,DNIPER) 
    VALUES
    ('Jey','Fariñes Llegado','987-451-254','Adulto','85412456'),
    ('Jessibel','Sanchez Flores','921-777-994','Joven','84512472'),
    ('Kiara','Sanchez Fernandez','922-111-004','Adulto','87445123'),
    ('Juan','Farfán','966-555-253','Joven','86954125'),
    ('Nicole','Vilcas Montenegro','933-471-114','Adulto','87541236');
    
    INSERT INTO ACTA(FECNACACT,IDPER,TIPACT) 
    VALUES
    ("12-09-00",1,'nacimiento'),
    ("01-09-01",2,'nacimiento'),
    ("12-06-02",5,'nacimiento'),
    ("12-07-03",3,'nacimiento'),
    ("12-08-04",4,'nacimiento');
    
    INSERT INTO TUPA(TIPTUPA,PRETUPA,PLATUPA) 
    VALUES
    ('Búsqueda de expediente','Gratuito','7 días'),
	('Reinicio de Trámite','Gratuito','7 días');
    
    INSERT INTO ÁREA(NOMAREA,NOMSUBAREA) 
    VALUES
    ('Fiscalización','Registro Civil');

    INSERT INTO DOCUMENTO(IDTUPA,IDPER) 
    VALUES
    (1,5),
    (2,3),
    (1,2),
	(2,1),
    (1,4);
    
	INSERT INTO PROCESO(IDAREA,IDDOC) 
    VALUES
    (1,1),
	(1,2),   
	(1,3),
	(1,5),
	(1,4);
    
    SELECT * FROM PERSONA;
    SELECT * FROM ACTA;
    SELECT * FROM TUPA;
	SELECT * FROM ÁREA;   
	SELECT * FROM DOCUMENTO;
	SELECT * FROM PROCESO;   
    