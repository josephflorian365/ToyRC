-- DATOS A INGRESAR EN TABLA PERSONA
INSERT INTO PERSONA(Nombre_Usr,Apellido_Usr,Telf_Usr,Tipo_Usr,DNI_Per)
VALUES
 ('luis','Perez','926598748','Trabajador','74184659'), -- codigo 1
 ('jose','Sanchez','975868452','Ciudadano','74145659'), -- codigo 2
 ('miguel','Dominguez','975868452','Trabajador','74189659'), -- codigo 3
 ('raul','Pacheco','975878452','Trabajador','74569659'), -- codigo 4
 ('ronaldo','Gonzales','975878452','Ciudadano','74189649'), -- codigo 5
 ('jesus','Piedra','975868452','Trabajador','74209659'), -- codigo 6
 ('sachiro','Gomez','975868452','Ciudadano','15189659'), -- codigo 7
 ('Ash','Carhuancho','975868452','Trabajador','96189659'), -- codigo 8
 ('Fanny','Piedra','975878452','Trabajador','65189659'), -- codigo 9
 ('Tanjiro','Kamado','926598748','Ciudadano','89189659'); -- codigo 10
 
 -- DATOS A INGRESAR EN TABLA TUPA
INSERT INTO TUPA(Tipo_Tupa,Precio_Tupa,Plazo_Tupa)
 VALUES
('Recibo de pago por derechos','0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('Escrito fundamentado, firmado por el administrado y abogadoidentificando el acto cuestionado y prueba instrumental. ','0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('Consignar correo electronico y telefono para comunicación  ','0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
(' Recibo de pago de derechos (por cada hoja de tamaño A4) ','1.00',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('Copia del DNI ','12.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('Copia fotostatica a autenticar y exhibicion de originales','1.5',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('Recibo de pago de derechos  ','12.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('Acta eleccionaria y/o de constitución  ','0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('Acta eleccionaria ','0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('Acta de aprobacion de la respectiva modificacion','8.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y'));
 -- ('RECURSO IMPUGNATORIO RECONSIDERACION ',0.0,STR_TO_DATE('20/05/2005', '%d/%m/%Y'));


 
  -- DATOS A INGRESAR EN TABLA AREA
INSERT INTO AREA(Nom_Area,Sub_Area)
 VALUES
 ('Gerencia Municipal','Gerencia de tributacion mmunicipal'), -- 1
 ('Gerencia Municipal','Jefe Registro Civil'),
 ('Gerencia Municipal','Sub Gerencia de Obras'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal' ,'Sub Gerencia de Obras'),
 ('Gerencia Municipal','Sub Gerencia de Obras'),
 ('Gerencia Municipal','Jefe Registro Civil'),
 ('Gerencia Municipal','Gerencia de tributacion mmunicipal'),
 ('Gerencia Municipal','Sub Gerencia de Obras'),
 ('Gerencia Municipal','Habilitación Urbana');
 
  -- DATOS A INGRESAR EN TABLA ACTA
  
 INSERT INTO ACTA(Fech_Naci,Cod_Pers,Tip_Apta)
 VALUES
 (STR_TO_DATE('20/05/2005', '%d/%m/%Y'),'10','Matrimonio'),
 (STR_TO_DATE('15/08/2000','%d/%m/%Y'),'3','Nacimiento'),
 (STR_TO_DATE('18/08/2000','%d/%m/%Y'),'5','Nacimiento'),
 (STR_TO_DATE('20/07/2005', '%d/%m/%Y'),'4','Matrimonio'),
 (STR_TO_DATE('15/08/2000','%d/%m/%Y'),'1','Nacimiento'),
 (STR_TO_DATE('15/04/2000','%d/%m/%Y'),'2','Nacimiento'),
 (STR_TO_DATE('15/09/2000','%d/%m/%Y'),'6','Nacimiento'),
 (STR_TO_DATE('20/05/2005', '%d/%m/%Y'),'7','Matrimonio'),
 (STR_TO_DATE('25/01/2000','%d/%m/%Y'),'8','Nacimiento'),
 (STR_TO_DATE('15/07/2000','%d/%m/%Y'),'9','Nacimiento');
 
 -- DATOS A INGRESAR EN TABLA DOCUMENTO
 INSERT INTO DOCUMENTO(Cod_Tupa,Tip_Doc,Cod_Pers)
 VALUES
('1','BUSQUEDA DE EXPEDIENTE EN ARCHIVO Y/O REINICIO DE TRAMITE','1'),
('2','RECURSO IMPUGNATORIO RECONSIDERACION ','2'),
('3','RECURSO IMPUGNATORIO RECONSIDERACION ','3'),
('4','COPIA SIMPLE ','4'),
('5','COPIA CERTIFICADA ','5'),
('6','AUTENTICACION(fedateo) DE COPIAS ','6'),
('7','CONSTANCIAS Y CERTIFICADOS ','7'),
('8','INSCRIPCION Y RECONOCIMIENTO DE ASOCIACIONES Y/ O ORGANIZACIONES DE BASE ','8'),
('9','RECONOCIMIENTO DE NUEVA JUNTA DIRECTIVA (ASOCIAC.Y/OORGANIZACIONES DE BASE  ','9'),
('10','CERTIFICADO DOMICILIARIO','10');

-- DATOS A INGRESAR EN TABLA PROCESO
insert into PROCESO(Id_Pers,Id_Area,Id_Doc)
values
('1','5','6'),
('2','4','5'),
('5','6','3'), 
('9','3','4'), 
('8','2','7'),
('6','1','8'), 
('4','8','9'),  
('3','9','10'),
('7','7','1'),
('10','10','2');


