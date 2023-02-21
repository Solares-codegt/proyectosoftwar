create database SOPORTE_TECNICO

use SOPORTE_TECNICO

create table usuario(
id_usuario int identity primary key,
usuario nvarchar(60),
password nvarchar(60)
)

create table grupo_tipo_soporte_tec(
id_grupo int identity primary key,
tipo_grupo nvarchar(60),
nombre_empresa nvarchar(60),
id_usuario int

)


create table roles(
id_roles int identity primary key,
tipo_rol nvarchar(60),
id_usuario int
)

create table niveles_acceso_roles(
id_niveles int identity primary key,
tipo_acceso nvarchar(60),
niveles_asignados int,
id_roles int

)

create table clientes(
id_clientes int identity primary key,
nombre_cliente nvarchar(60),
apellido_cliente nvarchar(60),
cui nvarchar(60),
nit nvarchar(60),
direccion nvarchar(60),
correoelectronico nvarchar(60),
)

create procedure sp_load
as begin
select * from clientes
End

--crud, create, read, update, delete
create procedure sp_create
@nombre nvarchar(15),
@apellido nvarchar(15),
@cui nvarchar(15),
@nit nvarchar(15),
@direccion nvarchar(15),
@correo nvarchar(15)
as begin
insert into clientes values (@nombre,@apellido,@cui,@nit,@direccion,@correo)
end

create procedure sd_read
@id int
as begin
select*from clientes where id_clientes=@id
end


select * from clientes;
create procedure sp_update
@id int,
@nombre nvarchar(15),
@apellido nvarchar(15),
@cui nvarchar(15),
@nit nvarchar(15),
@direccion nvarchar(15),
@correo nvarchar(15)
as begin
update clientes set nombre_cliente=@nombre,apellido_cliente=@apellido,cui=@cui,nit=@nit,direccion=@direccion,correoelectronico=@correo
where id_clientes=@id
end

create procedure sp_delete
@id int
as begin
delete from clientes where id_clientes=@id
end

create table telefono_cliente(
id_tele int identity primary key,
no_telefono int,
id_clientes int
)

create table companiatelefono_cliente(
id_comp int identity primary key,
companiatel nvarchar(60),
id_tele int
)


create table correo_clientes(
id_correo int identity primary key,
tipo_correo nvarchar(60),
nombre_correo nvarchar(60),
id_clientes int
)


create table ticker(
id_ticker int identity primary key,
codigo_ticker nvarchar(60),
fecha_creacion date,
id_usuario int,
id_clientes int,
id_bitac int

)

create table bitacora_ticker(
id_bitac int identity primary key,
horarios_atencion time,
lugar_atencion nvarchar(60)


)

create table comentario_ticker(
id_ticker_coment int identity primary key,
tipo_comentario nvarchar(60),
id_ticker int
)
create table categoria_ticker(
id_categoria int identity primary key,
tipo_categoria nvarchar(60),
id_ticker int 
)
create table detalle_ticker(
id_detalle_tick int identity primary key,
ticker_disponible int,
id_ticker int
)

create table estados_ticker(
id_estado int identity primary key,

tipo_estado char(60),
id_ticker int
)