# Postgres
PROYECTO GEOLOCALIZACIÓN

![policiacool](https://github.com/Utopiared/Postgres/assets/156848411/e25357c9-5d55-4666-be10-214dd14eac4f)

Autora: Aura Nicte-Ha Pech Reyes.

### Archivo de BACKUP de la base de datos

 "C:\Users\damfa\Downloads\cursopostgres\bd_geolocalizacion.sql"

### Descripción de la base de datos

La base de datos del proyecto de Geolocalización surge de la necesidad de dar seguridad al personal de la Guardia Nacional en actividades operativas, el proyecto no previene delitos, sin embargo teniendo la localización de personas que se encuentran adscritas a esta insitución, se podrá tener un control de seguridad con un aplicativo web, en el cuál el personal podrá ser monitoreado voluntariamente a través de una plataforma web su ubicación en tiempo real, con ayuda de la base datos, consultar su geolocalización, latitud, longitud, entre otros datos importantes que se almacenarán en las tablas creadas.


# Linea de Tiempo

![una linea bonita](https://github.com/Utopiared/Postgres/assets/156848411/541131ed-0e05-4243-a3a8-ae1f34e38f17)


	1.- 1986: Inicio del proyecto POSTGRES.
    2.- 1996: Renombramiento a PostgreSQL 6.0.
    3.- 2005: Lanzamiento de PostgreSQL 8.0 (soporte nativo para Windows).
    4.- 2010: PostgreSQL 9.0 (replicación streaming, Hot Standby)
    5.- 2016: PostgreSQL 9.6 (mejoras en paralelización de consultas)
    6.- 2020: PostgreSQL 13 (optimización de índices, nuevas características de seguridad)


# Diagrama Entidad - Relación 

![Diagrama](https://github.com/Utopiared/Postgres/assets/156848411/fd56c582-9515-41cc-93a6-232a784c7d55)


# Generacion de base de datos 

GENERACIÓN DE TABLAS EN BASE DE DATOS.

BEGIN;


CREATE TABLE IF NOT EXISTS ubicacionpersona.cat_area_laboral
(
    direccion_general_inteligencia character varying COLLATE pg_catalog."default" NOT NULL,
    direccion_general_investigacion character varying COLLATE pg_catalog."default" NOT NULL,
    direccion_general_seguridad_carreteras_instalaciones character varying COLLATE pg_catalog."default" NOT NULL,
    direccion_general_cientifica character varying COLLATE pg_catalog."default" NOT NULL,
    direccion_general_antidrogas character varying COLLATE pg_catalog."default" NOT NULL,
    direccion_general_transportes_aereos character varying COLLATE pg_catalog."default" NOT NULL,
    direccion_general_seguridad_procesal character varying COLLATE pg_catalog."default" NOT NULL,
    id_nombre_laboral integer NOT NULL DEFAULT nextval('ubicacionpersona.tbl_area_laboral_id_nombre_laboral_seq'::regclass),
    id_personas integer NOT NULL,
    CONSTRAINT tbl_area_laboral_pkey PRIMARY KEY (id_nombre_laboral)
);

CREATE TABLE IF NOT EXISTS ubicacionpersona.tbl_acceso_usuario
(
    contrasena character varying COLLATE pg_catalog."default" NOT NULL,
    salt character varying COLLATE pg_catalog."default" NOT NULL,
    nombre_usuario character varying COLLATE pg_catalog."default" NOT NULL,
    id_acceso_usuario serial NOT NULL,
    id_persona serial NOT NULL,
    CONSTRAINT id_acceso_usuario PRIMARY KEY (id_acceso_usuario)
);

CREATE TABLE IF NOT EXISTS ubicacionpersona.tbl_bitacora_acceso
(
    id_usuario integer NOT NULL,
    accion character varying COLLATE pg_catalog."default" NOT NULL,
    id_bitacora integer NOT NULL,
    id_accesousu integer NOT NULL,
    id_bitacoraacceso serial NOT NULL,
    id_acceso_usuario integer NOT NULL,
    fecha date NOT NULL,
    hora character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tbl_bitacora_acceso_pkey PRIMARY KEY (id_bitacoraacceso)
);

CREATE TABLE IF NOT EXISTS ubicacionpersona.tbl_datos_telefono
(
    marca character varying COLLATE pg_catalog."default" NOT NULL,
    imei character varying COLLATE pg_catalog."default" NOT NULL,
    color character varying COLLATE pg_catalog."default" NOT NULL,
    modelo character varying COLLATE pg_catalog."default" NOT NULL,
    descripcion character varying COLLATE pg_catalog."default" NOT NULL,
    id_datos_telefono serial NOT NULL,
    id_personas integer NOT NULL,
    CONSTRAINT tbl_datos_telefono_pkey PRIMARY KEY (id_datos_telefono)
);

CREATE TABLE IF NOT EXISTS ubicacionpersona.tbl_liga_gps_personas
(
    id_persona_asignada integer NOT NULL,
    id_gps integer NOT NULL,
    id_estatus boolean NOT NULL,
    id_status integer NOT NULL,
    id_ligagpspersona serial NOT NULL,
    id_datos_telefono integer NOT NULL,
    CONSTRAINT tbl_liga_gps_personas_pkey PRIMARY KEY (id_ligagpspersona)
);

CREATE TABLE IF NOT EXISTS ubicacionpersona.tbl_personas
(
    nombre character varying COLLATE pg_catalog."default" NOT NULL,
    apellido_paterno character varying COLLATE pg_catalog."default" NOT NULL,
    apellido_materno character varying COLLATE pg_catalog."default" NOT NULL,
    curp character varying(20) COLLATE pg_catalog."default" NOT NULL,
    rfc character varying(14) COLLATE pg_catalog."default" NOT NULL,
    fecha_nacimiento date NOT NULL,
    id_persona serial NOT NULL,
    numero_celular numeric NOT NULL,
    CONSTRAINT tbl_personas_pkey PRIMARY KEY (id_persona)
);

CREATE TABLE IF NOT EXISTS ubicacionpersona.tbl_ubicacion_dispositivo
(
    latitud double precision NOT NULL,
    longitud double precision NOT NULL,
    id_gps integer NOT NULL,
    id_imei integer NOT NULL,
    id_ubicaciondispositivo serial NOT NULL,
    id_liga integer NOT NULL,
    hora character varying COLLATE pg_catalog."default" NOT NULL,
    fecha date NOT NULL,
    CONSTRAINT tbl_ubicacion_dispositivo_pkey PRIMARY KEY (id_ubicaciondispositivo)
);

ALTER TABLE IF EXISTS ubicacionpersona.cat_area_laboral
    ADD CONSTRAINT fk_id_personas FOREIGN KEY (id_personas)
    REFERENCES ubicacionpersona.tbl_personas (id_persona) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS ubicacionpersona.tbl_bitacora_acceso
    ADD CONSTRAINT fk_id_acceso_usuario FOREIGN KEY (id_acceso_usuario)
    REFERENCES ubicacionpersona.tbl_acceso_usuario (id_acceso_usuario) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_fk_id_acceso_usuario
    ON ubicacionpersona.tbl_bitacora_acceso(id_acceso_usuario);


ALTER TABLE IF EXISTS ubicacionpersona.tbl_datos_telefono
    ADD CONSTRAINT fk_id_persona FOREIGN KEY (id_personas)
    REFERENCES ubicacionpersona.tbl_personas (id_persona) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_fk_id_personas
    ON ubicacionpersona.tbl_datos_telefono(id_personas);


ALTER TABLE IF EXISTS ubicacionpersona.tbl_liga_gps_personas
    ADD CONSTRAINT fk_id_datos_telefono FOREIGN KEY (id_datos_telefono)
    REFERENCES ubicacionpersona.tbl_datos_telefono (id_datos_telefono) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_fk_id_datos_telefono
    ON ubicacionpersona.tbl_liga_gps_personas(id_datos_telefono);


ALTER TABLE IF EXISTS ubicacionpersona.tbl_ubicacion_dispositivo
    ADD CONSTRAINT fk_id_liga_gps FOREIGN KEY (id_liga)
    REFERENCES ubicacionpersona.tbl_liga_gps_personas (id_ligagpspersona) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_fk_id_liga_gps
    ON ubicacionpersona.tbl_ubicacion_dispositivo(id_liga);

END;



# Consultas SQL



# Configuración del entorno SQL

# Diseño de la base de datos

# Gestión de usuarios

# Creando una copia de seguridad

# Optimizando consultas

# Preparando un proceso de réplica y alta disponibilidad

# Preparando el monitoreo

# Migración de datos