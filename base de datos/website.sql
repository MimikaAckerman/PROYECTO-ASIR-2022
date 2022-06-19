drop database if exists website;
create database website;
use website;

#paciente(#id,nombre,apellido,mail,codigo,fecha_nacimiento,num_cuenta,dni,psicologo_acargo,tlf_paciente)
create table paciente(
id int unsigned primary key auto_increment,
nombre varchar (20) not null,
apellido varchar (20) not null,
mail varchar (50),
fecha_nacimiento datetime,
num_cuenta varchar(50),
dni char(50) not null,
psicologo_acargo varchar (50) not null,
tlf_paciente varchar (50)not null,
procedencia varchar (50) not null
);

	INSERT INTO paciente (nombre,apellido,mail,fecha_nacimiento,num_cuenta,dni,psicologo_acargo,tlf_paciente,procedencia)
	VALUES
	  ("Illiana","Luna","pellentesque.tellus@aol.org","2022-11-15 20:25:14","ES5846489290274451790873","20981581-8","Victor Lopez-Brea German","1-614-308-1401","Tula"),
	  ("Rachel","Kirkland","libero@google.net","2022-09-30 00:46:00","DO82579146853765253197684136","21458255-4","Elias Herrera Nuñez ","1-152-363-8925","Zaria"),
	  ("Skyler","Hogan","dignissim.maecenas.ornare@outlook.net","2022-02-09 01:50:05","BA466562649309833593","2410713-2","Elias Herrera Nuñez ","(634) 538-5495","Benalla"),
	  ("Maile","Banks","quis@icloud.couk","2022-08-29 06:59:21","IE27OBGX83322032697270","20397692-5","Elias Herrera Nuñez ","1-963-435-8801","Ashburton"),
	  ("Farrah","Romero","dictum.magna.ut@protonmail.ca","2021-09-12 07:21:02","ES7441851830885917825643","34395268-6","Guillermo Andres Herrera Padilla","1-270-857-2219","Riohacha");

	INSERT INTO paciente (nombre,apellido,mail,fecha_nacimiento,num_cuenta,dni,psicologo_acargo,tlf_paciente,procedencia)
	VALUES
	  ("Kuame","Hammond","enim.diam.vel@protonmail.net","2022-11-25 02:19:15","AE972527294339272760217","31215386-6","Victor Lopez-Brea German","1-482-952-4357","Swan Hill"),
	  ("Beck","Donaldson","orci.lobortis.augue@icloud.org","2021-05-24 18:55:56","VG3895737904363286653543","311838-K","Elias Herrera Nuñez ","(603) 313-5401","Seongnam"),
	  ("Allegra","Carpenter","dolor.sit@aol.couk","2021-12-27 02:50:30","ES5885297610293446446433","48255591-8","Victor Lopez-Brea German","(837) 663-7275","Las Palmas"),
	  ("Anjolie","Francis","nam.interdum@hotmail.edu","2023-01-25 15:42:10","SI96155267648789166","46701535-4","Guillermo Andres Herrera Padilla","1-507-318-6181","Valkenburg aan de Geul"),
	  ("Sandra","Murray","et.netus.et@aol.net","2021-05-23 19:32:07","GB98MSUI85664001311473","17239590-2","Guillermo Andres Herrera Padilla","1-401-756-1907","Hwaseong");

	INSERT INTO paciente (nombre,apellido,mail,fecha_nacimiento,num_cuenta,dni,psicologo_acargo,tlf_paciente,procedencia)
	VALUES
	  ("Laith","Tran","lorem.semper.auctor@hotmail.ca","2023-03-05 08:17:46","SA2152518737964788628832","14329439-0","Victor Lopez-Brea German","1-687-627-4635","Lagos"),
	  ("Castor","Duncan","adipiscing.elit@google.com","2023-05-08 08:45:37","TR695019835465665888734923","3270597-9","Victor Lopez-Brea German","1-664-712-1044","Juliaca"),
	  ("Caryn","Buchanan","felis.ullamcorper@google.com","2022-05-07 22:28:17","NO0836223745662","7648844-4","Elias Herrera Nuñez ","(453) 855-9427","Melilla"),
	  ("Kylie","Bishop","convallis.ante@google.com","2022-09-07 11:40:45","CR1149550355031533672","7108935-5","Guillermo Andres Herrera Padilla","(753) 607-9054","Macau"),
	  ("Caleb","Woodard","mauris.id@google.ca","2022-02-10 15:00:58","DO96678214913060317186518281","40643786-8","Victor Lopez-Brea German","1-236-564-7245","Seogwipo");



#tlf(#id,tlf_paciente,-id_paciente,-id_telefono_paciente)
create table tlf_paciente(
id int unsigned primary key auto_increment,
tlf_paciente varchar (40),
id_paciente int unsigned,
foreign key (id_paciente) references paciente(id)
);
	INSERT INTO tlf_paciente (tlf_paciente,id_paciente)
	VALUES
	  ("1-643-883-5447",2),
	  ("(568) 486-6573",10),
	  ("(569) 635-0840",7),
	  ("(444) 165-2549",11),
	  ("(413) 388-5925",3);
	  
	INSERT INTO tlf_paciente (tlf_paciente,id_paciente)
	VALUES
	  ("1-981-775-6138",4),
	  ("(629) 204-6423",8),
	  ("1-425-757-0129",9),
	  ("(648) 183-9115",1),
	  ("(306) 557-9437",9);

	INSERT INTO tlf_paciente (tlf_paciente,id_paciente)
	VALUES
	  ("(863) 303-2582",5),
	  ("1-733-766-5724",14),
	  ("1-858-528-7976",3),
	  ("(922) 828-5783",7),
	  ("1-536-445-7166",2);

	INSERT INTO tlf_paciente (tlf_paciente,id_paciente)
	VALUES
	  ("1-938-947-6922",10),
	  ("(456) 244-6453",15),
	  ("(304) 234-4615",15),
	  ("(241) 976-6489",5),
	  ("(317) 568-4521",12);

#psicologo(#id,especializacion,nombre,apellido,dni,referencias,lugar_residencia,mail,numero_colegiado,tlf_psicologo)
create table psicologo(
id int unsigned primary key auto_increment,
especializacion varchar (40),
nombre varchar (50),
dni char(20),
referencias varchar (80),
lugar_residencia varchar (50),
mail varchar (40),
numero_colegiado float,
tlf_psicologo varchar (40)
);

	INSERT INTO psicologo (especializacion,nombre,dni,referencias,lugar_residencia,mail,numero_colegiado,tlf_psicologo)
	VALUES
	  ("salud","Elias Herrera Nuñez","15749842-8","Finale","Mulhouse","VictorLPG@LaTerapia.com",814,"1-788-816-7997"),
	  ("educacion","Elias Herrera Nuñez","2522193-1","Yahoo","Ife","GuillermoAnHP@LaTerapia.com",536,"(517) 310-4878"),
	  ("escolar","Guillermo Andres Herrera Padilla","25207164-4","Finale","Horlivka","GuillermoAnHP@LaTerapia.com",659,"1-126-945-8473"),
	  ("sexual","Victor Lopez-Brea","11508709-6","Apple","Haisyn","GuillermoAnHP@LaTerapia.com",844,"1-622-143-5162"),
	  ("educacion","Guillermo Andres Herrera Padilla","25749388-1","Apple","Hamburg","VictorLPG@LaTerapia.com",96,"1-655-422-3544");

#paciente_psicologo(#(-id_paciente,-id_psicologo))
create table paciente_psicologo(
id_paciente int unsigned,
id_psicologo int unsigned,
foreign key (id_paciente) references paciente (id),
foreign key (id_psicologo) references psicologo (id)
);
	INSERT INTO paciente_psicologo (id_paciente,id_psicologo)
	VALUES
	  (10,2),
	  (15,4),
	  (15,3),
	  (5,4),
	  (12,3);

		INSERT INTO paciente_psicologo (id_paciente,id_psicologo)
	VALUES
	  (8,3),
	  (8,4),
	  (8,2),
	  (5,3),
	  (6,4);
      
      INSERT INTO paciente_psicologo (id_paciente,id_psicologo)
VALUES
  (11,1),
  (14,3),
  (3,4),
  (12,5),
  (7,2);

      

#secretaria(#id,nombre,num_seguridad_social,dni,tlf_secretaria,-id_psicologo)
create table secretaria(
id int unsigned primary key auto_increment,
nombre varchar (30),
num_seguridad_social varchar (80),                         
dni char (40),
id_psicologo int unsigned,
tlf_secretaria varchar (40),
foreign key (id_psicologo) references psicologo (id)
);
	INSERT INTO secretaria (nombre,num_seguridad_social,dni,id_psicologo,tlf_secretaria)
	VALUES
	  ("Thor Francis","TR40469660204351643","40292186-2","5","1-516-262-3831"),
	  ("Carter Decker","GI29NYYS474284204","8144378-5","2","1-540-214-8613"),
	  ("Quentin Ochoa","HR383778516067463","30465229-2","3","(282) 348-8792"),
	  ("Ivan Wong","BH75835738180289526527","30831836-2","1","1-555-674-4555"),
	  ("Tiger Haley","MD34725265573527916","46632134-6","4","1-710-898-7633");


#tlf(#id,tlf_secretaria)
create table tlf_secretaria(
id int unsigned primary key auto_increment,
tlf_secretaria varchar (50),
id_secretaria int unsigned,
foreign key (id_secretaria) references secretaria(id)
);
INSERT INTO tlf_secretaria (tlf_secretaria,id_secretaria)
VALUES
  ("(224) 669-4647",1),
  ("(415) 285-1822",3),
  ("(763) 359-0445",4),
  ("(482) 448-9028",5),
  ("(194) 469-5515",2);


#recursos_humanos(#id,nombre,num_seguridad_social,dni,tlf_recursos_humanos,-id_secretaria)
create table recursos_humanos(
id int unsigned primary key auto_increment,
nombre varchar (30),
num_seguridad_social varchar (50),                         
dni char (30),
tlf_recursos_humanos varchar (40),
id_secretaria int unsigned,
foreign key (id_secretaria) references secretaria (id)
);

INSERT INTO recursos_humanos (nombre,num_seguridad_social,dni,tlf_recursos_humanos,id_secretaria)
VALUES
  ("Anabelen Perez","214966276481583","8398437-6","1-389-953-2707","4"),
  ("Monica Zalba","677113 732516 4322","2754992-6","(682) 246-7568","3"),
  ("Sagrario Lazaro","214961788563960","39513824-3","(445) 208-2988","1"),
  ("Evelyn Nailet Gomez Muñoz","347748627628562","401375-1","1-262-887-8941","5");


#tlf(#id,tlf_recursos_humanos)
create table tlf_recursos_humanos(
id int unsigned primary key auto_increment,
tlf_recursos_humanos varchar (40),
id_recursos_humanos int unsigned,
foreign key (id_recursos_humanos) references recursos_humanos(id)
);
INSERT INTO tlf_recursos_humanos (tlf_recursos_humanos,id_recursos_humanos)
VALUES
  ("(224) 669-4647",1),
  ("(415) 285-1822",3),
  ("(763) 359-0445",4),
  ("(482) 448-9028",1),
  ("(194) 469-5515",2);



#cita(#id,fecha_inicio,hora,codigo,tipo_plataforma,-id_psicologo,-id_paciente)
create table cita(
id int unsigned primary key auto_increment,
fecha_inicio datetime,
codigo char(8),
tipo_plataforma enum('teams','meet','zoom','discord'),
id_psicologo int unsigned,
foreign key (id_psicologo) references psicologo(id),
id_paciente int unsigned,
foreign key (id_paciente) references paciente(id)
);

INSERT INTO cita (fecha_inicio,codigo,tipo_plataforma,id_psicologo,id_paciente)
VALUES
  ("2022-04-24 07:39:11",5963,"zoom","5","15"),
  ("2022-06-10 22:29:11",8407,"discord","1","4"),
  ("2021-10-01 08:22:51",7831,"teams","4","8"),
  ("2022-12-07 07:56:44",5746,"teams","3","10"),
  ("2022-12-25 22:53:24",3714,"discord","2","7");

INSERT INTO cita (fecha_inicio,codigo,tipo_plataforma,id_psicologo,id_paciente)
VALUES
  ("2021-10-20 05:01:49",9507,"discord","1","4"),
  ("2022-07-30 19:23:20",7744,"meet","5","8"),
  ("2023-04-18 07:12:04",8520,"zoom","1","15"),
  ("2022-02-02 06:16:05",3063,"teams","4","11"),
  ("2023-05-07 00:56:18",2824,"zoom","2","6");

INSERT INTO cita (fecha_inicio,codigo,tipo_plataforma,id_psicologo,id_paciente)
VALUES
  ("2021-10-20 05:01:49",9507,"discord","5","7"),
  ("2022-07-30 19:23:20",7744,"meet","3","3"),
  ("2023-04-18 07:12:04",8520,"zoom","1","14"),
  ("2022-02-02 06:16:05",3063,"teams","4","11"),
  ("2023-05-07 00:56:18",2824,"zoom","2","13");


#cita_psicologo(#(-id_cita,-id_psicologo))
create table cita_psicologo(
id_cita int unsigned,
id_psicologo int unsigned,
foreign key (id_cita) references cita (id),
foreign key (id_psicologo) references psicologo (id)
);
INSERT INTO cita_psicologo (id_cita,id_psicologo)
VALUES
  (1,1),
  (15,3),
  (4,4),
  (3,5),
  (11,2);
  
INSERT INTO cita_psicologo (id_cita,id_psicologo)
VALUES
  (1,2),
  (6,2),
  (3,1),
  (4,5), 
  (7,5);
  
INSERT INTO cita_psicologo (id_cita,id_psicologo)
VALUES
  (1,2),
  (15,2),
  (4,1),
  (11,5),
  (10,3);
  
  INSERT INTO cita_psicologo (id_cita,id_psicologo)
VALUES
  (1,1),
  (10,2),
  (3,2),
  (6,2),
  (6,1);

  
#cita_paciente(#(-id_cita,-id_paciente))
create table cita_paciente(
id_cita int unsigned,
id_paciente int unsigned,
foreign key (id_cita) references cita (id),
foreign key (id_paciente) references paciente (id)
);

INSERT INTO cita_paciente (id_cita,id_paciente)
VALUES
  (6,3),
  (4,5),
  (9,11),
  (5,7),
  (1,5);
INSERT INTO cita_paciente (id_cita,id_paciente)
VALUES
  (9,7),
  (14,3),
  (10,11),
  (8,14),
  (10,9);


#tfl(#id,tlf_psicologo,-id_psicologo,-id_tlf_psicologo)
create table tlf_psicologo(
id int unsigned primary key auto_increment,
tlf_psicologo varchar (50),
id_psicologo int unsigned,
foreign key (id_psicologo) references psicologo (id)
);


INSERT INTO tlf_psicologo (tlf_psicologo,id_psicologo)
VALUES
  ("(896) 752-7996",4),
  ("(559) 436-4138",1),
  ("1-757-327-7702",5),
  ("1-729-309-6383",3),
  ("(485) 368-0165",2);


#tarifa(#id,fecha_inicio,fecha_final,total_pago,-id_psicologo)
create table tarifa(
id int unsigned primary key auto_increment,
fecha_inicio datetime,
fecha_final datetime,
total_pago varchar(20),
id_psicologo int unsigned,
foreign key (id_psicologo) references psicologo (id)
);
INSERT INTO tarifa (fecha_inicio,fecha_final,total_pago,id_psicologo)
VALUES
  ("2022-01-10 15:32:46","2021-11-30 16:14:34","$275.48","4"),
  ("2022-09-02 19:53:05","2023-04-26 14:54:00","$925.29","1"),
  ("2022-12-25 18:33:52","2021-11-09 01:27:07","$1,597.73","2"),
  ("2022-03-31 10:38:06","2022-02-20 16:29:08","$1,998.13","5"),
  ("2021-12-27 04:30:18","2023-04-10 13:01:05","$166.50","3");





#tarifa_psicologo(#(-id_tarifa,-id_psicologo))
create table tarifa_psicologo(
id_tarifa int unsigned,
foreign key(id_tarifa) references tarifa (id),
id_psicologo int unsigned,
foreign key (id_psicologo) references psicologo (id)
);
INSERT INTO tarifa_psicologo (id_tarifa,id_psicologo)
VALUES
  (2,3),
  (5,3),
  (1,4),
  (5,3),
  (4,2);

INSERT INTO tarifa_psicologo (id_tarifa,id_psicologo)
VALUES
  (1,5),
  (5,3),
  (3,2),
  (5,3),
  (5,4);
  
  INSERT INTO tarifa_psicologo (id_tarifa,id_psicologo)
VALUES
  (2,3),
  (5,3),
  (3,3),
  (2,1),
  (3,4);



#registro(#id,fecha_inicio,fecha_final,transtorno_paciente,codigo_paciente,motivo_consulta,-id_psicologo)
create table registro(
id int unsigned primary key auto_increment,
fecha_inicio date not null,
fecha_final date not null,
transtorno_paciente varchar (50) not null,
codigo_paciente float,
motivo_consulta varchar (50),
id_psicologo int unsigned,
foreign key (id_psicologo) references psicologo (id)
);

INSERT INTO registro (fecha_inicio,fecha_final,transtorno_paciente,codigo_paciente,motivo_consulta,id_psicologo)
VALUES
  ("2022-01-10 15:32:46","2021-11-30 16:14:34","adicciones",8562,"pede sagittis","1"),
  ("2022-09-02 19:53:05","2023-04-26 14:54:00","depresivos",7565,"posuere at, velit. Cras lorem lorem, luctus ut","5"),
  ("2022-12-25 18:33:52","2021-11-09 01:27:07","otros",9516,"nunc nulla vulputate","4"),
  ("2022-03-31 10:38:06","2022-02-20 16:29:08","alimenticios",2206,"pede sagittis augue, eu tempor erat neque non","2"),
  ("2021-12-27 04:30:18","2023-04-10 13:01:05","bipolar",1963,"vulputate ullamcorper magna. Sed eu","3");

#registro_psicologo(#(-id_registro,-id_psicologo))
create table registro_psicologo(
id_registro int unsigned,
foreign key (id_registro) references registro (id),
id_psicologo int unsigned,
foreign key (id_psicologo) references psicologo (id)
);
INSERT INTO registro_psicologo (id_registro,id_psicologo)
VALUES
  (3,4),
  (3,1),
  (3,5),
  (2,3),
  (4,2);
  INSERT INTO registro_psicologo (id_registro,id_psicologo)
VALUES
  (4,2),
  (2,2),
  (4,4),
  (3,3),
  (3,2);
  INSERT INTO registro_psicologo (id_registro,id_psicologo)
VALUES
  (3,3),
  (4,1),
  (3,3),
  (4,3),
  (4,4);
  INSERT INTO registro_psicologo (id_registro,id_psicologo)
VALUES
  (2,5),
  (4,3),
  (3,3),
  (2,1),
  (4,3);
  INSERT INTO registro_psicologo (id_registro,id_psicologo)
VALUES
  (1,4),
  (2,4),
  (3,5),
  (5,5),
  (1,2);





