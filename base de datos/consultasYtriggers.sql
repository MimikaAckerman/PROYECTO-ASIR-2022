# 1) dame todos los nombres de los pacientes y que psicologo los llevan
	select paciente.nombre,psicologo_acargo
    from paciente;
    

    
# 3) dime cual es la tarifa mas alta y a que psicologo pertenece
	select max(total_pago),psicologo.nombre
    from tarifa
    join psicologo on tarifa.id_psicologo=psicologo.id
    group by psicologo.nombre limit 1;
    
# 4) dime cual es el psicologo que tiene la tarifa mas baja
	select min(total_pago),psicologo.nombre
    from tarifa
    join psicologo on tarifa.id_psicologo=psicologo.id
    group by psicologo.nombre  limit 1;
    
# 5) dime quien es el psicologo que mas citas tiene en que tipo de plataforma
	select psicologo.nombre,count(*) as 'cuenta',cita.tipo_plataforma
	from cita
	join psicologo on cita.id_psicologo=psicologo.id
	group by cita.tipo_plataforma
	having count(cita.tipo_plataforma);
    

# 7) dime en los registros cual es el mas antiguo y quien fue el psicologo que lo llevo junto con su motivo y transtorno del paciente
	select registro.fecha_final,psicologo.nombre
    from registro
    join psicologo on registro.id_psicologo=psicologo.id
    order by registro.fecha_final asc limit 1;
    
# 8) cual es el paciente mas joven y que psicologo lo lleva
	select paciente.nombre,min(paciente.fecha_nacimiento),paciente.psicologo_acargo
    from paciente_psicologo
    join paciente on paciente_psicologo.id_paciente=paciente.id
    join psicologo on paciente_psicologo.id_psicologo=psicologo.id
    order by paciente.fecha_nacimiento asc;
    
# 9) dime el total de citas para mañana junto con su codigo , paciente y psicologo

	select count(cita.fecha_inicio),cita.fecha_inicio,psicologo.nombre
    from cita
    join psicologo on cita.id_psicologo=psicologo.id
    join paciente on cita.id_paciente=paciente.id
	where cita.fecha_inicio BETWEEN '2021-10-01' AND '2021-10-31'
    group by psicologo.nombre;


####################################################PROCEDIMIENTOS Y FUNCIONES ###############################################

#1.	Crea un procedimiento para añadir un paciente a la base de datos, si el dato ya existe me tendrá que visualizar un mensaje de error. (los datos que tengo parámetro) 

	delimiter $$
	create procedure p1(pid int,pnombre varchar(20),papellidos varchar(20),pmail varchar (30), 
    pfecha_nacimiento datetime,pnum_cuenta varchar(50),pdni char(50),ppsicologo_acargo varchar (20),ptlf_paciente varchar (20),pprocedencia varchar (20))
	begin
	if not exists (select id from paciente where id=pid)
	then
	insert into paciente
	(id,nombre,apellido,mail,fecha_nacimiento,num_cuenta,dni,psicologo_acargo,tlf_paciente,procedencia) 
		values (pid,pnombre,papellidos,pmail,pfecha_nacimiento,pnum_cuenta,pdni,ppsicologo_acargo,ptlf_paciente,pprocedencia);
	else
	select "error ya existe";
	end if;
	end;$$
		
# Crea un procedimiento que visualice todos los datos de la tabla socios
	delimiter $$
	create procedure p2()
	begin
	select* from paciente;
	end;$$

	call p2();

/*5.	Cuántos pacientes residen en cada población que es 
introducida como parámetro (1.5p)*/
	delimiter $$
	create procedure p3(plugar varchar(20))
	begin
	select count(procedencia) from paciente
	where procedencia = plugar;
	end;$$

	call p3('TULA');
    
-- 3- (1 pto) Función que me dice el psicologo que lleva mas consultas

delimiter $$
create function ejer1(pnombre varchar(50))
returns varchar(50)
begin
return(
		select count(paciente.nombre) 
		from paciente
		join paciente_psicologo on paciente.id=paciente_psicologo.id_paciente
		join psicologo on paciente_psicologo.id_psicologo = psicologo.id
		where psicologo.nombre=pnombre);

end;$$
 
select ejer1('Victor Lopez-Brea');
   
   