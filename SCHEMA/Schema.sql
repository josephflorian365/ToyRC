-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-12-09 21:04:11.374
create database toyrc;
use toyrc;
-- tables
-- Table: ACTA
CREATE TABLE  ACTA (
    IDACTA int NOT NULL AUTO_INCREMENT COMMENT 'Aqui se ingresara el Codigo de Cada Apta de nacimiento ',
    FECNACACTA date NULL COMMENT 'Aquí se ingresara la fecha de nacimiento de los usuarios ',
    TIPACTA char(1) NOT NULL COMMENT 'Si es N es acta de nacimiento, si es M es acta de matrimonio, si es D es defuncion.',
    IDPER int NOT NULL COMMENT 'Codigo del usuario (trabajador, ciudadano) ',
    CONSTRAINT PARTIDA PRIMARY KEY (IDACTA)
) COMMENT 'En este tabla encontraremos el registro de las personas.sea de nacimiento, defunción y matrimonio ';

-- Table: AREA
CREATE TABLE AREA (
    IDAREA int NOT NULL AUTO_INCREMENT COMMENT 'Aquí se ingresara el código del Área',
    NOMAREA varchar(250) NULL COMMENT 'Aqui se ingresara el nombre de cada Area ',
    NOMSUBAREA varchar(250) NOT NULL COMMENT 'Aqui se ingresara el nombre de una Sub Area en caso tenga ',
    CONSTRAINT ÁREA PRIMARY KEY (IDAREA)
) COMMENT 'En esta tabla encontraremos el lugar de bienes o servicio que brindaran a la persona.';

-- Table: DOCUMENTO
CREATE TABLE DOCUMENTO (
    IDDOC int NOT NULL AUTO_INCREMENT COMMENT 'Codigo de documento 
ejemplo: ###-###',
    TIPDOC char(1) NULL COMMENT 'Si es E es externo, si es I es interno.',
    ASUDOC varchar(250) NULL COMMENT 'Asunto del documento.',
    FECRECDOC date NULL COMMENT 'Fecha de recepcion del documento.',
    FECENTDOC date NOT NULL COMMENT 'Fecha de entrega del documento.',
    IDPER int NULL COMMENT 'Codigo del usuario (trabajador, ciudadano) ',
    IDTUPA int NULL COMMENT 'Codigo de tupac ',
    ESTDOC char(1) NOT NULL COMMENT 'Estado del documento A de activo ',
    CONSTRAINT DOCUMENTO_pk PRIMARY KEY (IDDOC)
) COMMENT 'En esta tabla encontraremos el documento junto con el tupa y caracteristicas del documento ';

-- Table: EMPLEADO
CREATE TABLE EMPLEADO (
    IDEMP int NOT NULL COMMENT 'Identificador de cada personal.',
    FECENTEMP date NULL COMMENT 'Fecha de entrada del personal.',
    FECSALEMP date NOT NULL COMMENT 'Fecha de salida de personal.',
    IDAREA int NULL COMMENT 'Codigo del Area',
    IDPER int NULL COMMENT 'Codigo de Persona',
    USUEMP varchar(50) NULL COMMENT 'Usuario que se le da a los empleados',
    PSWEMP varchar(50) NULL COMMENT 'Contraseña de los usuarios',
    ESTEMP char(1) NOT NULL COMMENT 'Estado del empleado O de operante y P de parado',
    TIPEMP char(1) NULL COMMENT 'TIpo de empleado G de gerente, S de secretaria y C de contribuyente',
    CONSTRAINT EMPLEADO_pk PRIMARY KEY (IDEMP)
) COMMENT 'Personal que trabaja en la Municipalidad.';

-- Table: EMPRESA
CREATE TABLE EMPRESA (
    IDEMP int NOT NULL COMMENT 'Contiene el identificador de cada empresa.',
    NOMEMP varchar(100) NOT NULL COMMENT 'Contiene el nombre de la empresa.',
    IDPER int NULL COMMENT 'Codigo de Persona ',
    CODRUC int NULL COMMENT 'Codigo RUC para sacar datos precisos de la empresa',
    CONSTRAINT EMPRESA_pk PRIMARY KEY (IDEMP)
) COMMENT 'Contiene a las empresas.';

-- Table: PARTICIPANTE
CREATE TABLE PARTICIPANTE (
    IDPAR int NOT NULL COMMENT 'Contiene el identificador del participante.',
    TIPPAR char(1) NULL COMMENT 'C de celebrante, D de declarante, M de mamá, P de papá, E de esposa, T de titular.',
    IDACTA int NOT NULL COMMENT 'Codigo del acta',
    CONSTRAINT PARTICIPANTE_pk PRIMARY KEY (IDPAR)
) COMMENT 'Contiene a los participantes';

-- Table: PERSONA
CREATE TABLE PERSONA (
    IDPER int NOT NULL AUTO_INCREMENT COMMENT 'Codigo del usuario (trabajador, ciudadano) ',
    NOMPER varchar(250) NULL COMMENT 'Aqui se ingresara el nombre de los usuarios ',
    APEPER varchar(250) NULL COMMENT 'Aqui se ingresara el apellido de los usuarios ',
    CELPER char(9) NULL COMMENT 'Aqui se ingresara el telefono de los usuarios ',
    DNIPER char(8) NULL COMMENT 'Aqui se le agregara el DNI del usuario ',
    CODUBI varchar(6) NOT NULL COMMENT 'Codigo de Ubigeo
',
    TIPPER char(1) NULL COMMENT 'Tipo de persona C de ciudadno y E de empleado ',
    CONSTRAINT PERSONA_pk PRIMARY KEY (IDPER)
) COMMENT 'En esta tabla encontraremos todo el dato de la persona que realizara el trámite.';

-- Table: PROCESO
CREATE TABLE PROCESO (
    IDPRO int NOT NULL AUTO_INCREMENT COMMENT 'Aqui se ingresara el codigo del proceso que se realizara ',
    IDAREA int NOT NULL COMMENT 'Aquí se ingresara el código del Área',
    IDDOC int NOT NULL COMMENT 'Contiene el código del documento',
    GIRODES char(1) NOT NULL COMMENT 'D de desarrollo y E de estancado;',
    FECDOCDES date NOT NULL,
    CONSTRAINT PROCESO_pk PRIMARY KEY (IDPRO)
) COMMENT 'En esta tabla se encontrara el control de como se esta llevando el proceso del documento ';

-- Table: REQUERIMIENTO
CREATE TABLE REQUERIMIENTO (
    IDREQ int NOT NULL COMMENT 'Codigo de los requerimientos ',
    NOMREQ varchar(300) NULL COMMENT 'Nombre del requerimiento
',
    IDTUPA int NOT NULL COMMENT 'Codigo de tupa ',
    CONSTRAINT REQUERIMIENTO_pk PRIMARY KEY (IDREQ)
) COMMENT 'Datos del TUPA';

-- Table: TUPA
CREATE TABLE TUPA (
    IDTUPA int NOT NULL AUTO_INCREMENT COMMENT 'Aqui se ingresara el Codigo de Tupa',
    PRETUPA decimal(6,2) NULL COMMENT 'Aqui se ingresara el precio que tiene cada tupa',
    PLATUPA date NULL COMMENT 'Aquí se ingresara el plazo que tendra cada Tupa',
    CONSTRAINT TUPA_pk PRIMARY KEY (IDTUPA)
) COMMENT 'En esta tabla encontraremos un conjunto de requisitos que necesita cumplir un documento 
(Texto Único de Prendimiento Administrativo)';

-- Table: UBIGEO
CREATE TABLE UBIGEO (
    CODUBI varchar(6) NOT NULL COMMENT 'Codigo del UBIGEO',
    DEPUBI varchar(50)  COMMENT 'Nombre del Departamento',
    PROVUBI varchar(50)  COMMENT 'Nombre de la provincia',
    DISTUBI varchar(80)  COMMENT 'Nombre del Distrito',
    CONSTRAINT UBIGEO_pk PRIMARY KEY (CODUBI)
) COMMENT 'Tabla contenedora de distrito, provincia y departamento';

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

-- Reference: PARTICIPANTE_ACTA (table: PARTICIPANTE)
ALTER TABLE PARTICIPANTE ADD CONSTRAINT PARTICIPANTE_ACTA FOREIGN KEY PARTICIPANTE_ACTA (IDACTA)
    REFERENCES ACTA (IDACTA);

-- Reference: PERSONAL_AREA (table: EMPLEADO)
ALTER TABLE EMPLEADO ADD CONSTRAINT PERSONAL_AREA FOREIGN KEY PERSONAL_AREA (IDAREA)
    REFERENCES AREA (IDAREA);

-- Reference: PERSONAL_PERSONA (table: EMPLEADO)
ALTER TABLE EMPLEADO ADD CONSTRAINT PERSONAL_PERSONA FOREIGN KEY PERSONAL_PERSONA (IDPER)
    REFERENCES PERSONA (IDPER);

-- Reference: PERSONA_UBIGEO (table: PERSONA)
ALTER TABLE PERSONA ADD CONSTRAINT PERSONA_UBIGEO FOREIGN KEY PERSONA_UBIGEO (CODUBI)
    REFERENCES UBIGEO (CODUBI);

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

