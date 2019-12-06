-- DATOS A INGRESAR EN TABLA PERSONA
INSERT INTO PERSONA(NOMPER,APEPER,CEL,DNIPER)
VALUES
 ('luis','Perez','926598748','74184659'), -- codigo 1
 ('jose','Sanchez','975868452','74145659'), -- codigo 2
 ('miguel','Dominguez','975868452','74189659'), -- codigo 3
 ('raul','Pacheco','975878452','74569659'), -- codigo 4
 ('ronaldo','Gonzales','975878452','74189649'), -- codigo 5
 ('jesus','Piedra','975868452','74209659'), -- codigo 6
 ('sachiro','Gomez','975868452','15189659'), -- codigo 7
 ('Ash','Carhuancho','975868452','96189659'), -- codigo 8
 ('Fanny','Piedra','975878452','65189659'), -- codigo 9
 ('Tanjiro','Kamado','926598748','89189659'), -- codigo 10
  ('jorge','Perez','926598748','74184659'), -- codigo 11
 ('jose','Gutierrez','975656452','76545659'), -- codigo 12
 ('james','Gamez','975868666','78989659'), -- codigo 13
 ('Fernando','Davila','975878123','74333659'), -- codigo 14
 ('Bernardo','Izurizaga','977778452','89589649'), -- codigo 15
 ('Benito','Sanchez','975868666','74209123'), -- codigo 16
 ('Gonzalo','Jimenez','975868125','89789659'), -- codigo 17
 ('Ashley','Pumacahua','975862222','56789659'), -- codigo 18
 ('Pamela','Sacsa','975878444','65187779'), -- codigo 19
 ('Carlos','Huaman','915998748','19889659'), -- codigo 20
  ('Maiker','Quispe','926595648','74184459'), -- codigo 21
 ('jesus','Benavente','945768452','74585659'), -- codigo 22
 ('Giancarlo','Valencia','975868789','74186789'), -- codigo 23
 ('Lucio','Huaman','975875962','74569659'), -- codigo 24
 ('ronaldo','Gonzales','975878452','74189649'), -- codigo 25
 ('jesus','Piedra','975868452','74209659'), -- codigo 26
 ('Fanny','Roldan','975891452','15189659'), -- codigo 27
 ('Valeria','Soto','975868452','96189659'), -- codigo 28
 ('Rosa','Guadalupe','975872892','69989659'), -- codigo 29
 ('Isabel','Rodriguez','989198748','89189895'); -- codigo 30
 -- DATOS A INGRESAR EN TABLA TUPA
 

 
INSERT INTO TUPA(PRETUPA,PLATUPA)
 VALUES
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('1.00',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('12.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('1.5',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('12.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('0.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y')),
('8.0',STR_TO_DATE('20/05/2005', '%d/%m/%Y'));
 -- ('RECURSO IMPUGNATORIO RECONSIDERACION ',0.0,STR_TO_DATE('20/05/2005', '%d/%m/%Y'));

  -- DATOS A INGRESAR EN TABLA AREA
INSERT INTO AREA(NOMAREA,NOMSUBAREA)
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
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Servicios Públicos','Unidad de Transporte'),
 ('Servicios Públicos','Unidad de Defensa Civil'),
 ('Administración','Tesoreria'),
 ('Fiscalización','Caja'),
 ('Recursos Humanos','Secretario de Recursos Humanos'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana'),
 ('Gerencia Municipal','Habilitación Urbana');
 
  -- DATOS A INGRESAR EN TABLA ACTA
  
 INSERT INTO ACTA(FECNACACTA,IDPER,TIPACTA)
 VALUES
(STR_TO_DATE('20/05/2005', '%d/%m/%Y'),'10','Matrimonio'),
(STR_TO_DATE('15/08/2000','%d/%m/%Y'),'3','Nacimiento'),
(STR_TO_DATE('18/08/2000','%d/%m/%Y'),'5','Nacimiento'),
(STR_TO_DATE('20/07/2005', '%d/%m/%Y'),'4','Matrimonio'),
(STR_TO_DATE('15/08/2000','%d/%m/%Y'),'1','Nacimiento'),
(STR_TO_DATE('15/04/2000','%d/%m/%Y'),'2','Nacimiento'),
(STR_TO_DATE('15/09/2000','%d/%m/%Y'),'6','Nacimiento'),
(STR_TO_DATE('20/05/2005', '%d/%m/%Y'),'7','Matrimonio'),
(STR_TO_DATE('25/01/2000','%d/%m/%Y'),'18','Nacimiento'),
(STR_TO_DATE('10/01/2002','%d/%m/%Y'),'17','Defunción'),
(STR_TO_DATE('01/01/2001','%d/%m/%Y'),'19','Nacimiento'),
(STR_TO_DATE('18/02/2005','%d/%m/%Y'),'3','Nacimiento'),
(STR_TO_DATE('20/03/2001','%d/%m/%Y'),'28','Nacimiento'),
(STR_TO_DATE('11/04/2002','%d/%m/%Y'),'27','Nacimiento'),
(STR_TO_DATE('05/05/2003','%d/%m/%Y'),'26','Matrmonio'),
(STR_TO_DATE('06/06/2004','%d/%m/%Y'),'16','Nacimiento'),
(STR_TO_DATE('17/07/2005','%d/%m/%Y'),'15','Matrimonio'),
(STR_TO_DATE('19/08/2004','%d/%m/%Y'),'1','Nacimiento'),
(STR_TO_DATE('20/09/2005','%d/%m/%Y'),'2','Matrimonio'),
(STR_TO_DATE('30/10/2006','%d/%m/%Y'),'3','Nacimiento'),
(STR_TO_DATE('24/11/2003','%d/%m/%Y'),'4','Nacimiento'),
(STR_TO_DATE('15/12/2002','%d/%m/%Y'),'5','Matrimonio'),
(STR_TO_DATE('02/01/2001','%d/%m/%Y'),'6','Nacimiento'),
(STR_TO_DATE('03/12/2001','%d/%m/%Y'),'7','Defunción'),
(STR_TO_DATE('01/11/2002','%d/%m/%Y'),'8','Nacimiento'),
(STR_TO_DATE('04/10/2002','%d/%m/%Y'),'11','Defunción'),
(STR_TO_DATE('18/09/2001','%d/%m/%Y'),'21','Nacimiento'),
(STR_TO_DATE('17/08/2001','%d/%m/%Y'),'10','Defunción'),
(STR_TO_DATE('19/07/2001','%d/%m/%Y'),'29','Nacimiento'),
(STR_TO_DATE('22/06/2003','%d/%m/%Y'),'30','Defunción');

 
 
 -- DATOS A INGRESAR EN TABLA DOCUMENTO
 INSERT INTO DOCUMENTO(IDTUPA,TIPDOC,IDPER,ASUDOC,FECRECDOC,FECDERDOC,FECENTDOC)
 VALUES
('1','BUSQUEDA DE EXPEDIENTE EN ARCHIVO Y/O REINICIO DE TRAMITE','1','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('2','RECURSO IMPUGNATORIO RECONSIDERACION ','2','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('3','RECURSO IMPUGNATORIO RECONSIDERACION ','3','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('4','COPIA SIMPLE ','4','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('5','COPIA CERTIFICADA ','5','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('6','AUTENTICACION(fedateo) DE COPIAS ','6','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('7','CONSTANCIAS Y CERTIFICADOS ','7','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('8','INSCRIPCION Y RECONOCIMIENTO DE ASOCIACIONES Y/ O ORGANIZACIONES DE BASE ','8','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('9','RECONOCIMIENTO DE NUEVA JUNTA DIRECTIVA (ASOCIAC.Y/OORGANIZACIONES DE BASE)  ','9','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('10','CERTIFICADO DOMICILIARIO','10','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('13','REGISTRO DE MODIFICAC. A LA INSCRIP. DE ASOCIAC. Y/O ORGANIZACIONES DE BASE','11','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('14','IMPUESTO PREDIAL- INSCRIPCION DE NUEVO CONTRIBUYENTE ','12','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('15','RECTIFICACION Y/O ACTUALIZACION DE AUTOAVALUO ','13','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('16','CONSTANCIA DE INSCRIPCION O NO INSCRIPCION EN EL REGISTRO PREDIAL','14','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('17','EXONERACION DE IMPUESTO PREDIAL ','15','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('18','AUTORIZACION DE ESPECTACULO PUBLICO NO DEPORTIVO ','16','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('19','LIQUIDACION IMPUESTO A LOS JUEGOS ','17','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('20','DUPLICADO DE DECLARACION JURADA DE IMPUESTO PREDIAL ','18','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('21','FRACCIONAMIENTO DE DEUDAS TRIBUTARIAS Y ADMINISTRATIVAS ','19','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('22','AMPLIACION DEL CONVENIO DE FRACCIONAMIENTO ','20','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('23','CERTIFICADO DE NO ADEUDO ','21','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('24','CONSTANCIAS TRIBUTARIAS O ADMINISTRATIVAS ','22','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('25','DUPLICADO DE CERTIFICADOS Y CONSTANCIA  ','23','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('26','PRESCRIPCION DE LA DEUDA TRIBUTARIA ','24','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('27','COMPENSACION DE DEUDA TRIBUTARIA O NO TRIBUTARIA','25','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('28','RECURSO DE RECLAMACION ','26','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('29','AUTORIZACION PARA TRABAJADORES AMBULANTE  ','27','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('30','CARNET DE SANIDAD  ','28','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('11','LICENCIA DE APERTURA DE ESTABLECIMIENTO COMERCIAL, INDUSTRIAL Y/O DE SERVICIO ','29','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y')),
('12','DUPLICADO DE LICENCIA DE FUNCIONAMIENTO  ','30','Tramite Documentario',
STR_TO_DATE('20/05/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'),STR_TO_DATE('25/07/2005', '%d/%m/%Y'));



-- DATOS A INGRESAR EN TABLA PROCESO
INSERT INTO PROCESO(IDAREA,IDDOC)
VALUES
('1','5'),
('2','4'),
('5','6'), 
('9','3'), 
('8','2'),
('6','1'), 
('4','8'),  
('3','9'),
('7','7'),
('10','10'),
('11','11'),
('12','12'),
('13','13'),
('14','14'),
('15','15'),
('16','16'),
('17','17'),
('18','18'),
('19','19'),
('20','20'),
('21','21'),
('22','22'),
('23','23'),
('24','24'),
('25','25'),
('26','26'),
('27','27'),
('28','28'),
('29','29'),
('30','30');

INSERT INTO REQUERIMIENTO(NOMREQ,IDTUPA)
VALUES
('1.01-Solicitud o FUT-Recibo de pagos por derechos-Consignar correo electrónico y teléfono para comunicación','1'),
('1.02-Escrito fundamentado, firmado por el administrado y abogado identificando el acto cuestinado y prueba instrumental - Consignarcomo electrónico y teléfono para comunicación','2'),
('1.03-Escrtio fundamentado firmado por el administrado y abogado identificado el acto cuestionado y prueba instrumental - Consignarcomo electrónico y teléfono para comunicación','3'),
('1.04-Solicitud o FUT dirigido al alcalde foliado - Recibo de pago de Derechos(Por cada hoja de tamño A4) - Consignar correo electrónico y teléfono para comunicación','4'),
('1.05-Solicitud o FUT, copia de DNI, Recibo de pago de derechos (por cada hoja de tamñaño A4) - Consignar correo electrónico y teléfono para comunicación','5'),
('1.06-Copia fotostática a autentizar y exibición de originales(solo para trámites  en la entidad) - Conisgnar como correo electrónico y teléfono para comunicación','6'),
('1.07-Solicitud o FUT - Recibo de pago de derechos - Consignar correo electrónico y teléfono para comunicación','7'),
('1.08-Solicitud o formulario - Acta eleccionaria y/o de constitución - Nomina de directivos -Nomina de miembros de la organización y copia de DNI - Copia de la ficha de inscripción en Registros Públicos (Opcional) - Consignar correo electrónico  y teléfono para comunicación','8'),
('1.09-Solicitud o Formulario - Acta eleccionaria - Nomina de nuevos directivos, con dirección y copia de DNI - Conisgnar  correo  electrónico y teléfono para comunicación','9'),
('1.10-Solicitud o formulario - Acta de aprobación de la respectiva modificación - Pago de derechos - Consignar correo electrómico y teléfono para comunicación','10'),
('1.11-Solicitud o FUT - Copia Simple del DNI y recibo de agua o Luz -Recibo de pagos por Derecho -Consignar Correo electrónico y teléfono para comunicación','11'),
('2.01-Solicitud o FUT - Copia de Última declaración de Autovaluo - Copia auténtica de Inscripción en Registro Públicos o Minuta Legalizada de Compra Venta, o Escritura autentizada de Anticipio de Legítima, o Declaratoria autentizada de herederos o Certificado oficial de posesión - Copia simple del DNI del contribuyente o comprobante de información Registrada en el RUC expedido por la SUNAT tratándose de Persona Jurídica - Un juego de Autovaluo (3PU-S o PRS y 3 HRs)por inmueble) - Recibo  de pago  por Multa (omiso a la  DJ) de ser el caso','12'),
('2.02-Formato de Declaración Jurada - Copia de  DD.JJ DE Impuesto Predial(Autoavaluo a rectificar) - Unjuego  de Autoavaluo rectificado por inmueble(3PU o 3PR y 3HR) - Copia simple de DNI del Contribuyente o comprobante de información Registrada en el RUC expedido por la SUNAT tratándose de persona Jurídica - En caso de representación deberá presentar Poder actualizado en Documento Público o privado con firma legalizante notario mas vigencia de poderes - Recibo de pagos por derecho de rectificación - Documentación que acredite la rectificación - Recibo de pago por derecho de Inspección Ocultar C asa Habitación Comercio Industria','13'),
('2.03-Solicitud o FUT - Copia simple de DNI del contribuyente o comprobante de Información - Registro de RUC expedido por la SUNAT tratandose de persona jurídica - En caso de representación deberá presentar Poder actualizada en documento público o privado con firma legalizada ante notario mas vigencia de poderes - Copia auténtica de Transferencia - Consignar correo electrónico y/o tléfono para la comunicación','14'),
('2.04-Solicitud o FUT - DD.JJ de ser el propietario de un solo inmueble en la provincia - Copia simple de DNI del contribuyente o comprobante de información  - En caso de representación deberá presentar Poder actualizada en documento público o privado con firma legalizada ante Notario mas vigencia de Poderes - Copia fedateada de las tres últimas boletas de pago ( Pensionista) - Copia de Resolución del Pensionista - Recibo de pago por Derecho de Trámite','15'),
('2.05-Solicitud o FUT -Copia simple del DNI o comprobante de Información del titular o represt. de ser el caso - Copia autenticada del contrato del local - Copia Registro de RUC expedido por la SUNAT -  En caso de representacion debera presentar Poder actualizada en documento publico o privado con firma legalizada ante Notario mas vigencia de poderes - Autorizacion de la APDAYC (de ser el caso) - Autorizacion de la DISCAMEC ( en caso que corresponda) - Informe Tecnico favorable de defensa civil -  Recibo de pago por derecho de expedición de bebidas alcoholicas dentro de local donde se desarrolla espectaculo. Ley 29060- Ley 27972','16'),
('2.06-Solicitu o FUT - Gallo -Loterías','17'),
('2.07-Copia simple de DNI o documento que acredite identidad y/o carta poder con firma legalizada ante notario en caso de representacion legalizada ante notario en caso de representacion - Pago por derecho de tramite','18'),
('2.08-Solicitud o FUT - Copia simple del DNI o comprobante de informacion del titular o represt. ser el caso - En caso de representacion debera presentar Poder actualizada en documento publico o privado con firma legalizada ante Notario mas vigencia de poderes - Pago por derechos de Trámite -  ago de cuota inicial del fraccionamiento conforme lo señale la Subgerencia de Recaudacion Tributaria y Ejecutoria Coactiva - Escrito de desistimiento cuando corresponda','19'),
('2.09-Solicitud o FUT - Solicitud dirigida al Alcalde -Acta de Fraccionamiento (formulario) de Deuda Tributaria - Haber amortizado 40% de la deuda Fraccionada - 5 No haber incurrido en causal de perdida de fraccionamiento - Consignar correo electronico y telefono para comunicación','20'),
('2.10-Solicitud o FUT - Copia simple del DNI del titular y/o de representante de ser el caso - En caso de representacion debera presentar Poder actualizada en documento publico o privado con firma legalizada ante Notario mas vigencia de poderes - Recibo de derecho de tramite ','21'),
('2.11-Solicitud o FUT - Copia simple del DNI del titular y/o de representante de ser el caso - Copia fedateada que sustente el pedido o carta poder legalizada de ser el caso - Recibo de pago ','22'),
('2.12- Formulario N° 204 (autocopiativo) debidamente llenado y suscrito - De requerirse, copia del comprobante de pago que se reporta  en exceso o resolucion de lo cual deriva el derecho a solicitarlo según sea el caso - No presentar deudas tributaria y administrativas ','23'),
('2.13-Solicitud o FUT - Copia simple del DNI del titular y/o de representante de ser el caso - En caso de representacion debera presentar Poder actualizada en documento publico o privado con firma legalizada ante Notario mas vigencia de poderes - Estado de cuenta de deuda a prescribir','24'),
('2.14-Solicitud o FUT - Copía simple de documento de identidad o comprobante de informacion registrada expedido de persona naturales que actuen en este medio - Carta poder o documento que acredite la representacion tratandose persona juridica o persona naturales que actuen en este medio','25'),
('2.15-Escrito del Recurso de Reclamacion dirigido al Alcalde con firma del letrado en caso de persona juridica debera ser suscrito por el representante legal - Copia simple del DNI del titular y/o de representante de ser el caso - Copia simple de la ficha o Testimonio de la Escritura Publica del poder del representante legal de la persona juridica, mas Carta Poder legalizada de ser el caso. - Copia de a Resolucion que origino el Recurso y los documentos que sustente el Reclamo - Recibo de pago por Derecho de Tramite (por cada valor reclamado) - Recibo de pago de la totalidad de la deuda tributaria reclamada actuaizada hasta la fecha en que se realiza el reclamo','26'),
('Solicitud o FUT  - Copia simple del DNI del titular','27'),
('2.17-Solicitud o FUT - Copia simple del DNI del titular - Recibo de pago de Derecho por Carnet - Dos Fotos - Certificado Medico Favorable no mayor de 3 meses de expedido - Consignar correo electronico y/o telefono para comunicación ','28'),
('2.18-Solicitud o FUT - Copia simple del DNI del titular y/o de representante de ser el caso. - En caso de representacion debera presentar Poder actualizada en documento publico o privado con firma legalizada ante Notario - Copia Registro de RUC expedido por la SUNAT. - Copia de documento de propiedad o contrato de alquiler - Copia de autorización del ministerio de Educación, Energía y Minas, salud, OSINERG (de ser el caso) - Informe, Acta o Certificado favorable de inspección técnica de seguridad de defensa Civil y/o Indeci (según el caso) - Vigencia de poder del representante legal en caso de persona jurídica - Recibo de Pago de derecho de licencia - Declaración jurada de observancia de condiciones de seguridad de actividades (de ser el caso) - Certificado de compatibilidad de uso - Recibo de Pago de derecho de licencia:','29'),
('2.19-Solicitud o FUT indicando motivo de duplicado. - Copia simple del DNI del titular y/o de representante de ser el caso. - Devolución o copia de Certificado deteriorado vigente o denuncia policial por robo o similar, según sea el caso. - Recibo de Pago por Derecho - En caso de representacion debera presentar Poder actualizada en documento publico o privado con firma legalizada ante Notario - Consignar correo electronico y/o telefono para comunicación','30');








