-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-11-28 22:34:41.769

-- tables
-- Table: ACTA
create database if not exists ToyRC;
use ToyRC;
CREATE TABLE ACTA (
    IDACTA int NOT NULL AUTO_INCREMENT COMMENT 'Aqui se ingresara el Codigo de Cada Apta de nacimiento ',
    FECNACACTA date NOT NULL COMMENT 'Aquí se ingresara la fecha de nacimiento de los usuarios ',
    TIPACTA varchar(20) NOT NULL COMMENT 'Si es N es acta de nacimiento, si es M es acta de matrimonio, si es D es defuncion.',
    IDPER int NOT NULL COMMENT 'Codigo del usuario (trabajador, ciudadano) ',
    CONSTRAINT PARTIDA PRIMARY KEY (IDACTA)
) COMMENT 'En este tabla encontraremos el registro de las personas.sea de nacimiento, defunción y matrimonio ';

-- Table: AREA
CREATE TABLE AREA (
    IDAREA int NOT NULL AUTO_INCREMENT COMMENT 'Aquí se ingresara el código del Área',
    NOMAREA varchar(250) NOT NULL COMMENT 'Aqui se ingresara el nombre de cada Area ',
    NOMSUBAREA varchar(250) NOT NULL COMMENT 'Aqui se ingresara el nombre de una Sub Area en caso tenga ',
    CONSTRAINT ÁREA PRIMARY KEY (IDAREA)
) COMMENT 'En esta tabla encontraremos el lugar de bienes o servicio que brindaran a la persona.';

-- Table: DOCUMENTO
CREATE TABLE DOCUMENTO (
    IDDOC int NOT NULL AUTO_INCREMENT COMMENT 'Codigo de documento 
ejemplo: ###-###',
    TIPDOC varchar(250) NOT NULL COMMENT 'Si es E es externo, si es I es interno.',
    ASUDOC varchar(250) NOT NULL COMMENT 'Asunto del documento.',
    FECRECDOC date NOT NULL COMMENT 'Fecha de recepcion del documento.',
    FECDERDOC date NOT NULL COMMENT 'Fecha de derivación del documento.',
    FECENTDOC date NOT NULL COMMENT 'Fecha de entrega del documento.',
    IDPER int NOT NULL COMMENT 'Codigo del usuario (trabajador, ciudadano) ',
    IDTUPA int NOT NULL COMMENT 'Codigo de tupac ',
    CONSTRAINT DOCUMENTO_pk PRIMARY KEY (IDDOC)
) COMMENT 'En esta tabla encontraremos el documento junto con el tupa y caracteristicas del documento ';

-- Table: EMPRESA
CREATE TABLE EMPRESA (
    IDEMP int NOT NULL COMMENT 'Contiene el identificador de cada empresa.',
    NOMEMP varchar(100) NOT NULL COMMENT 'Contiene el nombre de la empresa.',
    IDPER int NOT NULL,
    CONSTRAINT EMPRESA_pk PRIMARY KEY (IDEMP)
) COMMENT 'Contiene a las empresas.';

-- Table: LOGIN
CREATE TABLE LOGIN (
    IDLOG int NOT NULL COMMENT 'Identificador de cada persona con login.',
    USULOG varchar(50) NULL COMMENT 'Contiene el nombre de los usuarios',
    PSWLOG varchar(32) NULL COMMENT 'Contraseña de usuario.',
    ESTLOG char(1) NOT NULL COMMENT 'Estado de la cuenta del usuario (A=activo)(I=inactivo)',
    IDPERS int NOT NULL,
    CONSTRAINT LOGIN_pk PRIMARY KEY (IDLOG)
) COMMENT 'Contiene la contraseña del personal.';

-- Table: PARTICIPANTE
CREATE TABLE PARTICIPANTE (
    IIDPAR int NOT NULL COMMENT 'Contiene el identificador del participante.',
    TIPPAR char(1) NOT NULL COMMENT 'C de celebrante, D de declarante, M de mamá, P de papá, E de esposa, T de titular.',
    IDPER int NOT NULL,
    IDACTA int NOT NULL,
    CONSTRAINT PARTICIPANTE_pk PRIMARY KEY (IIDPAR)
) COMMENT 'Contiene a los participantes';

-- Table: PERSONA
CREATE TABLE PERSONA (
    IDPER int NOT NULL AUTO_INCREMENT COMMENT 'Codigo del usuario (trabajador, ciudadano) ',
    NOMPER varchar(250) NOT NULL COMMENT 'Aqui se ingresara el nombre de los usuarios ',
    APEPER varchar(250) NOT NULL COMMENT 'Aqui se ingresara el apellido de los usuarios ',
    CEL char(20) NOT NULL COMMENT 'Aqui se ingresara el telefono de los usuarios ',
    DNIPER char(20) NOT NULL COMMENT 'Aqui se le agregara el DNI del usuario ',
    CONSTRAINT PERSONA_pk PRIMARY KEY (IDPER)
) COMMENT 'En esta tabla encontraremos todo el dato de la persona que realizara el trámite.';

-- Table: PERSONAL
CREATE TABLE PERSONAL (
    IDPERS int NOT NULL COMMENT 'Identificador de cada personal.',
    FECENTPERS date NOT NULL COMMENT 'Fecha de entrada del personal.',
    FECSALPERS date NOT NULL COMMENT 'Fecha de salida de personal.',
    IDAREA int NOT NULL,
    IDPER int NOT NULL,
    CONSTRAINT PERSONAL_pk PRIMARY KEY (IDPERS)
) COMMENT 'Personal que trabaja en la Municipalidad.';

-- Table: PROCESO
CREATE TABLE PROCESO (
    IDPRO int NOT NULL AUTO_INCREMENT COMMENT 'Aqui se ingresara el codigo del proceso que se realizara ',
    IDAREA int NOT NULL COMMENT 'Aquí se ingresara el código del Área',
    IDDOC int NOT NULL COMMENT 'Contiene el código del documento',
    CONSTRAINT PROCESO_pk PRIMARY KEY (IDPRO)
) COMMENT 'En esta tabla se encontrara el control de como se esta llevando el proceso del documento ';

-- Table: REQUERIMIENTO
CREATE TABLE REQUERIMIENTO (
    IDREQ int NOT NULL AUTO_INCREMENT COMMENT 'ID',
    NOMREQ varchar(1000) NULL COMMENT 'Nombre del requerimiento',
    IDTUPA int NOT NULL,
    CONSTRAINT REQUERIMIENTO_pk PRIMARY KEY (IDREQ)
) COMMENT 'Datos del TUPA';

-- Table: TUPA
CREATE TABLE TUPA (
    IDTUPA int NOT NULL AUTO_INCREMENT COMMENT 'Aqui se ingresara el Codigo de Tupa',
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

-- Reference: EMPRESA_PERSONA (table: EMPRESA)
ALTER TABLE EMPRESA ADD CONSTRAINT EMPRESA_PERSONA FOREIGN KEY EMPRESA_PERSONA (IDPER)
    REFERENCES PERSONA (IDPER);

-- Reference: LOGIN_PERSONAL (table: LOGIN)
ALTER TABLE LOGIN ADD CONSTRAINT LOGIN_PERSONAL FOREIGN KEY LOGIN_PERSONAL (IDPERS)
    REFERENCES PERSONAL (IDPERS);

-- Reference: PARTICIPANTE_ACTA (table: PARTICIPANTE)
ALTER TABLE PARTICIPANTE ADD CONSTRAINT PARTICIPANTE_ACTA FOREIGN KEY PARTICIPANTE_ACTA (IDACTA)
    REFERENCES ACTA (IDACTA);

-- Reference: PARTICIPANTE_PERSONA (table: PARTICIPANTE)
ALTER TABLE PARTICIPANTE ADD CONSTRAINT PARTICIPANTE_PERSONA FOREIGN KEY PARTICIPANTE_PERSONA (IDPER)
    REFERENCES PERSONA (IDPER);

-- Reference: PERSONAL_AREA (table: PERSONAL)
ALTER TABLE PERSONAL ADD CONSTRAINT PERSONAL_AREA FOREIGN KEY PERSONAL_AREA (IDAREA)
    REFERENCES AREA (IDAREA);

-- Reference: PERSONAL_PERSONA (table: PERSONAL)
ALTER TABLE PERSONAL ADD CONSTRAINT PERSONAL_PERSONA FOREIGN KEY PERSONAL_PERSONA (IDPER)
    REFERENCES PERSONA (IDPER);

-- Reference: PROCESO_DOCUMENTO (table: PROCESO)
ALTER TABLE PROCESO ADD CONSTRAINT PROCESO_DOCUMENTO FOREIGN KEY PROCESO_DOCUMENTO (IDDOC)
    REFERENCES DOCUMENTO (IDDOC);

-- Reference: Proceso_Area (table: PROCESO)
ALTER TABLE PROCESO ADD CONSTRAINT Proceso_Area FOREIGN KEY Proceso_Area (IDAREA)
    REFERENCES AREA (IDAREA);

-- Reference: REQUERIMIENTO_TUPA (table: REQUERIMIENTO)
ALTER TABLE REQUERIMIENTO ADD CONSTRAINT REQUERIMIENTO_TUPA FOREIGN KEY REQUERIMIENTO_TUPA (IDTUPA)
    REFERENCES TUPA (IDTUPA);

-- Reference: apta_nacimiento_usuarios (table: ACTA)
ALTER TABLE ACTA ADD CONSTRAINT apta_nacimiento_usuarios FOREIGN KEY apta_nacimiento_usuarios (IDPER)
    REFERENCES PERSONA (IDPER);

-- End of file.

