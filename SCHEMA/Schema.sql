create database if not exists ToyRC;
use ToyRC;
CREATE TABLE ACTA (
    IDACTA int NOT NULL AUTO_INCREMENT COMMENT 'Aqui se ingresara el Codigo de Cada Apta de nacimiento ',
    FECNACACTA date NOT NULL COMMENT 'Aquí se ingresara la fecha de nacimiento de los usuarios ',
    IDPER int NOT NULL COMMENT 'Codigo del usuario (trabajador, ciudadano) ',
    TIPACTA varchar(50) NOT NULL COMMENT 'Aqui se le agregara el tipo de acta que es por ejemplo: Nacimiento, Defunción o Matrimonio ',
    CONSTRAINT PARTIDA PRIMARY KEY (IDACTA)
) COMMENT 'En este tabla encontraremos el registro de las personas.sea de nacimiento, defunción y matrimonio ';
-- Table: AREA
CREATE TABLE AREA (
    IDAREA int NOT NULL AUTO_INCREMENT COMMENT 'Aquí se ingresara el código del Área',
    NOMAREA varchar(50) NOT NULL COMMENT 'Aqui se ingresara el nombre de cada Area ',
    NOMSUBAREA varchar(50) NOT NULL COMMENT 'Aqui se ingresara el nombre de una Sub Area en caso tenga ',
    CONSTRAINT ÁREA PRIMARY KEY (IDAREA)
) COMMENT 'En esta tabla encontraremos el lugar de bienes o servicio que brindaran a la persona.';

-- Table: DOCUMENTO
CREATE TABLE if not exists DOCUMENTO (
    IDDOC int NOT NULL AUTO_INCREMENT COMMENT 'Codigo de documento 
ejemplo: ###-###',
    IDTUPA int NOT NULL COMMENT 'Codigo de tupac ',
    TIPDOC varchar(200) NOT NULL COMMENT 'aquí se pondrá el tipo de documento que se tramitara o se solicitara ',
    IDPER int NOT NULL COMMENT 'Codigo del usuario (trabajador, ciudadano) ',
    CONSTRAINT DOCUMENTO_pk PRIMARY KEY (IDDOC)
) COMMENT 'En esta tabla encontraremos el documento junto con el tupa y caracteristicas del documento ';

-- Table: PERSONA
CREATE TABLE if not exists PERSONA (
    IDPER int NOT NULL AUTO_INCREMENT COMMENT 'Codigo del usuario (trabajador, ciudadano) ',
    NOMPER varchar(50) NOT NULL COMMENT 'Aqui se ingresara el nombre de los usuarios ',
    APEPER varchar(50) NOT NULL COMMENT 'Aqui se ingresara el apellido de los usuarios ',
    TELPER char(9) NOT NULL COMMENT 'Aqui se ingresara el telefono de los usuarios ',
    TIPPER varchar(25) NOT NULL COMMENT 'Aquí se ingresara el tipo de usuario 
ejemplo: (si es trabajador o un ciudadano )',
    DNIPER char(8) NOT NULL COMMENT 'Aqui se le agregara el DNI del usuario ',
    CONSTRAINT PERSONA_pk PRIMARY KEY (IDPER)
) COMMENT 'En esta tabla encontraremos todo el dato de la persona que realizara el trámite.';

-- Table: PROCESO
CREATE TABLE if not exists PROCESO (
    IDPRO int NOT NULL AUTO_INCREMENT COMMENT 'Aqui se ingresara el codigo del proceso que se realizara ',
    IDAREA int NOT NULL COMMENT 'Aquí se ingresara el código del Área',
    IDDOC int NOT NULL COMMENT 'Contiene el código del documento',
    CONSTRAINT PROCESO_pk PRIMARY KEY (IDPRO)
) COMMENT 'En esta tabla se encontrara el control de como se esta llevando el proceso del documento ';

-- Table: TUPA
CREATE TABLE if not exists TUPA (
    IDTUPA int NOT NULL AUTO_INCREMENT COMMENT 'Aqui se ingresara el Codigo de Tupa',
    TIPTUPA varchar(300) NOT NULL COMMENT 'Aqui se ingresara el tipo de tupa junto a los requisitos que posee ',
    PRETUPA decimal(6,2) NOT NULL COMMENT 'Aqui se ingresara el precio que tiene cada tupa',
    PLATUPA date NOT NULL COMMENT 'Aquí se ingresara el plazo que tendra cada Tupa',
    CONSTRAINT TUPA_pk PRIMARY KEY (IDTUPA)
) COMMENT 'En esta tabla encontraremos un conjunto de requisitos que necesita cumplir un documento 
(Texto Único de Prendimiento Administrativo)';

-- foreign keys
-- Reference: DOCUMENTO_PERSONA (table: DOCUMENTO)
ALTER TABLE DOCUMENTO ADD CONSTRAINT DOCUMENTO_PERSONA FOREIGN KEY DOCUMENTO_PERSONA (IDPER)
    REFERENCES PERSONA (IDPER);

-- Reference: DOCUMENTO_TUPA (table: DOCUMENTO)
ALTER TABLE DOCUMENTO ADD CONSTRAINT DOCUMENTO_TUPA FOREIGN KEY DOCUMENTO_TUPA (IDTUPA)
    REFERENCES TUPA (IDTUPA);

-- Reference: PROCESO_DOCUMENTO (table: PROCESO)
ALTER TABLE PROCESO ADD CONSTRAINT PROCESO_DOCUMENTO FOREIGN KEY PROCESO_DOCUMENTO (IDDOC)
    REFERENCES DOCUMENTO (IDDOC);

-- Reference: Proceso_Area (table: PROCESO)
ALTER TABLE PROCESO ADD CONSTRAINT Proceso_Area FOREIGN KEY Proceso_Area (IDAREA)
    REFERENCES AREA (IDAREA);

-- Reference: apta_nacimiento_usuarios (table: ACTA)
ALTER TABLE ACTA ADD CONSTRAINT apta_nacimiento_usuarios FOREIGN KEY apta_nacimiento_usuarios (IDPER)
    REFERENCES PERSONA (IDPER);

-- End of file.
