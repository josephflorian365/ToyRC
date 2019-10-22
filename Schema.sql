CREATE DATABASE toyRC ;
USE toyRC;

-- Table: ACTA
CREATE TABLE ACTA (
    Id_Partida int NOT NULL AUTO_INCREMENT COMMENT 'Aqui se ingresara el Codigo de Cada Apta de nacimiento ',
    Fech_Naci date NOT NULL COMMENT 'Aquí se ingresara la fecha de nacimiento de los usuarios ',
    Cod_Pers int NOT NULL COMMENT 'Codigo del usuario (trabajador, ciudadano) ',
    Tip_Apta varchar(25) NOT NULL COMMENT 'Aqui se le agregara el tipo de acta que es por ejemplo: Nacimiento, Defunción o Matrimonio ',
    CONSTRAINT PARTIDA PRIMARY KEY (Id_Partida)
) COMMENT 'En este tabla encontraremos el registro de las personas.sea de nacimiento, defunción y matrimonio ';

-- Table: AREA
CREATE TABLE AREA (
    Id_Area int NOT NULL AUTO_INCREMENT COMMENT 'Aquí se ingresara el código del Área',
    Nom_Area varchar(60) NOT NULL COMMENT 'Aqui se ingresara el nombre de cada Area ',
    Sub_Area varchar(60) NOT NULL COMMENT 'Aqui se ingresara el nombre de una Sub Area en caso tenga ',
    CONSTRAINT ÁREA PRIMARY KEY (Id_Area)
) COMMENT 'En esta tabla encontraremos el lugar de bienes o servicio que brindaran a la persona.';

-- Table: DOCUMENTO
CREATE TABLE DOCUMENTO (
    Id_Doc int NOT NULL AUTO_INCREMENT COMMENT 'Codigo de documento 
ejemplo: ###-###',
    Cod_Tupa int NOT NULL COMMENT 'Codigo de tupac ',
    Tip_Doc varchar(200) NOT NULL COMMENT 'aquí se pondrá el tipo de documento que se tramitara o se solicitara ',
    Cod_Pers int NOT NULL COMMENT 'Codigo del usuario (trabajador, ciudadano) ',
    CONSTRAINT DOCUMENTO_pk PRIMARY KEY (Id_Doc)
) COMMENT 'En esta tabla encontraremos el documento junto con el tupa y caracteristicas del documento ';

-- Table: PERSONA
CREATE TABLE PERSONA (
    Id_Pers int NOT NULL AUTO_INCREMENT COMMENT 'Codigo del usuario (trabajador, ciudadano) ',
    Nombre_Usr varchar(50) NOT NULL COMMENT 'Aqui se ingresara el nombre de los usuarios ',
    Apellido_Usr varchar(50) NOT NULL COMMENT 'Aqui se ingresara el apellido de los usuarios ',
    Telf_Usr char(9) NOT NULL COMMENT 'Aqui se ingresara el telefono de los usuarios ',
    Tipo_Usr varchar(25) NOT NULL COMMENT 'Aquí se ingresara el tipo de usuario 
ejemplo: (si es trabajador o un ciudadano )',
    DNI_Per char(8) NOT NULL COMMENT 'Aqui se le agregara el DNI del usuario ',
    CONSTRAINT PERSONA_pk PRIMARY KEY (Id_Pers)
) COMMENT 'En esta tabla encontraremos todo el dato de la persona que realizara el trámite.';

-- Table: PROCESO
CREATE TABLE PROCESO (
    Id_Proc int NOT NULL AUTO_INCREMENT COMMENT 'Aqui se ingresara el codigo del proceso que se realizara ',
    Id_Pers int NOT NULL COMMENT 'Codigo del usuario (trabajador, ciudadano) ',
    Id_Area int NOT NULL COMMENT 'Aquí se ingresara el código del Área',
    Id_Doc int NOT NULL,
    CONSTRAINT PROCESO_pk PRIMARY KEY (Id_Proc)
) COMMENT 'En esta tabla se encontrara el control de como se esta llevando el proceso del documento ';

-- Table: TUPA
CREATE TABLE TUPA (
    Id_Tupa int NOT NULL AUTO_INCREMENT COMMENT 'Aqui se ingresara el Codigo de Tupa',
    Tipo_Tupa varchar(200) NOT NULL COMMENT 'Aqui se ingresara el tipo de tupa junto a los requisitos que posee ',
    Precio_Tupa decimal(6,2) NOT NULL COMMENT 'Aqui se ingresara el precio que tiene cada tupa',
    Plazo_Tupa date NOT NULL COMMENT 'Aquí se ingresara el plazo que tendra cada Tupa',
    CONSTRAINT TUPA_pk PRIMARY KEY (Id_Tupa)
) COMMENT 'En esta tabla encontraremos un conjunto de requisitos que necesita cumplir un documento 
(Texto Único de Prendimiento Administrativo)';

-- End of file.

