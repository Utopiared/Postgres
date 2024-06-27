--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-06-27 16:20:26

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16771)
-- Name: ubicacionpersona; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ubicacionpersona;


ALTER SCHEMA ubicacionpersona OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 222 (class 1259 OID 16869)
-- Name: cat_area_laboral; Type: TABLE; Schema: ubicacionpersona; Owner: postgres
--

CREATE TABLE ubicacionpersona.cat_area_laboral (
    direccion_general_inteligencia character varying NOT NULL,
    direccion_general_investigacion character varying NOT NULL,
    direccion_general_seguridad_carreteras_instalaciones character varying NOT NULL,
    direccion_general_cientifica character varying NOT NULL,
    direccion_general_antidrogas character varying NOT NULL,
    direccion_general_transportes_aereos character varying NOT NULL,
    direccion_general_seguridad_procesal character varying NOT NULL,
    id_nombre_laboral integer NOT NULL,
    id_personas integer NOT NULL
);


ALTER TABLE ubicacionpersona.cat_area_laboral OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16781)
-- Name: tbl_acceso_usuario; Type: TABLE; Schema: ubicacionpersona; Owner: postgres
--

CREATE TABLE ubicacionpersona.tbl_acceso_usuario (
    contrasena character varying NOT NULL,
    salt character varying NOT NULL,
    nombre_usuario character varying NOT NULL,
    id_acceso_usuario integer NOT NULL,
    id_persona integer NOT NULL
);


ALTER TABLE ubicacionpersona.tbl_acceso_usuario OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 18045)
-- Name: tbl_acceso_usuario_id_acceso_usuario_seq; Type: SEQUENCE; Schema: ubicacionpersona; Owner: postgres
--

CREATE SEQUENCE ubicacionpersona.tbl_acceso_usuario_id_acceso_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ubicacionpersona.tbl_acceso_usuario_id_acceso_usuario_seq OWNER TO postgres;

--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 229
-- Name: tbl_acceso_usuario_id_acceso_usuario_seq; Type: SEQUENCE OWNED BY; Schema: ubicacionpersona; Owner: postgres
--

ALTER SEQUENCE ubicacionpersona.tbl_acceso_usuario_id_acceso_usuario_seq OWNED BY ubicacionpersona.tbl_acceso_usuario.id_acceso_usuario;


--
-- TOC entry 230 (class 1259 OID 18052)
-- Name: tbl_acceso_usuario_id_persona_seq; Type: SEQUENCE; Schema: ubicacionpersona; Owner: postgres
--

CREATE SEQUENCE ubicacionpersona.tbl_acceso_usuario_id_persona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ubicacionpersona.tbl_acceso_usuario_id_persona_seq OWNER TO postgres;

--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 230
-- Name: tbl_acceso_usuario_id_persona_seq; Type: SEQUENCE OWNED BY; Schema: ubicacionpersona; Owner: postgres
--

ALTER SEQUENCE ubicacionpersona.tbl_acceso_usuario_id_persona_seq OWNED BY ubicacionpersona.tbl_acceso_usuario.id_persona;


--
-- TOC entry 225 (class 1259 OID 17047)
-- Name: tbl_area_laboral_id_nombre_laboral_seq; Type: SEQUENCE; Schema: ubicacionpersona; Owner: postgres
--

CREATE SEQUENCE ubicacionpersona.tbl_area_laboral_id_nombre_laboral_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ubicacionpersona.tbl_area_laboral_id_nombre_laboral_seq OWNER TO postgres;

--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 225
-- Name: tbl_area_laboral_id_nombre_laboral_seq; Type: SEQUENCE OWNED BY; Schema: ubicacionpersona; Owner: postgres
--

ALTER SEQUENCE ubicacionpersona.tbl_area_laboral_id_nombre_laboral_seq OWNED BY ubicacionpersona.cat_area_laboral.id_nombre_laboral;


--
-- TOC entry 218 (class 1259 OID 16784)
-- Name: tbl_bitacora_acceso; Type: TABLE; Schema: ubicacionpersona; Owner: postgres
--

CREATE TABLE ubicacionpersona.tbl_bitacora_acceso (
    id_usuario integer NOT NULL,
    accion character varying NOT NULL,
    id_bitacora integer NOT NULL,
    id_accesousu integer NOT NULL,
    id_bitacoraacceso integer NOT NULL,
    id_acceso_usuario integer NOT NULL,
    fecha date NOT NULL,
    hora character varying NOT NULL
);


ALTER TABLE ubicacionpersona.tbl_bitacora_acceso OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 17107)
-- Name: tbl_bitacora_acceso_id_bitacoraacceso_seq; Type: SEQUENCE; Schema: ubicacionpersona; Owner: postgres
--

CREATE SEQUENCE ubicacionpersona.tbl_bitacora_acceso_id_bitacoraacceso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ubicacionpersona.tbl_bitacora_acceso_id_bitacoraacceso_seq OWNER TO postgres;

--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 228
-- Name: tbl_bitacora_acceso_id_bitacoraacceso_seq; Type: SEQUENCE OWNED BY; Schema: ubicacionpersona; Owner: postgres
--

ALTER SEQUENCE ubicacionpersona.tbl_bitacora_acceso_id_bitacoraacceso_seq OWNED BY ubicacionpersona.tbl_bitacora_acceso.id_bitacoraacceso;


--
-- TOC entry 221 (class 1259 OID 16856)
-- Name: tbl_datos_telefono; Type: TABLE; Schema: ubicacionpersona; Owner: postgres
--

CREATE TABLE ubicacionpersona.tbl_datos_telefono (
    marca character varying NOT NULL,
    imei character varying NOT NULL,
    color character varying NOT NULL,
    modelo character varying NOT NULL,
    descripcion character varying NOT NULL,
    id_datos_telefono integer NOT NULL,
    id_personas integer NOT NULL
);


ALTER TABLE ubicacionpersona.tbl_datos_telefono OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17066)
-- Name: tbl_datos_telefono_id_datos_telefono_seq; Type: SEQUENCE; Schema: ubicacionpersona; Owner: postgres
--

CREATE SEQUENCE ubicacionpersona.tbl_datos_telefono_id_datos_telefono_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ubicacionpersona.tbl_datos_telefono_id_datos_telefono_seq OWNER TO postgres;

--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 226
-- Name: tbl_datos_telefono_id_datos_telefono_seq; Type: SEQUENCE OWNED BY; Schema: ubicacionpersona; Owner: postgres
--

ALTER SEQUENCE ubicacionpersona.tbl_datos_telefono_id_datos_telefono_seq OWNED BY ubicacionpersona.tbl_datos_telefono.id_datos_telefono;


--
-- TOC entry 220 (class 1259 OID 16793)
-- Name: tbl_liga_gps_personas; Type: TABLE; Schema: ubicacionpersona; Owner: postgres
--

CREATE TABLE ubicacionpersona.tbl_liga_gps_personas (
    id_persona_asignada integer NOT NULL,
    id_gps integer NOT NULL,
    id_estatus boolean NOT NULL,
    id_status integer NOT NULL,
    id_ligagpspersona integer NOT NULL,
    id_datos_telefono integer NOT NULL
);


ALTER TABLE ubicacionpersona.tbl_liga_gps_personas OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17020)
-- Name: tbl_liga_gps_personas_id_ligagpspersona_seq; Type: SEQUENCE; Schema: ubicacionpersona; Owner: postgres
--

CREATE SEQUENCE ubicacionpersona.tbl_liga_gps_personas_id_ligagpspersona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ubicacionpersona.tbl_liga_gps_personas_id_ligagpspersona_seq OWNER TO postgres;

--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 223
-- Name: tbl_liga_gps_personas_id_ligagpspersona_seq; Type: SEQUENCE OWNED BY; Schema: ubicacionpersona; Owner: postgres
--

ALTER SEQUENCE ubicacionpersona.tbl_liga_gps_personas_id_ligagpspersona_seq OWNED BY ubicacionpersona.tbl_liga_gps_personas.id_ligagpspersona;


--
-- TOC entry 216 (class 1259 OID 16775)
-- Name: tbl_personas; Type: TABLE; Schema: ubicacionpersona; Owner: postgres
--

CREATE TABLE ubicacionpersona.tbl_personas (
    nombre character varying NOT NULL,
    apellido_paterno character varying NOT NULL,
    apellido_materno character varying NOT NULL,
    curp character varying(20) NOT NULL,
    rfc character varying(14) NOT NULL,
    fecha_nacimiento date NOT NULL,
    id_persona integer NOT NULL,
    numero_celular numeric NOT NULL
);


ALTER TABLE ubicacionpersona.tbl_personas OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17028)
-- Name: tbl_personas_id_persona_seq; Type: SEQUENCE; Schema: ubicacionpersona; Owner: postgres
--

CREATE SEQUENCE ubicacionpersona.tbl_personas_id_persona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ubicacionpersona.tbl_personas_id_persona_seq OWNER TO postgres;

--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 224
-- Name: tbl_personas_id_persona_seq; Type: SEQUENCE OWNED BY; Schema: ubicacionpersona; Owner: postgres
--

ALTER SEQUENCE ubicacionpersona.tbl_personas_id_persona_seq OWNED BY ubicacionpersona.tbl_personas.id_persona;


--
-- TOC entry 219 (class 1259 OID 16787)
-- Name: tbl_ubicacion_dispositivo; Type: TABLE; Schema: ubicacionpersona; Owner: postgres
--

CREATE TABLE ubicacionpersona.tbl_ubicacion_dispositivo (
    latitud double precision NOT NULL,
    longitud double precision NOT NULL,
    id_gps integer NOT NULL,
    id_imei integer NOT NULL,
    id_ubicaciondispositivo integer NOT NULL,
    id_liga integer NOT NULL,
    hora character varying NOT NULL,
    fecha date NOT NULL
);


ALTER TABLE ubicacionpersona.tbl_ubicacion_dispositivo OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17076)
-- Name: tbl_ubicacion_dispositivo_id_ubicaciondispositivo_seq; Type: SEQUENCE; Schema: ubicacionpersona; Owner: postgres
--

CREATE SEQUENCE ubicacionpersona.tbl_ubicacion_dispositivo_id_ubicaciondispositivo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ubicacionpersona.tbl_ubicacion_dispositivo_id_ubicaciondispositivo_seq OWNER TO postgres;

--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 227
-- Name: tbl_ubicacion_dispositivo_id_ubicaciondispositivo_seq; Type: SEQUENCE OWNED BY; Schema: ubicacionpersona; Owner: postgres
--

ALTER SEQUENCE ubicacionpersona.tbl_ubicacion_dispositivo_id_ubicaciondispositivo_seq OWNED BY ubicacionpersona.tbl_ubicacion_dispositivo.id_ubicaciondispositivo;


--
-- TOC entry 4727 (class 2604 OID 17048)
-- Name: cat_area_laboral id_nombre_laboral; Type: DEFAULT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.cat_area_laboral ALTER COLUMN id_nombre_laboral SET DEFAULT nextval('ubicacionpersona.tbl_area_laboral_id_nombre_laboral_seq'::regclass);


--
-- TOC entry 4721 (class 2604 OID 18046)
-- Name: tbl_acceso_usuario id_acceso_usuario; Type: DEFAULT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_acceso_usuario ALTER COLUMN id_acceso_usuario SET DEFAULT nextval('ubicacionpersona.tbl_acceso_usuario_id_acceso_usuario_seq'::regclass);


--
-- TOC entry 4722 (class 2604 OID 18053)
-- Name: tbl_acceso_usuario id_persona; Type: DEFAULT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_acceso_usuario ALTER COLUMN id_persona SET DEFAULT nextval('ubicacionpersona.tbl_acceso_usuario_id_persona_seq'::regclass);


--
-- TOC entry 4723 (class 2604 OID 17108)
-- Name: tbl_bitacora_acceso id_bitacoraacceso; Type: DEFAULT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_bitacora_acceso ALTER COLUMN id_bitacoraacceso SET DEFAULT nextval('ubicacionpersona.tbl_bitacora_acceso_id_bitacoraacceso_seq'::regclass);


--
-- TOC entry 4726 (class 2604 OID 17067)
-- Name: tbl_datos_telefono id_datos_telefono; Type: DEFAULT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_datos_telefono ALTER COLUMN id_datos_telefono SET DEFAULT nextval('ubicacionpersona.tbl_datos_telefono_id_datos_telefono_seq'::regclass);


--
-- TOC entry 4725 (class 2604 OID 17021)
-- Name: tbl_liga_gps_personas id_ligagpspersona; Type: DEFAULT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_liga_gps_personas ALTER COLUMN id_ligagpspersona SET DEFAULT nextval('ubicacionpersona.tbl_liga_gps_personas_id_ligagpspersona_seq'::regclass);


--
-- TOC entry 4720 (class 2604 OID 17029)
-- Name: tbl_personas id_persona; Type: DEFAULT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_personas ALTER COLUMN id_persona SET DEFAULT nextval('ubicacionpersona.tbl_personas_id_persona_seq'::regclass);


--
-- TOC entry 4724 (class 2604 OID 17077)
-- Name: tbl_ubicacion_dispositivo id_ubicaciondispositivo; Type: DEFAULT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_ubicacion_dispositivo ALTER COLUMN id_ubicaciondispositivo SET DEFAULT nextval('ubicacionpersona.tbl_ubicacion_dispositivo_id_ubicaciondispositivo_seq'::regclass);


--
-- TOC entry 4906 (class 0 OID 16869)
-- Dependencies: 222
-- Data for Name: cat_area_laboral; Type: TABLE DATA; Schema: ubicacionpersona; Owner: postgres
--

COPY ubicacionpersona.cat_area_laboral (direccion_general_inteligencia, direccion_general_investigacion, direccion_general_seguridad_carreteras_instalaciones, direccion_general_cientifica, direccion_general_antidrogas, direccion_general_transportes_aereos, direccion_general_seguridad_procesal, id_nombre_laboral, id_personas) FROM stdin;
\.


--
-- TOC entry 4901 (class 0 OID 16781)
-- Dependencies: 217
-- Data for Name: tbl_acceso_usuario; Type: TABLE DATA; Schema: ubicacionpersona; Owner: postgres
--

COPY ubicacionpersona.tbl_acceso_usuario (contrasena, salt, nombre_usuario, id_acceso_usuario, id_persona) FROM stdin;
aaazx	ASASA	asasa	8	8
ggsv 	cccc	aaa	7	7
fgggh	ghghghj	jjlm	6	6
l,vmv	mclsñ	asass	5	5
c.-.v	kdmlsmc	slmldm	4	4
lksklnk	cdnknc	sxanlks	3	3
llknlksndlc\n	sdndnk	asknksk	2	2
kjdfhjkfhsdj	ksdbdjkd	aljssdljajl\n	1	1
\.


--
-- TOC entry 4902 (class 0 OID 16784)
-- Dependencies: 218
-- Data for Name: tbl_bitacora_acceso; Type: TABLE DATA; Schema: ubicacionpersona; Owner: postgres
--

COPY ubicacionpersona.tbl_bitacora_acceso (id_usuario, accion, id_bitacora, id_accesousu, id_bitacoraacceso, id_acceso_usuario, fecha, hora) FROM stdin;
7	advcv	7	7	7	7	2025-08-12	01:00
6	asdasd	6	6	6	6	2025-04-07	01:00
5	dsdadas	5	5	5	5	2025-02-18	01:00
4	sdfsdfd	4	4	4	4	2024-11-03	01:00
3	sfd	3	3	3	3	2024-09-22	01:00
2	sdfsdfs	2	2	2	2	2024-07-15	01:00
1	clcmmlsl	1	1	1	1	2024-05-01	00:00
\.


--
-- TOC entry 4905 (class 0 OID 16856)
-- Dependencies: 221
-- Data for Name: tbl_datos_telefono; Type: TABLE DATA; Schema: ubicacionpersona; Owner: postgres
--

COPY ubicacionpersona.tbl_datos_telefono (marca, imei, color, modelo, descripcion, id_datos_telefono, id_personas) FROM stdin;
Sony	987654321012345	Blanco	Xperia 1 II	Pantalla 4K y audio de alta fidelidad.	6	26
Motorola	246813579031452	Rojo	Moto G8	Duradero y resistente	5	25
Huawei	135792468024680	Dorado	P40 Pro	Cámara excepcional	4	24
Xiaomi	543210987654321	 Azul	Redmi Note 10	Excelente relación calidad-precio.	3	23
Apple	987654321098765	Plateado	iPhone 12	Elegante y potente.	2	22
Samsung	123456789012345	Negro	Galaxy S20	Teléfono inteligente de alta gama.	1	1
\.


--
-- TOC entry 4904 (class 0 OID 16793)
-- Dependencies: 220
-- Data for Name: tbl_liga_gps_personas; Type: TABLE DATA; Schema: ubicacionpersona; Owner: postgres
--

COPY ubicacionpersona.tbl_liga_gps_personas (id_persona_asignada, id_gps, id_estatus, id_status, id_ligagpspersona, id_datos_telefono) FROM stdin;
6	6	t	6	26	6
5	5	t	5	25	5
4	4	t	4	24	4
3	3	t	3	23	3
2	2	t	2	22	2
1	1	t	1	1	1
\.


--
-- TOC entry 4900 (class 0 OID 16775)
-- Dependencies: 216
-- Data for Name: tbl_personas; Type: TABLE DATA; Schema: ubicacionpersona; Owner: postgres
--

COPY ubicacionpersona.tbl_personas (nombre, apellido_paterno, apellido_materno, curp, rfc, fecha_nacimiento, id_persona, numero_celular) FROM stdin;
Manuela Julia	Conde	Barrientos	macb475231jjjlpmq80	macb475231m9l	2001-02-12	1	55896424
Lyssa	Drew	Pomphrett	PERA951001MCCCYR08	PERA951001I6A	2023-07-02	22	666923396
Eileen	Jacmard	Hoyes	PERA951001MCCCYR08	PERA951001I6A	2024-01-07	23	1718344139
Arlina	Tant	Golsthorp	PERA951001MCCCYR08	PERA951001I6A	2023-07-10	24	1488604746
Roseanne	Earle	Wishkar	PERA951001MCCCYR08	PERA951001I6A	2023-08-14	25	6720376594
Dallon	Floyd	Tinton	PERA951001MCCCYR08	PERA951001I6A	2024-06-07	26	5301402749
Giana	Vedmore	Cowe	PERA951001MCCCYR08	PERA951001I6A	2023-07-27	27	8347530270
Balduin	Joesbury	Posvner	PERA951001MCCCYR08	PERA951001I6A	2024-06-09	28	3236954590
Gwenore	Leavens	Paal	PERA951001MCCCYR08	PERA951001I6A	2024-03-28	29	4232494561
Elane	Collelton	Staries	PERA951001MCCCYR08	PERA951001I6A	2023-09-27	30	642690758
Jobina	Twinborough	Jedrzejkiewicz	PERA951001MCCCYR08	PERA951001I6A	2024-01-22	31	310875560
Cointon	Barbary	Cubbinelli	PERA951001MCCCYR08	PERA951001I6A	2023-10-25	32	2851337289
Roderic	Robillart	Iveans	PERA951001MCCCYR08	PERA951001I6A	2023-09-03	33	604323107
Batsheva	Victoria	Doylend	PERA951001MCCCYR08	PERA951001I6A	2024-01-07	34	9627980196
Neilla	Parysowna	Scothern	PERA951001MCCCYR08	PERA951001I6A	2023-10-08	35	3222686491
Madelene	Sier	Nann	PERA951001MCCCYR08	PERA951001I6A	2024-04-28	36	7040170221
Clea	Vedeneev	Siggin	PERA951001MCCCYR08	PERA951001I6A	2023-12-09	37	9825318961
Kareem	Whiscard	Roughey	PERA951001MCCCYR08	PERA951001I6A	2024-05-07	38	455967032
Kennie	Brayford	Alldre	PERA951001MCCCYR08	PERA951001I6A	2023-10-22	39	2494304873
Linn	Coxhead	Leneve	PERA951001MCCCYR08	PERA951001I6A	2023-07-06	40	7900877762
Reta	Cowhig	Paolicchi	PERA951001MCCCYR08	PERA951001I6A	2023-07-30	41	9937978149
Carter	Vedekhin	Dalgety	PERA951001MCCCYR08	PERA951001I6A	2024-01-25	42	754206785
Paul	Marriott	Ellerington	PERA951001MCCCYR08	PERA951001I6A	2023-09-08	43	234567899
Julieta	Leavold	Ottawell	PERA951001MCCCYR08	PERA951001I6A	2024-01-24	44	7450318334
Imelda	Thaxter	Gearing	PERA951001MCCCYR08	PERA951001I6A	2024-02-27	45	9247204658
Gilberto	Capp	Janowicz	PERA951001MCCCYR08	PERA951001I6A	2023-11-12	46	8434523434
Johnnie	Raggatt	Perfect	PERA951001MCCCYR08	PERA951001I6A	2023-11-09	47	9233686949
Emmie	Durran	Sancroft	PERA951001MCCCYR08	PERA951001I6A	2024-04-23	48	5210683346
Birk	Spriggs	Royans	PERA951001MCCCYR08	PERA951001I6A	2024-06-23	49	1178599205
Rupert	Blunsom	Meates	PERA951001MCCCYR08	PERA951001I6A	2023-09-10	50	8713733478
Cordy	Meininking	Boerder	PERA951001MCCCYR08	PERA951001I6A	2024-01-03	51	5931438629
Daria	Blown	Andreichik	PERA951001MCCCYR08	PERA951001I6A	2023-06-28	52	9468754278
Heddi	Yakovl	Minchi	PERA951001MCCCYR08	PERA951001I6A	2024-02-28	53	3859108107
Kilian	Maidment	Franzelini	PERA951001MCCCYR08	PERA951001I6A	2023-11-17	54	6434292473
Baxter	Pittam	Katzmann	PERA951001MCCCYR08	PERA951001I6A	2024-02-18	55	9088418470
Lane	Olcot	Emslie	PERA951001MCCCYR08	PERA951001I6A	2024-02-13	56	8684438701
Franklyn	Barbisch	Epton	PERA951001MCCCYR08	PERA951001I6A	2023-09-16	57	6794450135
Bab	Newnham	Russan	PERA951001MCCCYR08	PERA951001I6A	2024-06-08	58	9228722088
Sherwin	Muccino	Lehrian	PERA951001MCCCYR08	PERA951001I6A	2024-05-14	59	4913580108
Wendel	Radish	Matuszinski	PERA951001MCCCYR08	PERA951001I6A	2023-10-30	60	4034249781
Alexa	Lindenbluth	Lafontaine	PERA951001MCCCYR08	PERA951001I6A	2024-02-13	61	3846592196
Dolf	Feehery	Wringe	PERA951001MCCCYR08	PERA951001I6A	2023-11-02	62	2273982631
Blair	Cloughton	MacDowal	PERA951001MCCCYR08	PERA951001I6A	2023-10-06	63	874687020
Ade	McGhie	Bearne	PERA951001MCCCYR08	PERA951001I6A	2023-10-16	64	7689788475
Modesta	Bisp	Cosford	PERA951001MCCCYR08	PERA951001I6A	2023-11-29	65	1742505783
Sullivan	Crate	Walkingshaw	PERA951001MCCCYR08	PERA951001I6A	2023-11-20	66	5165962105
Dietrich	Haddeston	Gloves	PERA951001MCCCYR08	PERA951001I6A	2023-10-11	67	251848728
Kirsteni	Rapley	Murdy	PERA951001MCCCYR08	PERA951001I6A	2024-01-14	68	5267839590
Happy	Callender	Biggen	PERA951001MCCCYR08	PERA951001I6A	2023-10-20	69	2363897366
Aylmer	Lutman	Trump	PERA951001MCCCYR08	PERA951001I6A	2024-02-23	70	3685474391
Herta	Cliburn	Maurice	PERA951001MCCCYR08	PERA951001I6A	2023-11-25	71	8460335828
Alberto	Carletti	Lanston	PERA951001MCCCYR08	PERA951001I6A	2023-09-08	72	8587015990
Britni	Mardy	Konzel	PERA951001MCCCYR08	PERA951001I6A	2024-02-05	73	8350528524
Correy	Grigg	Robillart	PERA951001MCCCYR08	PERA951001I6A	2023-10-15	74	9145730601
Lowell	Cupitt	Copeman	PERA951001MCCCYR08	PERA951001I6A	2024-06-07	75	5361917133
Bekki	Bart	Grigori	PERA951001MCCCYR08	PERA951001I6A	2023-12-03	76	7384488125
Bancroft	Durkin	Ghidotti	PERA951001MCCCYR08	PERA951001I6A	2024-06-21	77	8892248847
Kalindi	Spark	Mc Ilory	PERA951001MCCCYR08	PERA951001I6A	2024-01-16	78	5893301811
Amalee	Vankeev	Turfrey	PERA951001MCCCYR08	PERA951001I6A	2023-09-05	79	9196588470
Alexander	Kun	Handforth	PERA951001MCCCYR08	PERA951001I6A	2023-11-06	80	3459636335
Hildy	Bernardoux	Radloff	PERA951001MCCCYR08	PERA951001I6A	2024-01-16	81	8801839499
Muffin	Soal	Woolford	PERA951001MCCCYR08	PERA951001I6A	2024-05-30	82	470099631
Libbi	Mogridge	Lissimore	PERA951001MCCCYR08	PERA951001I6A	2024-02-06	83	3611905380
Kirstyn	Larchiere	Bellhanger	PERA951001MCCCYR08	PERA951001I6A	2023-12-07	84	5481825082
Vincenz	Bartoszewicz	Sharrocks	PERA951001MCCCYR08	PERA951001I6A	2023-11-01	85	6959895472
Jo	Guerre	Aris	PERA951001MCCCYR08	PERA951001I6A	2024-02-23	86	5634996961
Addy	Pherps	Moorman	PERA951001MCCCYR08	PERA951001I6A	2024-06-24	87	1642707570
Linoel	Houlson	Fidgin	PERA951001MCCCYR08	PERA951001I6A	2024-06-04	88	3826475747
Adora	Sellors	Burchnall	PERA951001MCCCYR08	PERA951001I6A	2023-08-24	89	7356048906
Lucina	Wheaton	Dosdill	PERA951001MCCCYR08	PERA951001I6A	2024-03-01	90	8716893573
Mendie	Sergeaunt	Moorrud	PERA951001MCCCYR08	PERA951001I6A	2024-01-30	91	2779410817
Scarlett	Feldbaum	Roblett	PERA951001MCCCYR08	PERA951001I6A	2023-12-03	92	5140779609
Nappy	Cardenosa	Pritchett	PERA951001MCCCYR08	PERA951001I6A	2024-03-25	93	607149825
Ameline	Fozzard	Hessenthaler	PERA951001MCCCYR08	PERA951001I6A	2023-07-28	94	4071562811
Sapphire	Nary	Beamson	PERA951001MCCCYR08	PERA951001I6A	2024-06-09	95	627423787
Torey	Lexa	Fatkin	PERA951001MCCCYR08	PERA951001I6A	2023-11-08	96	2619050421
Cynthie	Bosden	Rapinett	PERA951001MCCCYR08	PERA951001I6A	2023-08-17	97	2987614977
Modesta	Breckwell	Kalinovich	PERA951001MCCCYR08	PERA951001I6A	2024-03-28	98	1365717739
Janessa	Godon	Deport	PERA951001MCCCYR08	PERA951001I6A	2024-01-27	99	3075971995
Silvia	Worrell	Chaffey	PERA951001MCCCYR08	PERA951001I6A	2024-03-02	100	2262646058
Joyce	Tummond	Frantz	PERA951001MCCCYR08	PERA951001I6A	2024-05-04	101	7592354330
Ebonee	Edds	Fidoe	PERA951001MCCCYR08	PERA951001I6A	2024-06-08	102	7231139205
Nerta	MacGregor	Jeroch	PERA951001MCCCYR08	PERA951001I6A	2023-09-09	103	756571685
Kylie	Rockliffe	Pilsworth	PERA951001MCCCYR08	PERA951001I6A	2023-09-09	104	7088872056
Alister	Currer	Kruschov	PERA951001MCCCYR08	PERA951001I6A	2023-08-04	105	6020658856
Cordelie	Liveing	Perez	PERA951001MCCCYR08	PERA951001I6A	2023-07-10	106	7106022578
Alysia	Congreave	Eckery	PERA951001MCCCYR08	PERA951001I6A	2023-08-30	107	9806481623
Holly	Housaman	Schneider	PERA951001MCCCYR08	PERA951001I6A	2023-10-15	108	465880886
Lemmie	Murdy	Norquay	PERA951001MCCCYR08	PERA951001I6A	2023-09-16	109	733673910
Peggi	Dundin	Coit	PERA951001MCCCYR08	PERA951001I6A	2024-05-13	110	1350689009
Thane	Ritchie	Wyllt	PERA951001MCCCYR08	PERA951001I6A	2024-04-05	111	2674986417
Reube	Le Barre	Pechard	PERA951001MCCCYR08	PERA951001I6A	2024-05-21	112	8721823812
Mellisa	Lorinez	Autie	PERA951001MCCCYR08	PERA951001I6A	2023-10-10	113	6450008636
Delphinia	Dangerfield	Raubenheimers	PERA951001MCCCYR08	PERA951001I6A	2024-06-25	114	6818966845
Lizabeth	Rowler	McGrann	PERA951001MCCCYR08	PERA951001I6A	2024-04-16	115	5237243096
Beth	Skip	Hartell	PERA951001MCCCYR08	PERA951001I6A	2024-02-09	116	412352699
Connie	Rushworth	Branigan	PERA951001MCCCYR08	PERA951001I6A	2024-05-09	117	4087013774
Bertram	Kinmond	Vassay	PERA951001MCCCYR08	PERA951001I6A	2023-11-09	118	2508132438
Tania	Bach	Cockshutt	PERA951001MCCCYR08	PERA951001I6A	2023-09-12	119	4102015191
Chester	Fleischer	Gowen	PERA951001MCCCYR08	PERA951001I6A	2023-07-01	120	5213136222
Briana	Moorey	MacMeeking	PERA951001MCCCYR08	PERA951001I6A	2023-08-27	121	9129197783
Linn	Seiffert	Shakespear	PERA951001MCCCYR08	PERA951001I6A	2024-01-21	122	712579354
Pierrette	Boyn	Karel	PERA951001MCCCYR08	PERA951001I6A	2023-10-01	123	9955025670
Madlen	Ervine	Yurikov	PERA951001MCCCYR08	PERA951001I6A	2023-09-20	124	8071465976
Sandy	Josh	Eck	PERA951001MCCCYR08	PERA951001I6A	2024-04-02	125	20524439
Freddie	Ferronel	Hapgood	PERA951001MCCCYR08	PERA951001I6A	2023-11-20	126	7682680334
Nessi	Bercher	Moorerud	PERA951001MCCCYR08	PERA951001I6A	2024-05-22	127	4164434864
Alvera	Fenty	Grime	PERA951001MCCCYR08	PERA951001I6A	2024-03-06	128	6267369455
Marina	Adenot	Rickards	PERA951001MCCCYR08	PERA951001I6A	2023-12-08	129	30997054
Elsie	Kippin	Grcic	PERA951001MCCCYR08	PERA951001I6A	2023-07-21	130	8099969715
Monica	Hewson	Waddams	PERA951001MCCCYR08	PERA951001I6A	2023-10-31	131	8474424739
Tirrell	Jone	Gourlay	PERA951001MCCCYR08	PERA951001I6A	2023-12-25	132	4008370218
Pia	Frill	Wimmer	PERA951001MCCCYR08	PERA951001I6A	2024-02-13	133	3712349718
Cash	Dyson	Jumont	PERA951001MCCCYR08	PERA951001I6A	2024-01-25	134	9102223767
Ellery	Phippen	Winfrey	PERA951001MCCCYR08	PERA951001I6A	2024-06-23	135	300857942
Joyann	Carpmile	Willett	PERA951001MCCCYR08	PERA951001I6A	2023-08-18	136	1215973934
Ruperto	Verbeek	Reeman	PERA951001MCCCYR08	PERA951001I6A	2023-07-31	137	3102965318
Mozelle	Levins	Dincke	PERA951001MCCCYR08	PERA951001I6A	2023-09-15	138	3916910191
Gwenora	Flury	Arnott	PERA951001MCCCYR08	PERA951001I6A	2023-09-01	139	9414695931
Heinrik	Coath	Francesch	PERA951001MCCCYR08	PERA951001I6A	2023-10-10	140	6153982042
Cammi	Twiddell	Offin	PERA951001MCCCYR08	PERA951001I6A	2023-10-09	141	4978977746
Timmy	Keeney	Jervis	PERA951001MCCCYR08	PERA951001I6A	2023-07-23	142	2749507812
Beulah	O'Leagham	Leebetter	PERA951001MCCCYR08	PERA951001I6A	2024-02-18	143	8362913223
Anne-marie	Hasnip	Ruslen	PERA951001MCCCYR08	PERA951001I6A	2024-01-28	144	1005871043
Coretta	Davenhill	Bestar	PERA951001MCCCYR08	PERA951001I6A	2024-06-20	145	7060511210
Maritsa	Gieraths	Slowly	PERA951001MCCCYR08	PERA951001I6A	2023-11-12	146	3971317189
Pattin	Eagers	Bontine	PERA951001MCCCYR08	PERA951001I6A	2024-04-15	147	7463448223
Jane	Grills	Bygraves	PERA951001MCCCYR08	PERA951001I6A	2023-12-22	148	7735489641
Prent	Pickavance	Kumaar	PERA951001MCCCYR08	PERA951001I6A	2023-12-27	149	6835227567
Kim	Hogbourne	Durrance	PERA951001MCCCYR08	PERA951001I6A	2024-06-10	150	9200964117
Roscoe	Cheson	Azema	PERA951001MCCCYR08	PERA951001I6A	2024-04-25	151	1420803905
Rickert	Naile	Greenham	PERA951001MCCCYR08	PERA951001I6A	2023-11-22	152	9090746250
Ann	Gigg	Sackett	PERA951001MCCCYR08	PERA951001I6A	2024-06-04	153	6594196472
Gisela	Guidoni	Borthwick	PERA951001MCCCYR08	PERA951001I6A	2024-01-03	154	4980021743
Leonardo	Parkes	Schout	PERA951001MCCCYR08	PERA951001I6A	2024-06-19	155	98030787
Willamina	Wilcock	Saunper	PERA951001MCCCYR08	PERA951001I6A	2023-08-16	156	6725138632
Robbert	Leindecker	Dwerryhouse	PERA951001MCCCYR08	PERA951001I6A	2023-08-21	157	2257774264
Ileana	Cluckie	Crosby	PERA951001MCCCYR08	PERA951001I6A	2023-11-18	158	205052851
Mechelle	Macquire	Naris	PERA951001MCCCYR08	PERA951001I6A	2023-11-26	159	3001308249
Adelbert	Saltmarshe	Gosforth	PERA951001MCCCYR08	PERA951001I6A	2023-10-28	160	1794539182
Lorry	Cawdell	Reape	PERA951001MCCCYR08	PERA951001I6A	2024-02-16	161	8323627959
Buiron	Feuell	Danielsohn	PERA951001MCCCYR08	PERA951001I6A	2023-12-26	162	3227078635
Ingrid	Verman	Millimoe	PERA951001MCCCYR08	PERA951001I6A	2023-07-14	163	9595777145
Gwyneth	Carlozzi	Kettlewell	PERA951001MCCCYR08	PERA951001I6A	2023-11-14	164	4164271388
Giovanni	Zarfati	Booy	PERA951001MCCCYR08	PERA951001I6A	2024-01-13	165	9059728645
Annabell	Tytcomb	Follows	PERA951001MCCCYR08	PERA951001I6A	2023-08-09	166	7805783306
Alta	Lukacs	Summerskill	PERA951001MCCCYR08	PERA951001I6A	2024-01-05	167	2146548584
Saba	Luddy	Brixey	PERA951001MCCCYR08	PERA951001I6A	2024-01-13	168	9400445288
Shayne	Stopford	Siegertsz	PERA951001MCCCYR08	PERA951001I6A	2023-10-31	169	9561175150
Marge	Kwietek	Dufaire	PERA951001MCCCYR08	PERA951001I6A	2024-01-05	170	8570308035
Jennie	Gourley	Dulson	PERA951001MCCCYR08	PERA951001I6A	2023-09-08	171	8161270805
Tisha	Peaddie	Stuehmeyer	PERA951001MCCCYR08	PERA951001I6A	2024-03-04	172	3485076740
Allissa	Auchinleck	Lipscombe	PERA951001MCCCYR08	PERA951001I6A	2023-11-15	173	7579292483
Kelila	Tring	Broddle	PERA951001MCCCYR08	PERA951001I6A	2023-12-31	174	2650870176
Bondy	Gallaher	Callum	PERA951001MCCCYR08	PERA951001I6A	2024-05-05	175	3441939867
Mozes	MacCartan	Garrod	PERA951001MCCCYR08	PERA951001I6A	2024-04-23	176	6730652381
Loleta	Goodswen	Lusher	PERA951001MCCCYR08	PERA951001I6A	2023-07-16	177	8232001399
Arabele	Marlowe	Munkley	PERA951001MCCCYR08	PERA951001I6A	2024-01-15	178	5524594532
Florence	Collard	Richemond	PERA951001MCCCYR08	PERA951001I6A	2024-06-18	179	9194187622
Catlin	Sommerland	Tarzey	PERA951001MCCCYR08	PERA951001I6A	2023-10-18	180	3911211406
Enrika	Siemon	Cicchitello	PERA951001MCCCYR08	PERA951001I6A	2024-04-12	181	1588152715
Preston	Garthshore	Paradine	PERA951001MCCCYR08	PERA951001I6A	2024-01-14	182	5849571337
Libbi	Steane	Tunkin	PERA951001MCCCYR08	PERA951001I6A	2024-04-28	183	4942220521
Nora	Whipple	Aizkovitch	PERA951001MCCCYR08	PERA951001I6A	2023-11-11	184	3116372276
Emmalynn	Melburg	Cron	PERA951001MCCCYR08	PERA951001I6A	2024-03-20	185	6731118877
Rabbi	Quartly	Marsland	PERA951001MCCCYR08	PERA951001I6A	2023-09-02	186	5949980603
Jacintha	Zelland	Rosoni	PERA951001MCCCYR08	PERA951001I6A	2023-09-22	187	1239962363
Irwinn	Greendale	Botton	PERA951001MCCCYR08	PERA951001I6A	2024-04-13	188	8454418911
Natalina	Withrop	Dudliston	PERA951001MCCCYR08	PERA951001I6A	2024-01-22	189	1935287117
Willi	Charnley	Conry	PERA951001MCCCYR08	PERA951001I6A	2023-11-30	190	3881250840
Kaiser	Fildery	Belvard	PERA951001MCCCYR08	PERA951001I6A	2023-09-14	191	8963452573
Evangelina	Behrens	McMillan	PERA951001MCCCYR08	PERA951001I6A	2023-11-09	192	898568269
Stan	Mulliner	Peschka	PERA951001MCCCYR08	PERA951001I6A	2024-04-08	193	6113626709
Kale	Tallon	Gever	PERA951001MCCCYR08	PERA951001I6A	2024-06-06	194	4450809955
Gipsy	Hanlin	Kyllford	PERA951001MCCCYR08	PERA951001I6A	2024-06-10	195	2323923315
Andria	Ferrarin	Furphy	PERA951001MCCCYR08	PERA951001I6A	2024-03-24	196	9164896854
Udale	Wetheril	Tritten	PERA951001MCCCYR08	PERA951001I6A	2024-03-12	197	9388220374
Portie	Pike	Snarie	PERA951001MCCCYR08	PERA951001I6A	2024-05-25	198	9375786218
Dodi	Bowery	Pues	PERA951001MCCCYR08	PERA951001I6A	2024-03-02	199	6808881529
Peggie	Rattray	Walkden	PERA951001MCCCYR08	PERA951001I6A	2023-11-13	200	3677096456
Missie	Ogley	Skelhorne	PERA951001MCCCYR08	PERA951001I6A	2024-02-11	201	4944040385
Darb	Bemrose	Matityahu	PERA951001MCCCYR08	PERA951001I6A	2024-04-13	202	7227514382
Stepha	Creigan	Lanfere	PERA951001MCCCYR08	PERA951001I6A	2024-01-20	203	8743371922
Yetta	Aubrey	Hrachovec	PERA951001MCCCYR08	PERA951001I6A	2023-12-31	204	4082211012
Hildagard	Baitey	Maraga	PERA951001MCCCYR08	PERA951001I6A	2024-06-03	205	1683059298
Finley	Livens	Orvis	PERA951001MCCCYR08	PERA951001I6A	2024-02-18	206	9641851403
Tripp	Jones	Coverlyn	PERA951001MCCCYR08	PERA951001I6A	2024-02-08	207	2219792145
Elizabet	Dilloway	Ficken	PERA951001MCCCYR08	PERA951001I6A	2024-04-18	208	633165522
Ame	Ivanenkov	Jerman	PERA951001MCCCYR08	PERA951001I6A	2024-06-08	209	445480599
Bendix	Cranstoun	Ginnally	PERA951001MCCCYR08	PERA951001I6A	2024-02-03	210	4558315244
Job	Chantillon	Wombwell	PERA951001MCCCYR08	PERA951001I6A	2024-02-06	211	2772805654
Sim	Caldayrou	Northcliffe	PERA951001MCCCYR08	PERA951001I6A	2023-07-14	212	8364574787
Elmore	Murden	Bolens	PERA951001MCCCYR08	PERA951001I6A	2024-04-27	213	4537099402
Tasia	Moline	Blaker	PERA951001MCCCYR08	PERA951001I6A	2024-05-01	214	5621929195
Augy	Lambard	Fidilis	PERA951001MCCCYR08	PERA951001I6A	2024-01-22	215	1231917946
Bartel	Volkers	Atwill	PERA951001MCCCYR08	PERA951001I6A	2024-01-19	216	4079405561
Garvin	Holdren	Radbourn	PERA951001MCCCYR08	PERA951001I6A	2023-08-18	217	8662731236
Charlotte	Posthill	Wannes	PERA951001MCCCYR08	PERA951001I6A	2023-11-29	218	4010117583
Arluene	Kempster	Van Velden	PERA951001MCCCYR08	PERA951001I6A	2023-11-18	219	5604753807
Jedidiah	Archbald	Fieldstone	PERA951001MCCCYR08	PERA951001I6A	2024-01-20	220	2862562823
Sol	Di Pietro	Giffon	PERA951001MCCCYR08	PERA951001I6A	2024-02-10	221	5483666968
Helen	Dudmarsh	Kyndred	PERA951001MCCCYR08	PERA951001I6A	2023-11-24	222	7791778122
Adriaens	Gatty	Clery	PERA951001MCCCYR08	PERA951001I6A	2023-10-26	223	528725548
Daphna	Evanson	Littlefield	PERA951001MCCCYR08	PERA951001I6A	2024-01-21	224	361891806
Wilfred	McGuffog	Goble	PERA951001MCCCYR08	PERA951001I6A	2023-09-02	225	2310821098
Oliviero	Crothers	Baudassi	PERA951001MCCCYR08	PERA951001I6A	2023-09-26	226	3586633963
Javier	Sabbin	Scottini	PERA951001MCCCYR08	PERA951001I6A	2023-08-30	227	9418397900
Devlen	Peyntue	Benini	PERA951001MCCCYR08	PERA951001I6A	2024-03-17	228	7385269427
Grace	Player	Easdon	PERA951001MCCCYR08	PERA951001I6A	2024-01-05	229	4200384965
Edi	Southerill	Mack	PERA951001MCCCYR08	PERA951001I6A	2023-09-06	230	6705612568
Carolee	MacRannell	Fairhead	PERA951001MCCCYR08	PERA951001I6A	2023-08-21	231	8013491196
Anjanette	Brear	Uttley	PERA951001MCCCYR08	PERA951001I6A	2024-04-24	232	7205191076
Delinda	Callacher	Marshal	PERA951001MCCCYR08	PERA951001I6A	2023-07-26	233	4610646137
Anne-corinne	Leathlay	Loadman	PERA951001MCCCYR08	PERA951001I6A	2023-11-03	234	2620130743
Rance	Gopsell	Simo	PERA951001MCCCYR08	PERA951001I6A	2023-08-30	235	8593637019
Rickie	Weems	Winfrey	PERA951001MCCCYR08	PERA951001I6A	2023-08-24	236	2042097527
Mead	Atwool	Wardhaw	PERA951001MCCCYR08	PERA951001I6A	2024-05-08	237	8815051988
Peder	Cisar	Nertney	PERA951001MCCCYR08	PERA951001I6A	2023-08-24	238	5903900976
Ollie	Ricketts	Boys	PERA951001MCCCYR08	PERA951001I6A	2023-09-28	239	896005720
Josefa	Fowley	Brunsdon	PERA951001MCCCYR08	PERA951001I6A	2023-08-26	240	1041059663
Abbie	Greendale	Belz	PERA951001MCCCYR08	PERA951001I6A	2023-08-02	241	8626619898
Kaja	Dobbie	Klaussen	PERA951001MCCCYR08	PERA951001I6A	2023-07-09	242	67337546
Hiram	Bowes	Corradetti	PERA951001MCCCYR08	PERA951001I6A	2024-06-16	243	4570745474
Olivero	Boddington	Ing	PERA951001MCCCYR08	PERA951001I6A	2023-08-25	244	5028483809
Ike	Roisen	Doodson	PERA951001MCCCYR08	PERA951001I6A	2024-01-22	245	7833821535
Base	Roman	Cosstick	PERA951001MCCCYR08	PERA951001I6A	2023-10-19	246	5610994527
Valery	Hebborne	Heisman	PERA951001MCCCYR08	PERA951001I6A	2023-11-24	247	8490563349
Teodoor	Myrkus	Tiplady	PERA951001MCCCYR08	PERA951001I6A	2024-01-22	248	3001658762
Allx	Capaldo	Attrill	PERA951001MCCCYR08	PERA951001I6A	2024-03-15	249	196344603
Auberon	Lieber	Lombardo	PERA951001MCCCYR08	PERA951001I6A	2023-09-09	250	1971445819
Hillel	Schmuhl	Smouten	PERA951001MCCCYR08	PERA951001I6A	2023-11-05	251	5983157744
Lana	Muckle	Bayston	PERA951001MCCCYR08	PERA951001I6A	2023-10-26	252	7563072683
Alvinia	Amsberger	Plevey	PERA951001MCCCYR08	PERA951001I6A	2024-06-20	253	3231801893
Georgeanna	Well	Werrilow	PERA951001MCCCYR08	PERA951001I6A	2024-04-24	254	2312208415
Fancy	Hearthfield	Patridge	PERA951001MCCCYR08	PERA951001I6A	2024-06-02	255	9819643627
Frederick	Yokley	Stebbins	PERA951001MCCCYR08	PERA951001I6A	2023-12-20	256	9235772001
Karita	Llop	Meneur	PERA951001MCCCYR08	PERA951001I6A	2023-09-15	257	3465718283
Marybeth	Laingmaid	Shacklady	PERA951001MCCCYR08	PERA951001I6A	2024-04-01	258	2353146988
Olag	Muir	MacClay	PERA951001MCCCYR08	PERA951001I6A	2023-11-22	259	8579009693
Serge	Pagnin	Loughney	PERA951001MCCCYR08	PERA951001I6A	2024-01-26	260	1940540356
Lynnet	Rickasse	Attewell	PERA951001MCCCYR08	PERA951001I6A	2023-09-30	261	3261554487
Cthrine	Stallon	Braben	PERA951001MCCCYR08	PERA951001I6A	2024-01-09	262	8384420416
Samuel	Porteous	Benoey	PERA951001MCCCYR08	PERA951001I6A	2023-11-11	263	397463626
Fidel	Holehouse	Clemenzi	PERA951001MCCCYR08	PERA951001I6A	2023-10-24	264	7439379772
Darda	Stanbro	Guierre	PERA951001MCCCYR08	PERA951001I6A	2024-02-06	265	593967518
Natividad	Sharpous	Barrasse	PERA951001MCCCYR08	PERA951001I6A	2024-01-08	266	6021625668
Harrison	Punton	Huckin	PERA951001MCCCYR08	PERA951001I6A	2023-08-23	267	692431756
Buddy	Jost	Sadat	PERA951001MCCCYR08	PERA951001I6A	2023-09-29	268	8281902876
April	Wanell	Georgeon	PERA951001MCCCYR08	PERA951001I6A	2024-03-12	269	4146493218
Roberto	Hillett	Westmoreland	PERA951001MCCCYR08	PERA951001I6A	2023-12-31	270	4187762752
Valerye	Gavan	Joannet	PERA951001MCCCYR08	PERA951001I6A	2024-04-10	271	8870034062
Sigmund	Hrishchenko	Winsbury	PERA951001MCCCYR08	PERA951001I6A	2023-12-03	272	5079141484
Zorine	MacTimpany	Katt	PERA951001MCCCYR08	PERA951001I6A	2023-12-08	273	86680323
Florella	Weald	Strauss	PERA951001MCCCYR08	PERA951001I6A	2024-02-18	274	9449856346
Arnaldo	Burnapp	Casini	PERA951001MCCCYR08	PERA951001I6A	2024-04-05	275	9167283101
Howey	Enos	Creak	PERA951001MCCCYR08	PERA951001I6A	2024-06-09	276	6526962254
Iago	Admans	Skevington	PERA951001MCCCYR08	PERA951001I6A	2024-03-11	277	6112522462
Harriet	Cotherill	Gorries	PERA951001MCCCYR08	PERA951001I6A	2023-08-01	278	818289988
Corrina	Bramham	Fransewich	PERA951001MCCCYR08	PERA951001I6A	2024-01-18	279	1168050626
Parker	Poxton	Hoffman	PERA951001MCCCYR08	PERA951001I6A	2023-10-04	280	1714351742
Laurence	Cano	Sotheby	PERA951001MCCCYR08	PERA951001I6A	2024-03-06	281	1029731705
Domini	Shimwall	Duval	PERA951001MCCCYR08	PERA951001I6A	2023-10-11	282	8492141921
Nealson	Hews	Crevy	PERA951001MCCCYR08	PERA951001I6A	2024-04-05	283	4260507060
Aloysia	Garatty	Aveline	PERA951001MCCCYR08	PERA951001I6A	2023-11-15	284	2928483896
Hollyanne	Cadwallader	Soltan	PERA951001MCCCYR08	PERA951001I6A	2024-05-24	285	6565692378
Norah	Caroll	Petto	PERA951001MCCCYR08	PERA951001I6A	2024-02-16	286	3479622763
Candy	Rathborne	Gebuhr	PERA951001MCCCYR08	PERA951001I6A	2023-10-13	287	7608352655
Pryce	Furnell	Bawdon	PERA951001MCCCYR08	PERA951001I6A	2023-09-06	288	3103144768
Basilius	Saltsberger	Cohani	PERA951001MCCCYR08	PERA951001I6A	2024-05-29	289	6358133454
Anne	Painswick	Abdee	PERA951001MCCCYR08	PERA951001I6A	2024-05-04	290	1519775881
Giselle	Tabner	Linham	PERA951001MCCCYR08	PERA951001I6A	2024-06-01	291	5458065344
Tommie	Cadwaladr	Merwood	PERA951001MCCCYR08	PERA951001I6A	2023-08-19	292	1754661076
Aldo	Ingles	Rohfsen	PERA951001MCCCYR08	PERA951001I6A	2024-05-13	293	4197705492
Purcell	Slowan	Azemar	PERA951001MCCCYR08	PERA951001I6A	2024-01-31	294	7684635387
Ronica	Morriarty	Tuer	PERA951001MCCCYR08	PERA951001I6A	2024-04-18	295	1171914458
Wakefield	Jeanon	Petley	PERA951001MCCCYR08	PERA951001I6A	2024-05-10	296	8011729098
Egan	Dickerline	Hunter	PERA951001MCCCYR08	PERA951001I6A	2024-06-04	297	4699365043
Felipa	Brothwell	Adamson	PERA951001MCCCYR08	PERA951001I6A	2023-09-04	298	2526932440
Farlee	Hurcombe	Mongain	PERA951001MCCCYR08	PERA951001I6A	2024-01-31	299	823154521
Janessa	Mochar	Padgham	PERA951001MCCCYR08	PERA951001I6A	2024-04-25	300	3802866371
Mace	Payne	Tuison	PERA951001MCCCYR08	PERA951001I6A	2024-03-15	301	429389752
Hunter	Plimmer	Parker	PERA951001MCCCYR08	PERA951001I6A	2023-12-22	302	8215004385
Caralie	Cyson	Manginot	PERA951001MCCCYR08	PERA951001I6A	2024-02-09	303	3909171486
Bobine	Newtown	Guillain	PERA951001MCCCYR08	PERA951001I6A	2023-10-26	304	8977710685
Melitta	Waterworth	Cordeux	PERA951001MCCCYR08	PERA951001I6A	2024-03-18	305	1874443483
Janos	Curcher	Tother	PERA951001MCCCYR08	PERA951001I6A	2023-11-28	306	1565630327
Tony	Hartlebury	Lowey	PERA951001MCCCYR08	PERA951001I6A	2023-09-07	307	3138885705
Giusto	Fend	Bouch	PERA951001MCCCYR08	PERA951001I6A	2024-04-14	308	3278058798
Kirstyn	Seally	Showl	PERA951001MCCCYR08	PERA951001I6A	2023-08-20	309	2066098817
Rodi	Lamps	Cocher	PERA951001MCCCYR08	PERA951001I6A	2023-11-16	310	4432824573
Kirsten	Mullin	Cossem	PERA951001MCCCYR08	PERA951001I6A	2023-08-16	311	1365184064
Honoria	Press	Penrice	PERA951001MCCCYR08	PERA951001I6A	2023-09-04	312	2577505841
Rosabelle	Buscombe	Iacovuzzi	PERA951001MCCCYR08	PERA951001I6A	2024-01-17	313	9723569051
Deny	Jirick	BURWIN	PERA951001MCCCYR08	PERA951001I6A	2023-09-15	314	8137877118
Celestine	Bennallck	Szymanski	PERA951001MCCCYR08	PERA951001I6A	2024-01-06	315	8991336639
Claybourne	Gerritzen	Blazej	PERA951001MCCCYR08	PERA951001I6A	2023-08-13	316	5989876602
Colver	Tebbit	Cleife	PERA951001MCCCYR08	PERA951001I6A	2023-12-27	317	3093057604
Guthrie	De Anesy	Bartczak	PERA951001MCCCYR08	PERA951001I6A	2023-09-13	318	8422920611
Oneida	Trime	Huxter	PERA951001MCCCYR08	PERA951001I6A	2023-07-22	319	5872225075
Shanon	Lotze	Gothard	PERA951001MCCCYR08	PERA951001I6A	2024-02-15	320	3824691779
Morten	Gittus	Issacof	PERA951001MCCCYR08	PERA951001I6A	2024-05-10	321	9955237724
Cortney	Ruusa	Balasin	PERA951001MCCCYR08	PERA951001I6A	2024-03-12	322	383940451
Sanders	Jilliss	McBean	PERA951001MCCCYR08	PERA951001I6A	2023-09-19	323	4681577251
Dierdre	Ruilton	Donaldson	PERA951001MCCCYR08	PERA951001I6A	2024-04-24	324	3748377096
Lay	Rosenbush	Gasperi	PERA951001MCCCYR08	PERA951001I6A	2024-01-22	325	4945518882
Tony	Colebourn	Packman	PERA951001MCCCYR08	PERA951001I6A	2023-08-21	326	1859934048
Delcina	Barten	Dicty	PERA951001MCCCYR08	PERA951001I6A	2023-11-16	327	3492120326
Chic	Wooffinden	Gooders	PERA951001MCCCYR08	PERA951001I6A	2024-01-25	328	4583338503
Ximenez	MacArdle	Gooderridge	PERA951001MCCCYR08	PERA951001I6A	2023-11-04	329	9315557913
Deanne	Lassey	Eleshenar	PERA951001MCCCYR08	PERA951001I6A	2023-12-02	330	961356464
Pavia	Matyushkin	Micklem	PERA951001MCCCYR08	PERA951001I6A	2023-07-03	331	2634700687
Eleonore	Goodier	Yarnley	PERA951001MCCCYR08	PERA951001I6A	2024-02-27	332	2902476957
Kevon	Jolland	Parvin	PERA951001MCCCYR08	PERA951001I6A	2024-03-03	333	2058870204
Nedda	Drillingcourt	Wornum	PERA951001MCCCYR08	PERA951001I6A	2024-05-04	334	3106792442
Sapphire	Seedhouse	Ridesdale	PERA951001MCCCYR08	PERA951001I6A	2024-02-19	335	3362209866
Cornelius	Eliassen	Kach	PERA951001MCCCYR08	PERA951001I6A	2024-01-12	336	8243876383
Clarke	Prate	Lineham	PERA951001MCCCYR08	PERA951001I6A	2023-12-19	337	7739308757
Rowney	Akett	Probart	PERA951001MCCCYR08	PERA951001I6A	2023-07-24	338	9265883294
Renelle	Moody	Muldowney	PERA951001MCCCYR08	PERA951001I6A	2023-08-23	339	1017837163
Marnie	Gamlyn	Andreaccio	PERA951001MCCCYR08	PERA951001I6A	2023-08-22	340	3496785756
Teddy	Hamshaw	Keld	PERA951001MCCCYR08	PERA951001I6A	2023-09-04	341	9849022086
Ozzie	Goaley	Douglas	PERA951001MCCCYR08	PERA951001I6A	2024-02-07	342	4897502470
Valli	Longhorne	Collick	PERA951001MCCCYR08	PERA951001I6A	2024-06-14	343	8076108802
Emilee	Varty	Muckeen	PERA951001MCCCYR08	PERA951001I6A	2023-12-10	344	1305411277
Hildagarde	Greatorex	Pawelek	PERA951001MCCCYR08	PERA951001I6A	2023-08-28	345	4813435440
Shaylah	Penkman	Locket	PERA951001MCCCYR08	PERA951001I6A	2024-03-12	346	6290085662
Lazar	Landy	Bissell	PERA951001MCCCYR08	PERA951001I6A	2023-10-20	347	6049074615
Elliott	Blundin	Altofts	PERA951001MCCCYR08	PERA951001I6A	2024-05-31	348	9337720809
Ellery	Cleft	Cockerell	PERA951001MCCCYR08	PERA951001I6A	2023-08-24	349	3570997448
Monroe	Mourgue	Walklot	PERA951001MCCCYR08	PERA951001I6A	2023-09-11	350	8342076997
Ashlee	Reedick	Mussetti	PERA951001MCCCYR08	PERA951001I6A	2024-02-20	351	6930236098
Howard	Pittoli	Igoe	PERA951001MCCCYR08	PERA951001I6A	2024-03-14	352	1482108402
Arlan	Pearsall	Vautier	PERA951001MCCCYR08	PERA951001I6A	2024-03-31	353	5313109707
Riley	Pearse	Piffe	PERA951001MCCCYR08	PERA951001I6A	2023-12-26	354	1095355430
Gabbey	Whaites	Porteous	PERA951001MCCCYR08	PERA951001I6A	2024-03-04	355	6756435019
Hildagarde	Paulot	Podbury	PERA951001MCCCYR08	PERA951001I6A	2023-07-28	356	9096610334
Evania	Gittis	Danzig	PERA951001MCCCYR08	PERA951001I6A	2023-12-16	357	4266099851
Leonie	Lockie	Ghion	PERA951001MCCCYR08	PERA951001I6A	2023-08-19	358	5856989872
Gasparo	Mussilli	Godleman	PERA951001MCCCYR08	PERA951001I6A	2024-01-14	359	8681086588
Warren	Kirtland	Hateley	PERA951001MCCCYR08	PERA951001I6A	2024-01-12	360	3015509616
Domeniga	McGrane	Scalera	PERA951001MCCCYR08	PERA951001I6A	2024-06-14	361	2747204065
Richmond	De Witt	Koppel	PERA951001MCCCYR08	PERA951001I6A	2024-05-02	362	3557485641
Karolina	McBain	Wyndham	PERA951001MCCCYR08	PERA951001I6A	2024-01-10	363	5701545326
Tab	Delue	Milton-White	PERA951001MCCCYR08	PERA951001I6A	2023-08-22	364	8523711414
Orel	Fuchs	Denial	PERA951001MCCCYR08	PERA951001I6A	2024-04-18	365	1545743398
Marge	Jackman	Linnitt	PERA951001MCCCYR08	PERA951001I6A	2023-12-28	366	6763560230
Jasper	Ghioni	Howard	PERA951001MCCCYR08	PERA951001I6A	2023-09-22	367	6089236926
Jonah	Durno	Ruddick	PERA951001MCCCYR08	PERA951001I6A	2024-03-23	368	2441566989
Chandler	Callf	Ferdinand	PERA951001MCCCYR08	PERA951001I6A	2023-07-20	369	5729667825
Stillman	McCahill	Ferrini	PERA951001MCCCYR08	PERA951001I6A	2024-03-19	370	6433117295
Joete	Filipic	Rossbrook	PERA951001MCCCYR08	PERA951001I6A	2023-11-24	371	3706092883
Konstance	De Bischop	Hupe	PERA951001MCCCYR08	PERA951001I6A	2024-02-20	372	2689641836
Bernelle	Allsebrook	Vyvyan	PERA951001MCCCYR08	PERA951001I6A	2024-01-13	373	8402173586
Danit	Stearley	Allinson	PERA951001MCCCYR08	PERA951001I6A	2024-03-18	374	5322857559
Beatrice	Noddings	Cornau	PERA951001MCCCYR08	PERA951001I6A	2023-07-31	375	2247073484
Tamiko	Trout	Guisby	PERA951001MCCCYR08	PERA951001I6A	2024-04-30	376	5682831276
Juliet	Bambrick	Mion	PERA951001MCCCYR08	PERA951001I6A	2024-04-28	377	3180351659
Cherish	Kiely	Twentyman	PERA951001MCCCYR08	PERA951001I6A	2024-01-16	378	5152024284
Jacinthe	Luetkemeyer	Boath	PERA951001MCCCYR08	PERA951001I6A	2024-05-15	379	919976891
Buddy	Crigin	Carbert	PERA951001MCCCYR08	PERA951001I6A	2024-02-02	380	2160923796
Onofredo	Dorney	Husbands	PERA951001MCCCYR08	PERA951001I6A	2023-08-30	381	7938205648
Deb	Kilshaw	Balentyne	PERA951001MCCCYR08	PERA951001I6A	2024-04-02	382	100962645
Mandie	Hammett	Froom	PERA951001MCCCYR08	PERA951001I6A	2023-10-23	383	4370109388
Laird	Letten	MacKaig	PERA951001MCCCYR08	PERA951001I6A	2023-07-16	384	6692036224
Tarra	Osgar	Abriani	PERA951001MCCCYR08	PERA951001I6A	2024-01-21	385	4250679276
Artemis	Slad	Bote	PERA951001MCCCYR08	PERA951001I6A	2023-07-07	386	6840615502
Audrie	Kinforth	Burniston	PERA951001MCCCYR08	PERA951001I6A	2023-12-27	387	4257889160
Kaleb	Rebert	Normanville	PERA951001MCCCYR08	PERA951001I6A	2024-06-19	388	5588870387
Gisele	Boanas	Skillicorn	PERA951001MCCCYR08	PERA951001I6A	2023-09-25	389	5894607132
Keane	Carleman	O'Growgane	PERA951001MCCCYR08	PERA951001I6A	2023-08-03	390	5604055794
Marrilee	Bulleyn	Arias	PERA951001MCCCYR08	PERA951001I6A	2023-07-24	391	3929335506
Junie	Medlin	Dunkirk	PERA951001MCCCYR08	PERA951001I6A	2024-02-24	392	2153739640
Bendick	Beininck	Oxherd	PERA951001MCCCYR08	PERA951001I6A	2024-06-14	393	5796859536
Kiel	Troy	Goodbar	PERA951001MCCCYR08	PERA951001I6A	2023-10-15	394	8165061437
Lulu	Ligertwood	Polkinhorn	PERA951001MCCCYR08	PERA951001I6A	2024-05-01	395	4387812656
Urbain	Horley	McNess	PERA951001MCCCYR08	PERA951001I6A	2024-04-21	396	7274001361
Carolyn	Kerswill	Coaster	PERA951001MCCCYR08	PERA951001I6A	2024-05-14	397	3933111900
Mignonne	Sygroves	Drummond	PERA951001MCCCYR08	PERA951001I6A	2023-10-24	398	5958273388
Fons	Dummigan	Mulryan	PERA951001MCCCYR08	PERA951001I6A	2024-04-08	399	5216739513
Mayor	Brimelow	Silverman	PERA951001MCCCYR08	PERA951001I6A	2023-12-19	400	64548635
Terri	Mecozzi	Maroney	PERA951001MCCCYR08	PERA951001I6A	2024-02-10	401	4875497377
Tamma	Yakushkin	Smiley	PERA951001MCCCYR08	PERA951001I6A	2023-11-09	402	5119049389
Felipe	Breffitt	Jarrold	PERA951001MCCCYR08	PERA951001I6A	2023-09-23	403	485993015
Sara-ann	Stoneley	Lavies	PERA951001MCCCYR08	PERA951001I6A	2024-04-07	404	9544816526
Justina	Fryett	Lehrian	PERA951001MCCCYR08	PERA951001I6A	2023-09-26	405	4301278621
Germain	Vassano	Pinckney	PERA951001MCCCYR08	PERA951001I6A	2024-02-11	406	6286766596
Luciana	Rickman	Hoult	PERA951001MCCCYR08	PERA951001I6A	2024-04-02	407	4245178272
Elbertine	Lesly	Bushrod	PERA951001MCCCYR08	PERA951001I6A	2024-06-23	408	5252727546
Eula	Benbrick	Dunaway	PERA951001MCCCYR08	PERA951001I6A	2023-10-03	409	2650723890
Aguie	Cornier	Arondel	PERA951001MCCCYR08	PERA951001I6A	2023-12-13	410	7049475696
Correy	Mc Caughan	Heading	PERA951001MCCCYR08	PERA951001I6A	2024-05-18	411	8507817610
Chiquita	Rickards	Farahar	PERA951001MCCCYR08	PERA951001I6A	2024-06-16	412	1231714913
Lilias	Spear	Ahern	PERA951001MCCCYR08	PERA951001I6A	2023-10-22	413	1248835905
Wilbur	Comins	Legat	PERA951001MCCCYR08	PERA951001I6A	2024-01-25	414	9944941026
Sofia	Girault	Davet	PERA951001MCCCYR08	PERA951001I6A	2024-01-04	415	3949378588
Zelma	Canedo	Yetton	PERA951001MCCCYR08	PERA951001I6A	2023-08-05	416	6410266391
Othelia	Tackett	Daniellot	PERA951001MCCCYR08	PERA951001I6A	2023-09-19	417	8096993070
Dene	Vanyarkin	Savile	PERA951001MCCCYR08	PERA951001I6A	2023-12-15	418	2908929953
Harwell	Imrie	Baine	PERA951001MCCCYR08	PERA951001I6A	2024-06-11	419	2485019797
Annecorinne	Krolak	Hutchens	PERA951001MCCCYR08	PERA951001I6A	2024-01-17	420	745701914
Joshua	Kingaby	MacLaren	PERA951001MCCCYR08	PERA951001I6A	2024-03-14	421	1690447761
Jami	Coneybeare	Hoult	PERA951001MCCCYR08	PERA951001I6A	2023-07-18	422	5289893105
Gisele	McGeoch	Leigh	PERA951001MCCCYR08	PERA951001I6A	2024-02-29	423	5759952552
Phaedra	Tolcharde	Juorio	PERA951001MCCCYR08	PERA951001I6A	2023-10-07	424	3646462647
Bearnard	Jamme	Dautry	PERA951001MCCCYR08	PERA951001I6A	2024-03-23	425	7411544736
Gertrudis	Speller	Woodward	PERA951001MCCCYR08	PERA951001I6A	2023-10-02	426	4999606259
Cherye	Orleton	Kaesmans	PERA951001MCCCYR08	PERA951001I6A	2024-05-07	427	742911179
Nicky	Winspar	Verrick	PERA951001MCCCYR08	PERA951001I6A	2024-03-21	428	4357717604
Alejandra	Jilliss	Keyden	PERA951001MCCCYR08	PERA951001I6A	2023-07-08	429	1611382076
Samson	Gherardelli	Cherry Holme	PERA951001MCCCYR08	PERA951001I6A	2024-01-20	430	4094848150
Dorie	Ucceli	Fayter	PERA951001MCCCYR08	PERA951001I6A	2024-04-13	431	7068925898
Margret	Leneve	Giannassi	PERA951001MCCCYR08	PERA951001I6A	2024-01-17	432	168522535
Hannah	Gianolini	Petford	PERA951001MCCCYR08	PERA951001I6A	2024-06-10	433	1799009637
Blondell	Grishechkin	Sangwin	PERA951001MCCCYR08	PERA951001I6A	2024-01-14	434	5708076100
Halley	Denisovo	Heyball	PERA951001MCCCYR08	PERA951001I6A	2024-03-18	435	1457912562
Mike	Beese	Dyerson	PERA951001MCCCYR08	PERA951001I6A	2024-02-05	436	41207807
Bert	Whitty	Derill	PERA951001MCCCYR08	PERA951001I6A	2024-05-16	437	5285234174
Humbert	Hanselmann	Bater	PERA951001MCCCYR08	PERA951001I6A	2024-01-14	438	2530422710
Veronika	Jirusek	MacCaughen	PERA951001MCCCYR08	PERA951001I6A	2024-05-01	439	286164442
Gunar	Rist	Farries	PERA951001MCCCYR08	PERA951001I6A	2023-10-10	440	8155838927
Gregor	Impleton	Kensington	PERA951001MCCCYR08	PERA951001I6A	2024-04-13	441	9743479058
Gweneth	Drivers	Ewings	PERA951001MCCCYR08	PERA951001I6A	2024-03-01	442	6410200528
Monro	Humble	Hagerty	PERA951001MCCCYR08	PERA951001I6A	2024-01-29	443	6943230506
Priscella	Matveyev	Wolsey	PERA951001MCCCYR08	PERA951001I6A	2023-07-24	444	8070517069
Warde	Terese	MacGettigen	PERA951001MCCCYR08	PERA951001I6A	2023-11-10	445	6330759936
Nester	Srutton	Harness	PERA951001MCCCYR08	PERA951001I6A	2023-09-14	446	6459291942
Raymund	Dupey	Leaman	PERA951001MCCCYR08	PERA951001I6A	2023-08-19	447	8406075562
Brier	Faughny	Bruins	PERA951001MCCCYR08	PERA951001I6A	2024-05-28	448	1054566909
Syd	Riddiford	Burdytt	PERA951001MCCCYR08	PERA951001I6A	2024-03-05	449	5057352733
Ethelda	Oty	M'cowis	PERA951001MCCCYR08	PERA951001I6A	2024-01-24	450	5250898963
Anissa	Kowalik	Mulcock	PERA951001MCCCYR08	PERA951001I6A	2024-03-02	451	7907552869
Adams	Van de Vlies	Scroyton	PERA951001MCCCYR08	PERA951001I6A	2023-06-27	452	7848907783
Othelia	Denniss	Giovannetti	PERA951001MCCCYR08	PERA951001I6A	2024-06-03	453	9665935879
Allin	Cornford	D'Hooghe	PERA951001MCCCYR08	PERA951001I6A	2023-08-17	454	4648171934
Dodi	Pawlett	Loody	PERA951001MCCCYR08	PERA951001I6A	2023-12-20	455	4940731472
Dulcie	Parradye	Gallifont	PERA951001MCCCYR08	PERA951001I6A	2023-12-06	456	5905370834
Elmer	Wildin	Regorz	PERA951001MCCCYR08	PERA951001I6A	2023-11-04	457	3754720074
Maible	Spearing	Cornbell	PERA951001MCCCYR08	PERA951001I6A	2023-12-01	458	8560515380
Gibby	Tebbut	Kenney	PERA951001MCCCYR08	PERA951001I6A	2023-07-28	459	5082652567
Chev	Imlaw	Cullin	PERA951001MCCCYR08	PERA951001I6A	2023-08-11	460	5697674627
Hobard	Covington	MacWhirter	PERA951001MCCCYR08	PERA951001I6A	2024-06-17	461	6342314292
Annadiane	Donke	Sultana	PERA951001MCCCYR08	PERA951001I6A	2024-01-05	462	3272577831
Zorina	Oxby	Boliver	PERA951001MCCCYR08	PERA951001I6A	2024-06-01	463	7639848741
Denver	Swoffer	Brahan	PERA951001MCCCYR08	PERA951001I6A	2023-09-23	464	3893582096
Waylin	Harmson	Lembrick	PERA951001MCCCYR08	PERA951001I6A	2023-07-14	465	4860911539
Chloette	Wadsworth	Simpkin	PERA951001MCCCYR08	PERA951001I6A	2023-07-03	466	9459781934
Findlay	Duligal	Jephson	PERA951001MCCCYR08	PERA951001I6A	2023-09-14	467	9679137627
Leann	Hamby	Clemenzo	PERA951001MCCCYR08	PERA951001I6A	2024-04-09	468	9031638331
Slade	Sircombe	Broadhurst	PERA951001MCCCYR08	PERA951001I6A	2024-01-09	469	1643771574
Dania	Borkin	Meacher	PERA951001MCCCYR08	PERA951001I6A	2023-10-17	470	3310870618
Butch	Bichener	Wisby	PERA951001MCCCYR08	PERA951001I6A	2023-11-29	471	995825785
Guntar	Diament	Sommerlin	PERA951001MCCCYR08	PERA951001I6A	2023-09-01	472	2354850840
Corrine	Farnall	Peotz	PERA951001MCCCYR08	PERA951001I6A	2023-08-17	473	6629943589
Kristoforo	Vaisey	Rolingson	PERA951001MCCCYR08	PERA951001I6A	2023-10-12	474	9246052870
Eolanda	Gothup	Challenger	PERA951001MCCCYR08	PERA951001I6A	2024-02-26	475	6200046387
Hedi	Gibby	Silvers	PERA951001MCCCYR08	PERA951001I6A	2023-10-27	476	677481403
Dalia	Danilov	Zanioletti	PERA951001MCCCYR08	PERA951001I6A	2023-10-18	477	4755316677
Doria	Windridge	Copp	PERA951001MCCCYR08	PERA951001I6A	2024-02-29	478	1647027187
Cecilla	Hinkes	Custed	PERA951001MCCCYR08	PERA951001I6A	2024-02-04	479	9423537391
Peria	Pingstone	Rodnight	PERA951001MCCCYR08	PERA951001I6A	2024-03-04	480	1691330434
Kacey	Vannuccini	Kyngdon	PERA951001MCCCYR08	PERA951001I6A	2024-04-13	481	5509905778
Thomasa	Artist	Bjerkan	PERA951001MCCCYR08	PERA951001I6A	2024-02-06	482	2080656384
Felike	Loughman	Boddis	PERA951001MCCCYR08	PERA951001I6A	2023-07-13	483	8357481337
Neddy	Lurner	Hallum	PERA951001MCCCYR08	PERA951001I6A	2023-09-10	484	9399146987
Margit	Badham	Mafham	PERA951001MCCCYR08	PERA951001I6A	2023-12-02	485	8784975849
Neely	Oakton	Jarlmann	PERA951001MCCCYR08	PERA951001I6A	2023-10-04	486	5256170651
Mohandis	Chape	Firman	PERA951001MCCCYR08	PERA951001I6A	2023-12-05	487	8829257532
Tracey	Milius	Bromidge	PERA951001MCCCYR08	PERA951001I6A	2024-01-17	488	191107417
Dorian	Yoodall	Gauchier	PERA951001MCCCYR08	PERA951001I6A	2023-12-12	489	5478611212
Kaleena	Brosius	Coggell	PERA951001MCCCYR08	PERA951001I6A	2023-10-27	490	934589607
Melodee	McDonell	Crumly	PERA951001MCCCYR08	PERA951001I6A	2023-09-22	491	8465842892
Charlotta	Ketteringham	Gogan	PERA951001MCCCYR08	PERA951001I6A	2023-12-20	492	1944202137
Gertrude	Geraldi	Hedley	PERA951001MCCCYR08	PERA951001I6A	2024-01-05	493	4510344856
Erinn	Greenshiels	Cardus	PERA951001MCCCYR08	PERA951001I6A	2023-10-18	494	7340708480
Lyn	Sesser	Woodfield	PERA951001MCCCYR08	PERA951001I6A	2023-11-14	495	1369950365
Tine	Coveney	Gayther	PERA951001MCCCYR08	PERA951001I6A	2024-02-13	496	9685529531
Waldemar	Palliser	Nancekivell	PERA951001MCCCYR08	PERA951001I6A	2024-03-10	497	3310809137
Bink	Flescher	Dudley	PERA951001MCCCYR08	PERA951001I6A	2023-08-09	498	6691090217
Kellie	Dobby	Berrow	PERA951001MCCCYR08	PERA951001I6A	2023-11-22	499	3051692387
Belicia	Brenneke	Brito	PERA951001MCCCYR08	PERA951001I6A	2023-10-02	500	3395296970
Madge	Wildgoose	Pottie	PERA951001MCCCYR08	PERA951001I6A	2024-01-25	501	1819634191
Dru	Gameson	Grubbe	PERA951001MCCCYR08	PERA951001I6A	2024-03-19	502	1772466816
Kimmi	Vasiliev	McEwen	PERA951001MCCCYR08	PERA951001I6A	2023-09-13	503	4586875410
Ianthe	Narrie	Levi	PERA951001MCCCYR08	PERA951001I6A	2024-06-22	504	2865229017
Philbert	Rediers	Bointon	PERA951001MCCCYR08	PERA951001I6A	2024-05-30	505	1061199673
Merline	Roe	Ebbage	PERA951001MCCCYR08	PERA951001I6A	2024-03-29	506	4749955299
Pierette	Easen	Frampton	PERA951001MCCCYR08	PERA951001I6A	2023-12-28	507	8871287150
Melba	Gonzalvo	Kroger	PERA951001MCCCYR08	PERA951001I6A	2024-02-18	508	4839804370
Erny	Basham	Walsh	PERA951001MCCCYR08	PERA951001I6A	2023-12-13	509	6352341233
Boone	Bransdon	Sarge	PERA951001MCCCYR08	PERA951001I6A	2024-02-26	510	7348523455
Cleveland	Gladeche	Matignon	PERA951001MCCCYR08	PERA951001I6A	2023-08-08	511	8188155721
Halsey	Igglesden	McDougal	PERA951001MCCCYR08	PERA951001I6A	2024-02-29	512	4105182242
Becki	Seller	Stodhart	PERA951001MCCCYR08	PERA951001I6A	2023-12-09	513	5199675532
Kellsie	Petersen	Tapin	PERA951001MCCCYR08	PERA951001I6A	2023-07-11	514	4036357689
Marga	Haddrill	Bee	PERA951001MCCCYR08	PERA951001I6A	2023-10-08	515	1678801224
Jeremy	Kachel	MacVaugh	PERA951001MCCCYR08	PERA951001I6A	2024-03-22	516	3831187460
Alexandro	Wallbridge	Burbank	PERA951001MCCCYR08	PERA951001I6A	2023-07-02	517	8942181147
Barrett	Costerd	Croley	PERA951001MCCCYR08	PERA951001I6A	2023-11-10	518	2434406912
Merwyn	Bricket	Grosier	PERA951001MCCCYR08	PERA951001I6A	2024-05-28	519	2184984086
Jasper	Bushell	Heggman	PERA951001MCCCYR08	PERA951001I6A	2023-07-23	520	1190623498
Kassandra	Di Francecshi	Bernetti	PERA951001MCCCYR08	PERA951001I6A	2023-10-19	521	6239965162
Lydia	Hugueville	Ahlf	PERA951001MCCCYR08	PERA951001I6A	2023-08-22	522	8203803288
Emanuele	Lates	Gauvain	PERA951001MCCCYR08	PERA951001I6A	2023-09-25	523	8034588490
Rutherford	Balsdon	MacKettrick	PERA951001MCCCYR08	PERA951001I6A	2023-12-07	524	6055762269
Damien	Szepe	Oxe	PERA951001MCCCYR08	PERA951001I6A	2024-03-14	525	7598770808
Piggy	Cline	Daintree	PERA951001MCCCYR08	PERA951001I6A	2023-08-02	526	7221086737
Caryn	Lynnitt	Bortoloni	PERA951001MCCCYR08	PERA951001I6A	2024-03-02	527	7413655063
Hunter	Camis	Dinse	PERA951001MCCCYR08	PERA951001I6A	2024-06-07	528	2033203441
Algernon	Brakewell	Willment	PERA951001MCCCYR08	PERA951001I6A	2023-12-10	529	3176019467
Ellswerth	Swatten	Kyncl	PERA951001MCCCYR08	PERA951001I6A	2023-11-08	530	7187213980
Gilburt	Tofanini	Pashenkov	PERA951001MCCCYR08	PERA951001I6A	2023-12-15	531	1491575662
Barry	Ficken	Lancashire	PERA951001MCCCYR08	PERA951001I6A	2023-08-12	532	1215742002
Nicolea	Gemlbett	Mardlin	PERA951001MCCCYR08	PERA951001I6A	2023-12-21	533	7477900263
Gloriane	Esser	Caveill	PERA951001MCCCYR08	PERA951001I6A	2023-12-12	534	8792284825
Svend	Glancey	Garn	PERA951001MCCCYR08	PERA951001I6A	2024-03-20	535	1826851178
Kleon	Peskett	Tankard	PERA951001MCCCYR08	PERA951001I6A	2024-06-24	536	707936136
Brooke	Howgill	Stanistreet	PERA951001MCCCYR08	PERA951001I6A	2023-08-29	537	3238458124
Rheta	Becerra	Malletratt	PERA951001MCCCYR08	PERA951001I6A	2023-10-01	538	2867973473
Olva	Ivasechko	Dotterill	PERA951001MCCCYR08	PERA951001I6A	2024-01-21	539	6979183257
Maximilian	Garken	Liver	PERA951001MCCCYR08	PERA951001I6A	2023-09-10	540	2393208828
Ange	Flowerden	Scarlon	PERA951001MCCCYR08	PERA951001I6A	2023-11-24	541	5211460855
Jarib	Benbrick	Allbones	PERA951001MCCCYR08	PERA951001I6A	2024-04-16	542	6906513710
Luce	Aldersea	Sawney	PERA951001MCCCYR08	PERA951001I6A	2023-11-11	543	7497302701
Salli	Piggford	Tollet	PERA951001MCCCYR08	PERA951001I6A	2023-07-23	544	5503107063
Gates	Wallwood	Simmgen	PERA951001MCCCYR08	PERA951001I6A	2023-08-27	545	447337742
Winnifred	Pullen	McKoy	PERA951001MCCCYR08	PERA951001I6A	2023-10-24	546	1254393269
Fleming	Jurgen	Verrall	PERA951001MCCCYR08	PERA951001I6A	2024-06-09	547	818163534
Codee	Server	Temple	PERA951001MCCCYR08	PERA951001I6A	2024-01-28	548	9187066572
Wallis	Rance	Quinn	PERA951001MCCCYR08	PERA951001I6A	2024-02-09	549	445819243
Caralie	Losebie	Storre	PERA951001MCCCYR08	PERA951001I6A	2023-10-13	550	877075107
Sandro	Beetlestone	Cresar	PERA951001MCCCYR08	PERA951001I6A	2024-03-11	551	7998309067
Eula	Blondelle	Le Fleming	PERA951001MCCCYR08	PERA951001I6A	2023-11-01	552	1919165924
Gordie	Antonchik	Carle	PERA951001MCCCYR08	PERA951001I6A	2024-04-24	553	4159451411
Lark	Clute	Celli	PERA951001MCCCYR08	PERA951001I6A	2024-05-10	554	8600721350
Shelli	Gilliam	Stampfer	PERA951001MCCCYR08	PERA951001I6A	2023-10-11	555	349925224
Grissel	Byham	Domanski	PERA951001MCCCYR08	PERA951001I6A	2024-01-10	556	4490464207
Grenville	Laugheran	Breffitt	PERA951001MCCCYR08	PERA951001I6A	2023-10-02	557	4267610606
Maximilian	Munehay	Danbye	PERA951001MCCCYR08	PERA951001I6A	2023-08-27	558	3368799924
Anthe	Randalson	Kondratyuk	PERA951001MCCCYR08	PERA951001I6A	2023-10-06	559	6870025711
Idelle	Pizey	Letessier	PERA951001MCCCYR08	PERA951001I6A	2024-06-13	560	5463813841
Charley	Ricket	Kent	PERA951001MCCCYR08	PERA951001I6A	2024-01-14	561	2832379680
Allyn	Leahey	Hardware	PERA951001MCCCYR08	PERA951001I6A	2024-05-05	562	154469483
Ricky	Quinney	Fulun	PERA951001MCCCYR08	PERA951001I6A	2024-05-15	563	2526492092
Brucie	Tyer	Rangall	PERA951001MCCCYR08	PERA951001I6A	2023-12-15	564	8175829141
Mirabella	Howard - Gater	Purvess	PERA951001MCCCYR08	PERA951001I6A	2023-09-15	565	4010237686
Frasco	Haldon	Sanham	PERA951001MCCCYR08	PERA951001I6A	2024-03-22	566	3163160824
Edie	Bousquet	Lansdown	PERA951001MCCCYR08	PERA951001I6A	2024-04-25	567	7276770729
Joy	Kasbye	Gribben	PERA951001MCCCYR08	PERA951001I6A	2023-10-12	568	9644120876
Jayson	Mackieson	Silveston	PERA951001MCCCYR08	PERA951001I6A	2023-11-29	569	4351363703
Trula	Haley	Brideoke	PERA951001MCCCYR08	PERA951001I6A	2023-07-04	570	7169355639
Meris	Yuryatin	Drewell	PERA951001MCCCYR08	PERA951001I6A	2024-01-06	571	4808689650
Deirdre	Steely	Iddons	PERA951001MCCCYR08	PERA951001I6A	2023-09-01	572	9279527789
Horace	Kobierski	Gillease	PERA951001MCCCYR08	PERA951001I6A	2024-05-05	573	9889018586
Farah	Frail	Pummery	PERA951001MCCCYR08	PERA951001I6A	2024-05-11	574	8006914990
Zolly	Shere	Bellwood	PERA951001MCCCYR08	PERA951001I6A	2024-03-21	575	4355948846
Tessie	Redpath	Lowson	PERA951001MCCCYR08	PERA951001I6A	2024-05-14	576	536813213
Milo	Surplice	Stockdale	PERA951001MCCCYR08	PERA951001I6A	2024-03-10	577	4923265981
Dudley	MacGahy	Beard	PERA951001MCCCYR08	PERA951001I6A	2024-03-13	578	1149452773
Emmie	Traylen	Yankin	PERA951001MCCCYR08	PERA951001I6A	2023-12-30	579	8215497446
Nanni	O'Grada	Shemwell	PERA951001MCCCYR08	PERA951001I6A	2023-10-24	580	6670023227
Ive	Hanselman	Hablet	PERA951001MCCCYR08	PERA951001I6A	2023-12-20	581	3236551984
Marinna	Moulding	Weinberg	PERA951001MCCCYR08	PERA951001I6A	2024-01-24	582	8046083887
Paige	Wooffinden	Asch	PERA951001MCCCYR08	PERA951001I6A	2024-03-31	583	2433524776
Cornie	Raise	Mouget	PERA951001MCCCYR08	PERA951001I6A	2023-12-08	584	9079827835
Leonerd	Mowett	Yurocjkin	PERA951001MCCCYR08	PERA951001I6A	2024-02-29	585	1807833445
Lanie	Carus	McGroarty	PERA951001MCCCYR08	PERA951001I6A	2023-12-06	586	789371766
Eada	Mariolle	Pasby	PERA951001MCCCYR08	PERA951001I6A	2023-11-05	587	7501552169
Bondy	Christon	Footitt	PERA951001MCCCYR08	PERA951001I6A	2023-07-28	588	8434993376
Constantin	Burkinshaw	Rekes	PERA951001MCCCYR08	PERA951001I6A	2024-02-01	589	9190711513
Fons	Rillstone	Cosely	PERA951001MCCCYR08	PERA951001I6A	2024-02-09	590	4888247757
Rosalynd	Billett	Hazelhurst	PERA951001MCCCYR08	PERA951001I6A	2024-02-03	591	2921158442
Mariellen	Moreing	Simonich	PERA951001MCCCYR08	PERA951001I6A	2024-02-09	592	4996495448
Germayne	Garret	Bristow	PERA951001MCCCYR08	PERA951001I6A	2023-09-23	593	8312066128
Andee	Smaling	Dalliwater	PERA951001MCCCYR08	PERA951001I6A	2023-08-23	594	5372880376
Nisse	Sayes	Tungate	PERA951001MCCCYR08	PERA951001I6A	2024-02-16	595	9133321086
Veda	Vance	Iddison	PERA951001MCCCYR08	PERA951001I6A	2023-11-08	596	8618654655
Ganny	Miskin	Alliston	PERA951001MCCCYR08	PERA951001I6A	2023-09-10	597	2874946672
Olav	Martine	Rossin	PERA951001MCCCYR08	PERA951001I6A	2024-06-03	598	93942796
Cecil	Alvis	Barlee	PERA951001MCCCYR08	PERA951001I6A	2024-02-03	599	8317090590
Dalton	Loynton	Giannassi	PERA951001MCCCYR08	PERA951001I6A	2023-12-23	600	9477293024
Jacky	Pitcaithley	Block	PERA951001MCCCYR08	PERA951001I6A	2024-02-04	601	5902968119
Mag	Yarker	Benzing	PERA951001MCCCYR08	PERA951001I6A	2024-01-02	602	5863185309
Griz	Deetlefs	Boucher	PERA951001MCCCYR08	PERA951001I6A	2024-02-12	603	3196371670
Gardiner	Gwinn	Michallat	PERA951001MCCCYR08	PERA951001I6A	2023-08-15	604	4631184329
Arden	Karlsen	Huddle	PERA951001MCCCYR08	PERA951001I6A	2024-06-07	605	3290749363
Tristam	Lorkings	Letertre	PERA951001MCCCYR08	PERA951001I6A	2023-09-14	606	7093941532
Yettie	Pleace	Nunnery	PERA951001MCCCYR08	PERA951001I6A	2023-09-11	607	8417750339
Calida	Earnshaw	Habbershon	PERA951001MCCCYR08	PERA951001I6A	2024-03-03	608	7779322696
Angelico	Korda	Learie	PERA951001MCCCYR08	PERA951001I6A	2023-09-21	609	9050002145
Clevey	Glanton	Scholefield	PERA951001MCCCYR08	PERA951001I6A	2023-09-22	610	8510476594
Lothaire	Mynett	Beattie	PERA951001MCCCYR08	PERA951001I6A	2023-09-19	611	4550874708
Mariam	Wardhaw	Andrejevic	PERA951001MCCCYR08	PERA951001I6A	2023-09-02	612	9437809844
Filberte	Duny	Garland	PERA951001MCCCYR08	PERA951001I6A	2023-11-30	613	2272009212
Laurens	Dammarell	Spreckley	PERA951001MCCCYR08	PERA951001I6A	2024-04-08	614	8236208893
Carolan	Monro	Millard	PERA951001MCCCYR08	PERA951001I6A	2023-12-27	615	4058300183
Callie	Fouracre	Rhule	PERA951001MCCCYR08	PERA951001I6A	2023-07-02	616	4285582961
Reed	Starmore	Letterick	PERA951001MCCCYR08	PERA951001I6A	2023-12-23	617	1467665703
Jackqueline	Pinchback	Tomaschke	PERA951001MCCCYR08	PERA951001I6A	2023-10-19	618	7878833141
Seana	Vergine	Motte	PERA951001MCCCYR08	PERA951001I6A	2024-01-15	619	1935078119
Arielle	Bummfrey	Maiden	PERA951001MCCCYR08	PERA951001I6A	2024-03-08	620	2357353422
Randi	Bouskill	Bullerwell	PERA951001MCCCYR08	PERA951001I6A	2023-07-01	621	6716933190
Issy	Huxtable	Benjamin	PERA951001MCCCYR08	PERA951001I6A	2024-04-20	622	3239169800
Ardella	Dinkin	Croley	PERA951001MCCCYR08	PERA951001I6A	2024-01-15	623	3132585297
Faustine	Duignan	Maior	PERA951001MCCCYR08	PERA951001I6A	2023-09-06	624	4203491193
Norrie	Meneo	Ales0	PERA951001MCCCYR08	PERA951001I6A	2024-06-09	625	5156585841
Theodor	Grevatt	Courtliff	PERA951001MCCCYR08	PERA951001I6A	2023-12-28	626	401107469
Ulrich	Trembath	Malzard	PERA951001MCCCYR08	PERA951001I6A	2024-06-26	627	2376780845
Sergio	Surplice	O'Cannavan	PERA951001MCCCYR08	PERA951001I6A	2024-06-26	628	3947993749
Rafaela	Hayler	Pettman	PERA951001MCCCYR08	PERA951001I6A	2024-03-27	629	809742187
Conrado	Lawrey	Bohling	PERA951001MCCCYR08	PERA951001I6A	2023-07-07	630	3520919958
Randee	Manthroppe	Mattack	PERA951001MCCCYR08	PERA951001I6A	2024-03-06	631	2982503905
Concordia	Pracy	Stening	PERA951001MCCCYR08	PERA951001I6A	2023-08-25	632	3495880305
Karly	Stevings	Capron	PERA951001MCCCYR08	PERA951001I6A	2024-05-27	633	6191639015
Ginger	Picopp	Challinor	PERA951001MCCCYR08	PERA951001I6A	2024-01-18	634	9812917888
Karry	Mundow	Saiz	PERA951001MCCCYR08	PERA951001I6A	2024-01-05	635	673590712
Lind	O'Kuddyhy	Kynaston	PERA951001MCCCYR08	PERA951001I6A	2023-08-24	636	4181206882
Georgia	Danby	Naerup	PERA951001MCCCYR08	PERA951001I6A	2023-11-04	637	9683713874
Dallon	Gouinlock	Rabbatts	PERA951001MCCCYR08	PERA951001I6A	2023-08-17	638	6046443288
Zulema	Rawlence	Welham	PERA951001MCCCYR08	PERA951001I6A	2024-04-30	639	2792313765
Odey	Murney	Dearnly	PERA951001MCCCYR08	PERA951001I6A	2024-03-09	640	1646138414
Annadiana	Matuschek	Dungate	PERA951001MCCCYR08	PERA951001I6A	2023-11-12	641	7938396826
Betteanne	Edgeley	MacVagh	PERA951001MCCCYR08	PERA951001I6A	2023-07-23	642	1131120914
Eli	Waliszek	Doylend	PERA951001MCCCYR08	PERA951001I6A	2023-10-02	643	8579074932
Otho	Bonifazio	Couttes	PERA951001MCCCYR08	PERA951001I6A	2023-10-07	644	1176084488
Elwyn	Nurdin	Randalson	PERA951001MCCCYR08	PERA951001I6A	2023-07-17	645	6229407817
Wren	Hambrick	Doore	PERA951001MCCCYR08	PERA951001I6A	2024-06-17	646	6932104687
Dall	Beadham	Vawton	PERA951001MCCCYR08	PERA951001I6A	2024-03-25	647	3967074226
Nettle	Padula	Paskins	PERA951001MCCCYR08	PERA951001I6A	2024-04-05	648	883786036
Juliette	Robe	Halson	PERA951001MCCCYR08	PERA951001I6A	2023-12-30	649	8456511374
Mickey	Varnes	Casley	PERA951001MCCCYR08	PERA951001I6A	2024-05-06	650	7210901876
Gilli	Frays	Lilloe	PERA951001MCCCYR08	PERA951001I6A	2024-05-01	651	8906264364
Modesta	Crees	Crommett	PERA951001MCCCYR08	PERA951001I6A	2023-11-02	652	9639295302
Myrtia	Chestnutt	Waterman	PERA951001MCCCYR08	PERA951001I6A	2023-09-02	653	5230105062
Markus	Pollack	Runnacles	PERA951001MCCCYR08	PERA951001I6A	2024-02-11	654	7912403353
Zandra	Le Marquand	Giottoi	PERA951001MCCCYR08	PERA951001I6A	2023-11-09	655	3657671153
Eadmund	Lissandri	Ingleson	PERA951001MCCCYR08	PERA951001I6A	2023-12-26	656	7664045118
Dulci	Perico	Devonside	PERA951001MCCCYR08	PERA951001I6A	2023-07-22	657	3680438265
Loella	Gilbody	Swanborrow	PERA951001MCCCYR08	PERA951001I6A	2023-09-30	658	593883039
Wilmette	Baraclough	Le Grice	PERA951001MCCCYR08	PERA951001I6A	2024-01-29	659	173759289
Kris	Matelaitis	Tune	PERA951001MCCCYR08	PERA951001I6A	2023-12-14	660	4907276966
Hendrick	Pele	Friett	PERA951001MCCCYR08	PERA951001I6A	2023-12-13	661	3479322204
Maurizia	Gooderham	Davydychev	PERA951001MCCCYR08	PERA951001I6A	2024-01-31	662	901933325
Rona	O'Deoran	Hembry	PERA951001MCCCYR08	PERA951001I6A	2023-09-20	663	516791893
Marcello	Brew	Threadkell	PERA951001MCCCYR08	PERA951001I6A	2024-02-01	664	8548943785
Bart	Freschini	Vaune	PERA951001MCCCYR08	PERA951001I6A	2024-01-19	665	3633315683
Alfons	Littlewood	Yvon	PERA951001MCCCYR08	PERA951001I6A	2023-07-30	666	7638020197
Lotte	Leehane	Coke	PERA951001MCCCYR08	PERA951001I6A	2024-01-29	667	6741801189
Curry	Eland	Wareham	PERA951001MCCCYR08	PERA951001I6A	2024-01-29	668	6843003915
Grethel	Grazier	Farey	PERA951001MCCCYR08	PERA951001I6A	2024-04-22	669	3242237439
Vivyan	Miners	Myrie	PERA951001MCCCYR08	PERA951001I6A	2024-02-03	670	5878119625
Dasie	O'Donoghue	Basten	PERA951001MCCCYR08	PERA951001I6A	2023-12-21	671	5387198231
Lorri	Lisle	Doumerque	PERA951001MCCCYR08	PERA951001I6A	2024-03-15	672	2659338590
Langsdon	Fairrie	Stokes	PERA951001MCCCYR08	PERA951001I6A	2024-01-18	673	1596598123
Vania	Witheford	Hardern	PERA951001MCCCYR08	PERA951001I6A	2024-03-22	674	4646951290
Daryle	Barthropp	Olner	PERA951001MCCCYR08	PERA951001I6A	2023-08-03	675	9571486752
Gretta	Flips	Bertot	PERA951001MCCCYR08	PERA951001I6A	2023-08-16	676	8293062819
Freddie	Jammet	Tabner	PERA951001MCCCYR08	PERA951001I6A	2024-04-10	677	1238505090
Deane	Nelle	Douthwaite	PERA951001MCCCYR08	PERA951001I6A	2024-01-30	678	4215454778
Alejandro	Yerlett	Rangell	PERA951001MCCCYR08	PERA951001I6A	2024-04-21	679	4152858354
Reggie	Stempe	Oakey	PERA951001MCCCYR08	PERA951001I6A	2023-11-30	680	5710172979
Carleen	Dinneen	Thebeau	PERA951001MCCCYR08	PERA951001I6A	2023-11-20	681	8411024768
Edmund	Eberdt	Sambath	PERA951001MCCCYR08	PERA951001I6A	2023-08-29	682	6225812830
Morissa	Makeswell	Cherry	PERA951001MCCCYR08	PERA951001I6A	2023-12-31	683	6975051216
Dione	Pinckard	Poll	PERA951001MCCCYR08	PERA951001I6A	2024-05-18	684	3854452195
Benedetta	Roman	MacPhee	PERA951001MCCCYR08	PERA951001I6A	2024-03-14	685	8153869086
Truda	Ferreras	Podd	PERA951001MCCCYR08	PERA951001I6A	2023-07-03	686	8448103076
Katti	Clayworth	Musk	PERA951001MCCCYR08	PERA951001I6A	2023-11-20	687	7979484894
Bryan	Roger	Arents	PERA951001MCCCYR08	PERA951001I6A	2024-02-13	688	2115063201
Olag	Pien	Noye	PERA951001MCCCYR08	PERA951001I6A	2023-07-12	689	9214399441
Scarlett	Senyard	Walcar	PERA951001MCCCYR08	PERA951001I6A	2024-01-08	690	5426705496
Stephenie	Muller	Pool	PERA951001MCCCYR08	PERA951001I6A	2023-07-07	691	8471565374
Rosalind	Rodder	Nesterov	PERA951001MCCCYR08	PERA951001I6A	2023-08-25	692	9322785489
Dorise	Haddrill	Irce	PERA951001MCCCYR08	PERA951001I6A	2024-05-13	693	9983703815
Imogen	Stanworth	Climance	PERA951001MCCCYR08	PERA951001I6A	2024-01-09	694	6728694560
Enid	Lamberts	Loffel	PERA951001MCCCYR08	PERA951001I6A	2024-01-19	695	4536253017
Fidelio	Beardall	Ellins	PERA951001MCCCYR08	PERA951001I6A	2024-01-08	696	81549210
Philippine	Haselup	Whitsun	PERA951001MCCCYR08	PERA951001I6A	2023-10-16	697	583701914
Niels	Sprowles	Buckham	PERA951001MCCCYR08	PERA951001I6A	2023-09-03	698	7975068942
Lotti	Emmines	Boumphrey	PERA951001MCCCYR08	PERA951001I6A	2023-11-02	699	7867449469
Margaux	Croneen	Sagg	PERA951001MCCCYR08	PERA951001I6A	2023-10-09	700	1050094522
Devinne	Chapleo	Naptin	PERA951001MCCCYR08	PERA951001I6A	2024-05-26	701	3073001239
Cordula	Rawlin	Darwent	PERA951001MCCCYR08	PERA951001I6A	2024-02-25	702	5858203582
Cosmo	Bennell	Lind	PERA951001MCCCYR08	PERA951001I6A	2024-06-13	703	4761792817
Margarethe	Cuttles	Lawranson	PERA951001MCCCYR08	PERA951001I6A	2023-08-05	704	6553374015
Mariellen	Romanet	Bussel	PERA951001MCCCYR08	PERA951001I6A	2024-05-28	705	2866586867
Aeriel	Jedrzejczyk	Hellis	PERA951001MCCCYR08	PERA951001I6A	2023-09-04	706	4434883011
Diego	Nashe	Rimes	PERA951001MCCCYR08	PERA951001I6A	2023-07-10	707	7153464441
Raff	Punshon	Kinig	PERA951001MCCCYR08	PERA951001I6A	2023-11-16	708	7809402595
Sibylle	Feighney	Fattori	PERA951001MCCCYR08	PERA951001I6A	2023-09-29	709	3219451470
Darius	Howcroft	Davys	PERA951001MCCCYR08	PERA951001I6A	2024-02-11	710	3736588178
Leon	Misk	Chart	PERA951001MCCCYR08	PERA951001I6A	2024-04-01	711	7722421334
Erhart	Farragher	Butlin	PERA951001MCCCYR08	PERA951001I6A	2023-07-06	712	2654138615
Hildegarde	McNickle	Outridge	PERA951001MCCCYR08	PERA951001I6A	2024-04-22	713	4673166736
Lissi	Hughill	Orgee	PERA951001MCCCYR08	PERA951001I6A	2023-12-03	714	6763196962
Papagena	Di Pietro	Olrenshaw	PERA951001MCCCYR08	PERA951001I6A	2023-10-24	715	3726863818
Georgetta	Culter	Schenfisch	PERA951001MCCCYR08	PERA951001I6A	2024-04-04	716	7978230562
Urson	Tyres	Bainbridge	PERA951001MCCCYR08	PERA951001I6A	2023-08-19	717	9893061679
Nels	Anthona	O'Keeffe	PERA951001MCCCYR08	PERA951001I6A	2023-12-18	718	406027781
Nolan	Shower	Brambill	PERA951001MCCCYR08	PERA951001I6A	2024-05-04	719	7183778517
Risa	Feechan	Rallinshaw	PERA951001MCCCYR08	PERA951001I6A	2023-12-06	720	3339351414
Kassia	Rotherham	Klemz	PERA951001MCCCYR08	PERA951001I6A	2024-04-11	721	9641613189
Casi	Winchurch	Axton	PERA951001MCCCYR08	PERA951001I6A	2024-05-12	722	3997635102
Isis	Maypole	Kedward	PERA951001MCCCYR08	PERA951001I6A	2023-12-19	723	7602966740
Hedda	Aberdeen	Dillimore	PERA951001MCCCYR08	PERA951001I6A	2024-02-09	724	4190632139
Nomi	Cushe	Strong	PERA951001MCCCYR08	PERA951001I6A	2023-10-09	725	1805559494
Beryl	Cammish	Hatherill	PERA951001MCCCYR08	PERA951001I6A	2023-08-14	726	1244834629
Vannie	Praten	Coale	PERA951001MCCCYR08	PERA951001I6A	2023-12-29	727	6434232357
Meredith	Kairns	Gravestone	PERA951001MCCCYR08	PERA951001I6A	2023-12-23	728	8945971017
Stace	Meharg	Twiddy	PERA951001MCCCYR08	PERA951001I6A	2023-11-05	729	7089423239
Sigmund	Caplin	Wooff	PERA951001MCCCYR08	PERA951001I6A	2024-02-20	730	3617125689
Jourdan	McGettigan	Conradsen	PERA951001MCCCYR08	PERA951001I6A	2024-05-10	731	2183783761
Yorgos	Primak	Camps	PERA951001MCCCYR08	PERA951001I6A	2024-01-23	732	3874226298
Clementine	Meeron	Mash	PERA951001MCCCYR08	PERA951001I6A	2024-06-13	733	1188949543
Zeke	Rickerd	Dumphrey	PERA951001MCCCYR08	PERA951001I6A	2024-02-19	734	608398632
Clemence	Ducrow	Borleace	PERA951001MCCCYR08	PERA951001I6A	2024-03-08	735	3360386515
Lanni	Garrettson	Cheson	PERA951001MCCCYR08	PERA951001I6A	2024-01-03	736	8162413715
Randie	Coutthart	Nevet	PERA951001MCCCYR08	PERA951001I6A	2023-09-22	737	3892989915
Wren	Allso	Nobles	PERA951001MCCCYR08	PERA951001I6A	2024-04-16	738	7783702481
Ivory	Baynam	Waterdrinker	PERA951001MCCCYR08	PERA951001I6A	2023-07-27	739	7861624692
Anni	McCleod	Eskell	PERA951001MCCCYR08	PERA951001I6A	2024-03-11	740	9317169597
Bertrand	Dunican	Hadwen	PERA951001MCCCYR08	PERA951001I6A	2024-04-18	741	4897171539
Stephanie	Cassedy	Frickey	PERA951001MCCCYR08	PERA951001I6A	2023-12-16	742	4401962648
Alvis	Fere	Keech	PERA951001MCCCYR08	PERA951001I6A	2024-05-22	743	1027960960
Lizzy	Waddams	Odde	PERA951001MCCCYR08	PERA951001I6A	2024-05-11	744	8610839702
Genvieve	Scudamore	Vinall	PERA951001MCCCYR08	PERA951001I6A	2023-09-09	745	8769832838
Berny	Gerriets	Hanbridge	PERA951001MCCCYR08	PERA951001I6A	2024-02-22	746	3318662216
Cullan	Cervantes	Inott	PERA951001MCCCYR08	PERA951001I6A	2023-12-03	747	7943164709
Erda	Bircher	Stubbington	PERA951001MCCCYR08	PERA951001I6A	2023-09-21	748	1124497374
Rickard	Weeds	Francis	PERA951001MCCCYR08	PERA951001I6A	2023-10-14	749	5053876045
Tina	Fortune	Beresford	PERA951001MCCCYR08	PERA951001I6A	2023-07-21	750	2146676957
Woody	Scrivener	Malham	PERA951001MCCCYR08	PERA951001I6A	2024-02-11	751	1594900310
Christa	Gwilym	Deverson	PERA951001MCCCYR08	PERA951001I6A	2023-10-25	752	8635126890
Batholomew	Shelp	Cleeve	PERA951001MCCCYR08	PERA951001I6A	2024-04-23	753	7238265990
Irwinn	Caller	Whorlton	PERA951001MCCCYR08	PERA951001I6A	2023-08-23	754	4042198562
Edsel	Brafield	Erie	PERA951001MCCCYR08	PERA951001I6A	2023-07-22	755	7056208940
Conan	Drowsfield	Bewshaw	PERA951001MCCCYR08	PERA951001I6A	2024-03-25	756	1077786115
Isabella	Wedderburn	Upward	PERA951001MCCCYR08	PERA951001I6A	2024-03-28	757	6633611854
Torie	Kidman	Baldacco	PERA951001MCCCYR08	PERA951001I6A	2024-01-11	758	4806429643
Fitzgerald	Beckles	Indruch	PERA951001MCCCYR08	PERA951001I6A	2023-09-26	759	7169719460
Alex	McClenan	Grisenthwaite	PERA951001MCCCYR08	PERA951001I6A	2023-08-09	760	4607564478
Barnebas	Dougary	Machans	PERA951001MCCCYR08	PERA951001I6A	2023-10-28	761	8489746052
Iosep	Thoms	Bicker	PERA951001MCCCYR08	PERA951001I6A	2024-05-16	762	9193952635
Ameline	Safe	Kort	PERA951001MCCCYR08	PERA951001I6A	2024-05-26	763	6346829963
Dotti	Ruddle	O' Mulderrig	PERA951001MCCCYR08	PERA951001I6A	2024-03-04	764	7616767702
Melinda	Hellewell	Escolme	PERA951001MCCCYR08	PERA951001I6A	2023-08-13	765	3596490847
Madeline	Dodge	Imison	PERA951001MCCCYR08	PERA951001I6A	2024-01-17	766	5075044034
Lew	Braddock	Yurkevich	PERA951001MCCCYR08	PERA951001I6A	2024-04-26	767	2209371937
Melany	Grote	Delacourt	PERA951001MCCCYR08	PERA951001I6A	2023-09-30	768	4338751193
Adriano	Clutterham	Ridsdole	PERA951001MCCCYR08	PERA951001I6A	2024-05-26	769	8374983701
Turner	Rabbatts	Stoeck	PERA951001MCCCYR08	PERA951001I6A	2023-10-29	770	7800646327
Robina	Folk	Churn	PERA951001MCCCYR08	PERA951001I6A	2023-11-13	771	5310829822
Sinclare	Orritt	Tritten	PERA951001MCCCYR08	PERA951001I6A	2024-02-16	772	4462035143
Marquita	Orring	Gerauld	PERA951001MCCCYR08	PERA951001I6A	2023-10-05	773	4438474728
Ulrich	Boyda	Babar	PERA951001MCCCYR08	PERA951001I6A	2023-11-02	774	402285700
Raymond	Pendlenton	Gager	PERA951001MCCCYR08	PERA951001I6A	2023-08-03	775	7344513544
Gabey	Alcalde	Pulman	PERA951001MCCCYR08	PERA951001I6A	2023-08-04	776	8767878318
Silvie	Freeberne	Josskoviz	PERA951001MCCCYR08	PERA951001I6A	2023-08-04	777	8547221794
Othilia	Thinn	Antonelli	PERA951001MCCCYR08	PERA951001I6A	2024-05-10	778	3199384536
Barron	Ternott	Vanini	PERA951001MCCCYR08	PERA951001I6A	2023-11-05	779	2493293576
Christophorus	Lalor	Copas	PERA951001MCCCYR08	PERA951001I6A	2023-08-03	780	9239975586
Antonin	Pennoni	Puxley	PERA951001MCCCYR08	PERA951001I6A	2023-10-29	781	8719784945
Jacintha	McWhin	Sayce	PERA951001MCCCYR08	PERA951001I6A	2024-05-17	782	927884291
Fran	Shorten	Pantone	PERA951001MCCCYR08	PERA951001I6A	2023-07-18	783	8481584355
Joli	Borland	Heditch	PERA951001MCCCYR08	PERA951001I6A	2023-11-08	784	188498206
Jami	Caines	Feyer	PERA951001MCCCYR08	PERA951001I6A	2023-12-11	785	534467938
Emalia	Meddows	Digman	PERA951001MCCCYR08	PERA951001I6A	2024-01-05	786	5653729396
Ariel	Zupone	Stirland	PERA951001MCCCYR08	PERA951001I6A	2023-07-08	787	5228028390
Eward	Leathley	Cottel	PERA951001MCCCYR08	PERA951001I6A	2023-10-13	788	3435550538
Minor	Tweede	Scollan	PERA951001MCCCYR08	PERA951001I6A	2023-08-05	789	3546190734
Ekaterina	Berrane	Morais	PERA951001MCCCYR08	PERA951001I6A	2023-09-22	790	1134220219
Miner	Yude	Lambird	PERA951001MCCCYR08	PERA951001I6A	2023-09-29	791	7295617485
Shurwood	Binns	Caskey	PERA951001MCCCYR08	PERA951001I6A	2023-10-20	792	8695937844
Maryanna	Pullinger	Hedger	PERA951001MCCCYR08	PERA951001I6A	2024-03-25	793	1187501840
Fin	Tottman	De Filippis	PERA951001MCCCYR08	PERA951001I6A	2023-07-12	794	8928032148
Lincoln	Fain	Tschierse	PERA951001MCCCYR08	PERA951001I6A	2024-04-14	795	8482034871
Salomon	Thorald	Gregolin	PERA951001MCCCYR08	PERA951001I6A	2024-01-19	796	7581952975
Kelley	Hearons	Bernadzki	PERA951001MCCCYR08	PERA951001I6A	2023-09-04	797	6538147046
Tarrance	Martill	Melvin	PERA951001MCCCYR08	PERA951001I6A	2024-06-06	798	6663147668
Angelique	Kears	Sunley	PERA951001MCCCYR08	PERA951001I6A	2024-03-05	799	3679407106
Colan	Colegate	MacFadyen	PERA951001MCCCYR08	PERA951001I6A	2024-04-04	800	5970477265
Torry	Prendergast	Cowpland	PERA951001MCCCYR08	PERA951001I6A	2024-03-23	801	2482904463
Norrie	Cathcart	Chastenet	PERA951001MCCCYR08	PERA951001I6A	2023-11-29	802	7259383267
Hansiain	Mucklestone	McLoney	PERA951001MCCCYR08	PERA951001I6A	2024-01-14	803	3489782968
Eadith	Gerler	Lochhead	PERA951001MCCCYR08	PERA951001I6A	2024-04-12	804	4484102927
Aubert	Idenden	Pentin	PERA951001MCCCYR08	PERA951001I6A	2023-07-12	805	2833035519
Rory	Oultram	Upsale	PERA951001MCCCYR08	PERA951001I6A	2024-04-08	806	811203107
Ripley	Romagosa	McVane	PERA951001MCCCYR08	PERA951001I6A	2023-08-12	807	8993684707
Oliviero	Wiltshaw	Olyfat	PERA951001MCCCYR08	PERA951001I6A	2024-01-26	808	785370951
Wrennie	Dodimead	Leedes	PERA951001MCCCYR08	PERA951001I6A	2023-10-23	809	3673737406
Jobye	Isenor	Ranken	PERA951001MCCCYR08	PERA951001I6A	2023-08-09	810	5960275600
Domingo	Plummer	Reyna	PERA951001MCCCYR08	PERA951001I6A	2024-02-22	811	2058471156
Nolie	Kirsop	Casarini	PERA951001MCCCYR08	PERA951001I6A	2024-05-09	812	7627464234
Karel	Skeates	Sedger	PERA951001MCCCYR08	PERA951001I6A	2023-08-22	813	5673021070
Waring	Mille	Wyleman	PERA951001MCCCYR08	PERA951001I6A	2023-12-10	814	1874329052
Odessa	Hanby	Palfrey	PERA951001MCCCYR08	PERA951001I6A	2023-09-28	815	4069390650
Merle	Emmens	Neate	PERA951001MCCCYR08	PERA951001I6A	2024-03-16	816	9814773581
Roman	Carradice	Motto	PERA951001MCCCYR08	PERA951001I6A	2024-01-02	817	1860456928
Niccolo	Bennington	Bernardeschi	PERA951001MCCCYR08	PERA951001I6A	2024-05-24	818	1275728294
Maynard	Bridywater	Wilsee	PERA951001MCCCYR08	PERA951001I6A	2024-04-05	819	3712786506
Mame	Blaasch	Filochov	PERA951001MCCCYR08	PERA951001I6A	2023-10-09	820	2381940596
Charmion	Winterflood	Life	PERA951001MCCCYR08	PERA951001I6A	2023-11-08	821	4251787544
Winnah	Ickov	Haverty	PERA951001MCCCYR08	PERA951001I6A	2023-07-14	822	8594642717
Susannah	Steinham	Wilhelmy	PERA951001MCCCYR08	PERA951001I6A	2023-11-18	823	9882178995
Benn	Deeny	Gaukrodge	PERA951001MCCCYR08	PERA951001I6A	2024-06-13	824	7539804963
Garold	Bloom	Berridge	PERA951001MCCCYR08	PERA951001I6A	2023-12-25	825	5475729514
Niki	Drayn	Najara	PERA951001MCCCYR08	PERA951001I6A	2024-06-16	826	7230357268
Butch	Bernini	Edsall	PERA951001MCCCYR08	PERA951001I6A	2023-06-27	827	6971050495
Yasmeen	Furney	Carrel	PERA951001MCCCYR08	PERA951001I6A	2023-09-11	828	2573766985
Jeremiah	Goodoune	Blewett	PERA951001MCCCYR08	PERA951001I6A	2023-12-21	829	5455508881
Hortense	Plomer	Rigby	PERA951001MCCCYR08	PERA951001I6A	2024-04-22	830	5689145327
Gail	Yurchishin	Petrowsky	PERA951001MCCCYR08	PERA951001I6A	2023-11-19	831	2253733792
Wendy	Tunno	Bineham	PERA951001MCCCYR08	PERA951001I6A	2023-12-30	832	891485880
Lianna	Matt	Saywood	PERA951001MCCCYR08	PERA951001I6A	2024-02-08	833	7100954460
Nels	Cromer	Renish	PERA951001MCCCYR08	PERA951001I6A	2024-04-04	834	512587442
Goddart	Rottcher	Leeson	PERA951001MCCCYR08	PERA951001I6A	2024-04-25	835	5308697965
Lizabeth	Wavish	Ewles	PERA951001MCCCYR08	PERA951001I6A	2024-05-03	836	234007265
Clint	Mewhirter	Yanyshev	PERA951001MCCCYR08	PERA951001I6A	2024-02-14	837	5579231873
Augusta	Weightman	Cattini	PERA951001MCCCYR08	PERA951001I6A	2023-12-21	838	1569329389
Lewes	Passfield	Welden	PERA951001MCCCYR08	PERA951001I6A	2023-12-13	839	5625708665
Dynah	Sleightholme	Tierny	PERA951001MCCCYR08	PERA951001I6A	2023-10-05	840	7508607384
Aurilia	Stanlack	Mcasparan	PERA951001MCCCYR08	PERA951001I6A	2024-05-08	841	3777742333
Corine	Phethean	Cordier	PERA951001MCCCYR08	PERA951001I6A	2023-10-26	842	3215446359
Beverie	Senten	Dyton	PERA951001MCCCYR08	PERA951001I6A	2023-12-04	843	5857841151
Onfre	Salliss	Dory	PERA951001MCCCYR08	PERA951001I6A	2024-04-21	844	1269850172
Kerrie	Parradye	Halling	PERA951001MCCCYR08	PERA951001I6A	2023-08-24	845	5889147498
Ora	Wingfield	Redish	PERA951001MCCCYR08	PERA951001I6A	2024-01-04	846	131632655
Kenna	Wegner	Drinkel	PERA951001MCCCYR08	PERA951001I6A	2023-12-15	847	6667655595
Alick	Gerrens	Moodie	PERA951001MCCCYR08	PERA951001I6A	2023-08-26	848	9829816850
Gisela	Mincher	Basson	PERA951001MCCCYR08	PERA951001I6A	2023-11-08	849	1039673988
Germana	Mouatt	Tuft	PERA951001MCCCYR08	PERA951001I6A	2024-02-05	850	4988163865
Viki	Beccera	Yearns	PERA951001MCCCYR08	PERA951001I6A	2024-04-08	851	8602866909
Doti	Muris	Sartain	PERA951001MCCCYR08	PERA951001I6A	2024-04-10	852	1076240313
Arabele	Argo	Milbank	PERA951001MCCCYR08	PERA951001I6A	2023-11-19	853	5872794118
Jill	Heintzsch	Noli	PERA951001MCCCYR08	PERA951001I6A	2023-07-13	854	4733066090
Britney	Swetman	Walster	PERA951001MCCCYR08	PERA951001I6A	2024-04-27	855	3527116818
Rosalia	Adam	Hainge	PERA951001MCCCYR08	PERA951001I6A	2023-11-07	856	8892600915
Irwin	Pipe	Treker	PERA951001MCCCYR08	PERA951001I6A	2023-12-05	857	8346780826
Darlleen	Allenby	Eddisforth	PERA951001MCCCYR08	PERA951001I6A	2023-08-25	858	1256206458
Lynnet	Wiper	Sibly	PERA951001MCCCYR08	PERA951001I6A	2024-04-21	859	9604557122
Gage	Klimashevich	Wadhams	PERA951001MCCCYR08	PERA951001I6A	2023-08-15	860	7712663343
Faydra	Roseby	Allman	PERA951001MCCCYR08	PERA951001I6A	2023-11-14	861	9636711216
Edward	Gamett	Attreed	PERA951001MCCCYR08	PERA951001I6A	2024-04-15	862	8254582017
Sadye	Ridder	McInerney	PERA951001MCCCYR08	PERA951001I6A	2023-07-09	863	5758289345
Yorke	Itzhaki	Gane	PERA951001MCCCYR08	PERA951001I6A	2023-09-10	864	8826430756
Moyra	Gullifant	Chicken	PERA951001MCCCYR08	PERA951001I6A	2023-12-28	865	4437793285
Nealson	Huscroft	Helks	PERA951001MCCCYR08	PERA951001I6A	2023-10-04	866	4252500508
Devlin	Birch	Comettoi	PERA951001MCCCYR08	PERA951001I6A	2024-06-08	867	6131776601
Vidovic	Umbert	Bottomer	PERA951001MCCCYR08	PERA951001I6A	2023-08-19	868	4942494176
Pen	Stanett	Ainger	PERA951001MCCCYR08	PERA951001I6A	2024-05-02	869	5667360160
Allis	D'Cruze	Crangle	PERA951001MCCCYR08	PERA951001I6A	2024-04-28	870	5174468711
Arturo	Cruxton	Ward	PERA951001MCCCYR08	PERA951001I6A	2024-01-11	871	1310105235
Robinette	Matchell	Hornung	PERA951001MCCCYR08	PERA951001I6A	2023-11-15	872	801175526
Joanne	Doogan	Ferrieroi	PERA951001MCCCYR08	PERA951001I6A	2024-03-30	873	7490120594
Drugi	Gofforth	Coultish	PERA951001MCCCYR08	PERA951001I6A	2024-06-12	874	8343711238
Margalit	Heinsen	Blasing	PERA951001MCCCYR08	PERA951001I6A	2024-01-13	875	1556244444
Corinne	Gurling	Upsale	PERA951001MCCCYR08	PERA951001I6A	2023-11-28	876	4227306639
Saree	Furtado	Tumioto	PERA951001MCCCYR08	PERA951001I6A	2024-03-07	877	941832783
Corby	Stuckes	Skey	PERA951001MCCCYR08	PERA951001I6A	2023-09-25	878	4526876186
Finley	Clotworthy	Ledwidge	PERA951001MCCCYR08	PERA951001I6A	2023-10-10	879	7850473620
Eleonore	Maffi	MacCoughen	PERA951001MCCCYR08	PERA951001I6A	2024-01-24	880	5291517743
Agnes	Quakley	Lambourne	PERA951001MCCCYR08	PERA951001I6A	2023-11-22	881	6003598115
Eldridge	Fader	Connors	PERA951001MCCCYR08	PERA951001I6A	2024-06-26	882	6487353035
Doralia	Tassel	Jimpson	PERA951001MCCCYR08	PERA951001I6A	2023-09-21	883	4460445220
Reese	Daintrey	Bende	PERA951001MCCCYR08	PERA951001I6A	2023-12-12	884	5718128073
Ilario	Polon	Charte	PERA951001MCCCYR08	PERA951001I6A	2024-04-13	885	3818086567
Pamela	Roskeilly	Girth	PERA951001MCCCYR08	PERA951001I6A	2023-10-01	886	3628805139
Arty	Philcock	O'Sullivan	PERA951001MCCCYR08	PERA951001I6A	2023-11-26	887	4424865045
Stanly	Whetson	Bottlestone	PERA951001MCCCYR08	PERA951001I6A	2023-09-29	888	1666904066
Rebecka	Vian	Wallace	PERA951001MCCCYR08	PERA951001I6A	2023-09-14	889	5393710208
Olwen	Clapshaw	Dymocke	PERA951001MCCCYR08	PERA951001I6A	2024-04-11	890	3159190013
Fitzgerald	Revie	Fewless	PERA951001MCCCYR08	PERA951001I6A	2024-04-06	891	6007845109
Darryl	Frederick	Abrahams	PERA951001MCCCYR08	PERA951001I6A	2024-05-04	892	2240272465
Linzy	Addionisio	Comiskey	PERA951001MCCCYR08	PERA951001I6A	2023-08-13	893	3810510270
Giana	Mc-Kerley	Gorler	PERA951001MCCCYR08	PERA951001I6A	2023-09-15	894	1600418724
Gerda	Ritchley	Szantho	PERA951001MCCCYR08	PERA951001I6A	2024-05-10	895	8984835935
Alan	Elleton	Amott	PERA951001MCCCYR08	PERA951001I6A	2023-11-15	896	2924116171
Rabi	Banghe	Cogan	PERA951001MCCCYR08	PERA951001I6A	2024-05-17	897	4464178278
Otto	Marte	Borgesio	PERA951001MCCCYR08	PERA951001I6A	2024-02-14	898	3186960037
Maryrose	Call	Limpricht	PERA951001MCCCYR08	PERA951001I6A	2024-01-06	899	1392950406
Joeann	Lowin	Watling	PERA951001MCCCYR08	PERA951001I6A	2023-10-13	900	2384431609
Uriah	McGahern	Maasze	PERA951001MCCCYR08	PERA951001I6A	2023-12-12	901	1996527959
Annemarie	Hardbattle	Binge	PERA951001MCCCYR08	PERA951001I6A	2024-06-23	902	7191978538
Aurelea	Szymon	Plaid	PERA951001MCCCYR08	PERA951001I6A	2023-12-05	903	5103304201
Sybille	Solan	Heatlie	PERA951001MCCCYR08	PERA951001I6A	2024-01-03	904	3774430446
Ambrose	Cunio	Chater	PERA951001MCCCYR08	PERA951001I6A	2024-02-27	905	8674869785
Bride	Hamor	Grigor	PERA951001MCCCYR08	PERA951001I6A	2024-05-07	906	4701980145
Nels	Bonney	Dunlop	PERA951001MCCCYR08	PERA951001I6A	2023-07-17	907	6311597357
Brett	Kennerley	Michele	PERA951001MCCCYR08	PERA951001I6A	2024-03-23	908	9860207488
Lenci	Kruse	Rosell	PERA951001MCCCYR08	PERA951001I6A	2024-05-09	909	3975517522
Danell	McConnulty	D'Hooghe	PERA951001MCCCYR08	PERA951001I6A	2024-03-29	910	198416288
Sibyl	Cork	Barnbrook	PERA951001MCCCYR08	PERA951001I6A	2024-05-30	911	8394111289
Annice	Bilney	Downey	PERA951001MCCCYR08	PERA951001I6A	2024-06-26	912	5844553616
Christel	Durker	Carnock	PERA951001MCCCYR08	PERA951001I6A	2024-02-28	913	2115117441
Colver	Trask	MacConnal	PERA951001MCCCYR08	PERA951001I6A	2024-03-13	914	1616391456
Ingunna	Lafontaine	Spread	PERA951001MCCCYR08	PERA951001I6A	2023-09-23	915	3956474023
Naomi	Stow	Gymlett	PERA951001MCCCYR08	PERA951001I6A	2023-10-21	916	1858619025
Gannie	Muscroft	Stannus	PERA951001MCCCYR08	PERA951001I6A	2024-05-04	917	848450256
Nona	O'Reilly	Monier	PERA951001MCCCYR08	PERA951001I6A	2023-12-03	918	5776626579
Coreen	Stidston	Wind	PERA951001MCCCYR08	PERA951001I6A	2023-11-17	919	4293490000
Baird	Kienle	Paulig	PERA951001MCCCYR08	PERA951001I6A	2023-08-06	920	2688232320
Ira	Rignoldes	Worthy	PERA951001MCCCYR08	PERA951001I6A	2024-04-22	921	5290623663
Guido	Varsey	Clifforth	PERA951001MCCCYR08	PERA951001I6A	2023-11-04	922	512158452
Rorke	Hadny	Douglas	PERA951001MCCCYR08	PERA951001I6A	2023-12-13	923	1248142268
Amory	Barles	Kitchenside	PERA951001MCCCYR08	PERA951001I6A	2023-11-24	924	5660602762
Celeste	Margaritelli	Bark	PERA951001MCCCYR08	PERA951001I6A	2023-10-21	925	4515512625
Dagny	Sweedy	Abramovitch	PERA951001MCCCYR08	PERA951001I6A	2024-06-11	926	5643861348
Ingamar	Simmen	Witheford	PERA951001MCCCYR08	PERA951001I6A	2023-12-27	927	5454681989
Taffy	Ovington	Shelmardine	PERA951001MCCCYR08	PERA951001I6A	2024-03-08	928	6598240352
Dianemarie	Evans	Cearley	PERA951001MCCCYR08	PERA951001I6A	2023-12-27	929	2085848184
Cointon	Newman	Gruby	PERA951001MCCCYR08	PERA951001I6A	2024-03-03	930	665562896
Lockwood	Brant	Steuart	PERA951001MCCCYR08	PERA951001I6A	2024-03-07	931	2008927539
Lambert	Mc Curlye	Blodg	PERA951001MCCCYR08	PERA951001I6A	2024-04-01	932	6691527992
Kacy	Bremen	Roussel	PERA951001MCCCYR08	PERA951001I6A	2024-06-07	933	9045804379
Antonella	Nevin	Aseef	PERA951001MCCCYR08	PERA951001I6A	2023-11-17	934	9052156131
Sherye	Keitch	Rodinger	PERA951001MCCCYR08	PERA951001I6A	2023-12-24	935	3899985389
Thaine	Greig	Ghilardi	PERA951001MCCCYR08	PERA951001I6A	2024-03-24	936	3492839568
Marcille	Sandle	Batson	PERA951001MCCCYR08	PERA951001I6A	2023-10-14	937	7767614174
Isiahi	Siaspinski	Fishly	PERA951001MCCCYR08	PERA951001I6A	2024-04-07	938	4179660482
Quill	Pettwood	Cordery	PERA951001MCCCYR08	PERA951001I6A	2023-09-12	939	2375734882
Tabbi	Klehn	Cheeseman	PERA951001MCCCYR08	PERA951001I6A	2023-10-18	940	5794981180
Basilius	Spiers	Sandyford	PERA951001MCCCYR08	PERA951001I6A	2023-12-18	941	1698283350
Melodie	Brunger	McLewd	PERA951001MCCCYR08	PERA951001I6A	2024-06-05	942	8929518419
Valentina	Jahndel	Kinder	PERA951001MCCCYR08	PERA951001I6A	2023-07-04	943	2869455496
Nealon	Kiddy	Balle	PERA951001MCCCYR08	PERA951001I6A	2024-04-23	944	6244064518
Loy	Cotgrove	Nias	PERA951001MCCCYR08	PERA951001I6A	2024-06-19	945	5654447750
Gaby	Cranny	Jurkowski	PERA951001MCCCYR08	PERA951001I6A	2023-12-02	946	1997226197
Tyson	Station	Ovell	PERA951001MCCCYR08	PERA951001I6A	2024-06-20	947	527180343
Niall	Tuft	McColgan	PERA951001MCCCYR08	PERA951001I6A	2023-12-04	948	4949375180
Rogers	Rosenbush	Jorio	PERA951001MCCCYR08	PERA951001I6A	2024-05-29	949	6807353286
Daphna	Jonsson	Puckinghorne	PERA951001MCCCYR08	PERA951001I6A	2024-03-12	950	1849251215
Curcio	Caddock	Bebbell	PERA951001MCCCYR08	PERA951001I6A	2023-12-01	951	4802172281
Torie	Rubenchik	Kenningham	PERA951001MCCCYR08	PERA951001I6A	2023-09-16	952	8439686846
Ty	Pridmore	Mauger	PERA951001MCCCYR08	PERA951001I6A	2023-09-16	953	5134705313
Herve	Whilde	Thaxter	PERA951001MCCCYR08	PERA951001I6A	2023-10-23	954	2553847629
Raoul	O'Rodane	Satteford	PERA951001MCCCYR08	PERA951001I6A	2023-11-26	955	2154889603
Robb	Strooband	Van Vuuren	PERA951001MCCCYR08	PERA951001I6A	2023-07-01	956	35789204
Martie	Charrington	Pattlel	PERA951001MCCCYR08	PERA951001I6A	2023-07-14	957	8978600816
Sibilla	Bussens	Bowdery	PERA951001MCCCYR08	PERA951001I6A	2024-04-15	958	6731114103
Rheta	Kondratovich	Brackenbury	PERA951001MCCCYR08	PERA951001I6A	2023-10-23	959	2724954688
Roderich	Browning	Dobinson	PERA951001MCCCYR08	PERA951001I6A	2023-08-27	960	9107959915
Bryn	Illesley	Twamley	PERA951001MCCCYR08	PERA951001I6A	2024-01-26	961	4683344688
Shaina	Measom	Lyon	PERA951001MCCCYR08	PERA951001I6A	2023-11-27	962	518983846
Rory	Shenfisch	Slyne	PERA951001MCCCYR08	PERA951001I6A	2023-08-06	963	8226568722
Ebonee	Rennebach	Bradd	PERA951001MCCCYR08	PERA951001I6A	2023-10-03	964	6882054576
Valentino	Etienne	Chin	PERA951001MCCCYR08	PERA951001I6A	2024-01-27	965	3808825707
Rose	Wooton	Tierny	PERA951001MCCCYR08	PERA951001I6A	2023-11-16	966	647650541
Alonzo	Stork	Bittany	PERA951001MCCCYR08	PERA951001I6A	2023-11-25	967	2441513176
Liza	Danielsson	Brick	PERA951001MCCCYR08	PERA951001I6A	2024-03-27	968	6264126985
Shurlocke	Bayman	Larmor	PERA951001MCCCYR08	PERA951001I6A	2023-11-11	969	6431984897
Gibb	Fortie	Liveing	PERA951001MCCCYR08	PERA951001I6A	2023-09-10	970	2889438597
Phillip	Bridger	Aime	PERA951001MCCCYR08	PERA951001I6A	2024-04-07	971	7175200889
Ira	Hyatt	Trounson	PERA951001MCCCYR08	PERA951001I6A	2023-09-06	972	7440948505
Kaia	Screaton	Dysert	PERA951001MCCCYR08	PERA951001I6A	2024-02-27	973	1020102365
Ted	Kermode	Sheara	PERA951001MCCCYR08	PERA951001I6A	2024-01-08	974	6789935657
Jeanine	Gilley	Shapiro	PERA951001MCCCYR08	PERA951001I6A	2024-05-04	975	659405660
Ringo	Dundredge	Leber	PERA951001MCCCYR08	PERA951001I6A	2023-08-15	976	5588012747
Sandi	Bridgeland	Murrells	PERA951001MCCCYR08	PERA951001I6A	2024-02-29	977	5798406997
Emmit	Greg	Brockbank	PERA951001MCCCYR08	PERA951001I6A	2024-05-17	978	2712967097
Madelene	Barchrameev	Biaggiotti	PERA951001MCCCYR08	PERA951001I6A	2023-12-28	979	1028055196
Augustin	Drable	Dunphy	PERA951001MCCCYR08	PERA951001I6A	2023-08-15	980	3150999804
Teodorico	Sauniere	Crevy	PERA951001MCCCYR08	PERA951001I6A	2024-06-23	981	1446852644
Roselin	McSharry	Mathes	PERA951001MCCCYR08	PERA951001I6A	2023-08-21	982	5422302648
Dalila	Andersson	Wilshaw	PERA951001MCCCYR08	PERA951001I6A	2024-04-27	983	9870952607
Denny	Rawstorn	McMoyer	PERA951001MCCCYR08	PERA951001I6A	2023-11-04	984	8900003399
Margalo	Gibbie	Bellas	PERA951001MCCCYR08	PERA951001I6A	2024-01-18	985	5285821576
Hart	Sepey	Abramow	PERA951001MCCCYR08	PERA951001I6A	2023-09-19	986	7980989546
Giorgi	Kelson	Cobley	PERA951001MCCCYR08	PERA951001I6A	2023-11-15	987	3884847503
Pepito	Glyn	MacKall	PERA951001MCCCYR08	PERA951001I6A	2023-11-11	988	1086257553
Ernie	Tappor	Roos	PERA951001MCCCYR08	PERA951001I6A	2023-11-21	989	4997695319
Shandy	Domenichini	Paxforde	PERA951001MCCCYR08	PERA951001I6A	2023-12-29	990	6725154999
Hillie	Leer	Stranio	PERA951001MCCCYR08	PERA951001I6A	2024-04-02	991	8372984638
Dee	Girardin	Grasha	PERA951001MCCCYR08	PERA951001I6A	2024-03-15	992	9099634277
Evie	Travis	Karpol	PERA951001MCCCYR08	PERA951001I6A	2023-12-04	993	835010201
Norrie	Tarborn	Scardifeild	PERA951001MCCCYR08	PERA951001I6A	2023-10-19	994	4266841825
Wallie	Whitley	Bonevant	PERA951001MCCCYR08	PERA951001I6A	2023-11-28	995	3038891924
Aurlie	Lopez	Shavel	PERA951001MCCCYR08	PERA951001I6A	2024-02-20	996	2418359115
Shirley	Gain	Dumphreys	PERA951001MCCCYR08	PERA951001I6A	2023-08-02	997	3112662253
Northrop	Dominey	Baytrop	PERA951001MCCCYR08	PERA951001I6A	2023-06-29	998	1002544149
Meyer	Faulo	Steggles	PERA951001MCCCYR08	PERA951001I6A	2023-10-12	999	1746561645
Nye	Fenney	Rattry	PERA951001MCCCYR08	PERA951001I6A	2024-02-03	1000	7665670792
Pace	Ortelt	McMillan	PERA951001MCCCYR08	PERA951001I6A	2024-01-02	1001	532686640
Pris	Bosomworth	Cobbled	PERA951001MCCCYR08	PERA951001I6A	2024-03-20	1002	9232236974
Gloriana	Goalby	Petracco	PERA951001MCCCYR08	PERA951001I6A	2023-10-06	1003	3362819109
Rory	Dyott	Feedome	PERA951001MCCCYR08	PERA951001I6A	2024-04-29	1004	2539462472
Nevil	Walcher	Gettens	PERA951001MCCCYR08	PERA951001I6A	2023-11-21	1005	635610280
Timothee	Gellan	Monkhouse	PERA951001MCCCYR08	PERA951001I6A	2024-05-27	1006	8341981580
Keriann	Saltmarshe	Suthren	PERA951001MCCCYR08	PERA951001I6A	2024-02-21	1007	7089959937
Kippie	Roalfe	Perigoe	PERA951001MCCCYR08	PERA951001I6A	2023-10-07	1008	9186885952
Konrad	Pizzie	Bingall	PERA951001MCCCYR08	PERA951001I6A	2023-09-27	1009	4942928559
Crissy	Weir	Sanchiz	PERA951001MCCCYR08	PERA951001I6A	2024-01-12	1010	3992690180
Byran	Simes	Dearle	PERA951001MCCCYR08	PERA951001I6A	2024-06-22	1011	7077683303
Helyn	Swalteridge	Fellis	PERA951001MCCCYR08	PERA951001I6A	2024-01-30	1012	4047865613
Kettie	Lavrinov	Perott	PERA951001MCCCYR08	PERA951001I6A	2023-07-09	1013	6370866504
Maison	Dedenham	Greenhaugh	PERA951001MCCCYR08	PERA951001I6A	2023-07-01	1014	4346596134
Del	Barenskie	Ortell	PERA951001MCCCYR08	PERA951001I6A	2023-11-16	1015	3591969117
Pavia	Bindon	Tussaine	PERA951001MCCCYR08	PERA951001I6A	2023-06-30	1016	5427744215
Bale	Shoutt	Beeson	PERA951001MCCCYR08	PERA951001I6A	2023-10-09	1017	1851517278
Ulrika	Warlton	Freed	PERA951001MCCCYR08	PERA951001I6A	2023-10-22	1018	8384864314
Kipper	Blampied	Burnitt	PERA951001MCCCYR08	PERA951001I6A	2024-06-05	1019	4538973343
Ferrell	Redmell	Mabey	PERA951001MCCCYR08	PERA951001I6A	2023-06-27	1020	1531452124
Jaclin	Jeffress	Cayley	PERA951001MCCCYR08	PERA951001I6A	2023-10-19	1021	7429116345
\.


--
-- TOC entry 4903 (class 0 OID 16787)
-- Dependencies: 219
-- Data for Name: tbl_ubicacion_dispositivo; Type: TABLE DATA; Schema: ubicacionpersona; Owner: postgres
--

COPY ubicacionpersona.tbl_ubicacion_dispositivo (latitud, longitud, id_gps, id_imei, id_ubicaciondispositivo, id_liga, hora, fecha) FROM stdin;
19.4326	-99.1332	1	1	1	1	03:00	1995-05-29
20.6597	-103.3496	2	2	2	22	04:00	2023-10-01
25.6866	-100.3161	3	3	3	23	12:00	2021-08-12
21.1619	-86.8515	4	4	4	24	06:08	2023-08-03
16.8531	-99.8237	5	5	5	25	12:30	2021-06-30
19.1738	-96.1342	6	6	6	26	14:00	2021-02-01
\.


--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 229
-- Name: tbl_acceso_usuario_id_acceso_usuario_seq; Type: SEQUENCE SET; Schema: ubicacionpersona; Owner: postgres
--

SELECT pg_catalog.setval('ubicacionpersona.tbl_acceso_usuario_id_acceso_usuario_seq', 513, true);


--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 230
-- Name: tbl_acceso_usuario_id_persona_seq; Type: SEQUENCE SET; Schema: ubicacionpersona; Owner: postgres
--

SELECT pg_catalog.setval('ubicacionpersona.tbl_acceso_usuario_id_persona_seq', 513, true);


--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 225
-- Name: tbl_area_laboral_id_nombre_laboral_seq; Type: SEQUENCE SET; Schema: ubicacionpersona; Owner: postgres
--

SELECT pg_catalog.setval('ubicacionpersona.tbl_area_laboral_id_nombre_laboral_seq', 1, true);


--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 228
-- Name: tbl_bitacora_acceso_id_bitacoraacceso_seq; Type: SEQUENCE SET; Schema: ubicacionpersona; Owner: postgres
--

SELECT pg_catalog.setval('ubicacionpersona.tbl_bitacora_acceso_id_bitacoraacceso_seq', 3, true);


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 226
-- Name: tbl_datos_telefono_id_datos_telefono_seq; Type: SEQUENCE SET; Schema: ubicacionpersona; Owner: postgres
--

SELECT pg_catalog.setval('ubicacionpersona.tbl_datos_telefono_id_datos_telefono_seq', 1, true);


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 223
-- Name: tbl_liga_gps_personas_id_ligagpspersona_seq; Type: SEQUENCE SET; Schema: ubicacionpersona; Owner: postgres
--

SELECT pg_catalog.setval('ubicacionpersona.tbl_liga_gps_personas_id_ligagpspersona_seq', 1, false);


--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 224
-- Name: tbl_personas_id_persona_seq; Type: SEQUENCE SET; Schema: ubicacionpersona; Owner: postgres
--

SELECT pg_catalog.setval('ubicacionpersona.tbl_personas_id_persona_seq', 1021, true);


--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 227
-- Name: tbl_ubicacion_dispositivo_id_ubicaciondispositivo_seq; Type: SEQUENCE SET; Schema: ubicacionpersona; Owner: postgres
--

SELECT pg_catalog.setval('ubicacionpersona.tbl_ubicacion_dispositivo_id_ubicaciondispositivo_seq', 1, false);


--
-- TOC entry 4731 (class 2606 OID 18060)
-- Name: tbl_acceso_usuario id_acceso_usuario; Type: CONSTRAINT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_acceso_usuario
    ADD CONSTRAINT id_acceso_usuario PRIMARY KEY (id_acceso_usuario);


--
-- TOC entry 4751 (class 2606 OID 17055)
-- Name: cat_area_laboral tbl_area_laboral_pkey; Type: CONSTRAINT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.cat_area_laboral
    ADD CONSTRAINT tbl_area_laboral_pkey PRIMARY KEY (id_nombre_laboral);


--
-- TOC entry 4737 (class 2606 OID 17118)
-- Name: tbl_bitacora_acceso tbl_bitacora_acceso_pkey; Type: CONSTRAINT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_bitacora_acceso
    ADD CONSTRAINT tbl_bitacora_acceso_pkey PRIMARY KEY (id_bitacoraacceso);


--
-- TOC entry 4749 (class 2606 OID 17074)
-- Name: tbl_datos_telefono tbl_datos_telefono_pkey; Type: CONSTRAINT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_datos_telefono
    ADD CONSTRAINT tbl_datos_telefono_pkey PRIMARY KEY (id_datos_telefono);


--
-- TOC entry 4746 (class 2606 OID 17027)
-- Name: tbl_liga_gps_personas tbl_liga_gps_personas_pkey; Type: CONSTRAINT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_liga_gps_personas
    ADD CONSTRAINT tbl_liga_gps_personas_pkey PRIMARY KEY (id_ligagpspersona);


--
-- TOC entry 4729 (class 2606 OID 17036)
-- Name: tbl_personas tbl_personas_pkey; Type: CONSTRAINT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_personas
    ADD CONSTRAINT tbl_personas_pkey PRIMARY KEY (id_persona);


--
-- TOC entry 4742 (class 2606 OID 17084)
-- Name: tbl_ubicacion_dispositivo tbl_ubicacion_dispositivo_pkey; Type: CONSTRAINT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_ubicacion_dispositivo
    ADD CONSTRAINT tbl_ubicacion_dispositivo_pkey PRIMARY KEY (id_ubicaciondispositivo);


--
-- TOC entry 4732 (class 1259 OID 17106)
-- Name: fki_fk_id_acceso; Type: INDEX; Schema: ubicacionpersona; Owner: postgres
--

CREATE INDEX fki_fk_id_acceso ON ubicacionpersona.tbl_bitacora_acceso USING btree (id_accesousu);


--
-- TOC entry 4733 (class 1259 OID 17153)
-- Name: fki_fk_id_acceso_usuario; Type: INDEX; Schema: ubicacionpersona; Owner: postgres
--

CREATE INDEX fki_fk_id_acceso_usuario ON ubicacionpersona.tbl_bitacora_acceso USING btree (id_acceso_usuario);


--
-- TOC entry 4734 (class 1259 OID 16849)
-- Name: fki_fk_id_bitacora; Type: INDEX; Schema: ubicacionpersona; Owner: postgres
--

CREATE INDEX fki_fk_id_bitacora ON ubicacionpersona.tbl_bitacora_acceso USING btree (id_bitacora);


--
-- TOC entry 4743 (class 1259 OID 17190)
-- Name: fki_fk_id_datos_telefono; Type: INDEX; Schema: ubicacionpersona; Owner: postgres
--

CREATE INDEX fki_fk_id_datos_telefono ON ubicacionpersona.tbl_liga_gps_personas USING btree (id_datos_telefono);


--
-- TOC entry 4738 (class 1259 OID 16837)
-- Name: fki_fk_id_gps; Type: INDEX; Schema: ubicacionpersona; Owner: postgres
--

CREATE INDEX fki_fk_id_gps ON ubicacionpersona.tbl_ubicacion_dispositivo USING btree (id_gps);


--
-- TOC entry 4739 (class 1259 OID 17196)
-- Name: fki_fk_id_liga_gps; Type: INDEX; Schema: ubicacionpersona; Owner: postgres
--

CREATE INDEX fki_fk_id_liga_gps ON ubicacionpersona.tbl_ubicacion_dispositivo USING btree (id_liga);


--
-- TOC entry 4735 (class 1259 OID 17100)
-- Name: fki_fk_id_persona; Type: INDEX; Schema: ubicacionpersona; Owner: postgres
--

CREATE INDEX fki_fk_id_persona ON ubicacionpersona.tbl_bitacora_acceso USING btree (id_accesousu);


--
-- TOC entry 4747 (class 1259 OID 17179)
-- Name: fki_fk_id_personas; Type: INDEX; Schema: ubicacionpersona; Owner: postgres
--

CREATE INDEX fki_fk_id_personas ON ubicacionpersona.tbl_datos_telefono USING btree (id_personas);


--
-- TOC entry 4744 (class 1259 OID 16907)
-- Name: fki_fk_id_status; Type: INDEX; Schema: ubicacionpersona; Owner: postgres
--

CREATE INDEX fki_fk_id_status ON ubicacionpersona.tbl_liga_gps_personas USING btree (id_status);


--
-- TOC entry 4740 (class 1259 OID 16886)
-- Name: fki_fk_id_ubi; Type: INDEX; Schema: ubicacionpersona; Owner: postgres
--

CREATE INDEX fki_fk_id_ubi ON ubicacionpersona.tbl_ubicacion_dispositivo USING btree (id_imei);


--
-- TOC entry 4752 (class 2606 OID 18061)
-- Name: tbl_bitacora_acceso fk_id_acceso_usuario; Type: FK CONSTRAINT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_bitacora_acceso
    ADD CONSTRAINT fk_id_acceso_usuario FOREIGN KEY (id_acceso_usuario) REFERENCES ubicacionpersona.tbl_acceso_usuario(id_acceso_usuario) NOT VALID;


--
-- TOC entry 4754 (class 2606 OID 17185)
-- Name: tbl_liga_gps_personas fk_id_datos_telefono; Type: FK CONSTRAINT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_liga_gps_personas
    ADD CONSTRAINT fk_id_datos_telefono FOREIGN KEY (id_datos_telefono) REFERENCES ubicacionpersona.tbl_datos_telefono(id_datos_telefono) NOT VALID;


--
-- TOC entry 4753 (class 2606 OID 17191)
-- Name: tbl_ubicacion_dispositivo fk_id_liga_gps; Type: FK CONSTRAINT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_ubicacion_dispositivo
    ADD CONSTRAINT fk_id_liga_gps FOREIGN KEY (id_liga) REFERENCES ubicacionpersona.tbl_liga_gps_personas(id_ligagpspersona) NOT VALID;


--
-- TOC entry 4755 (class 2606 OID 17180)
-- Name: tbl_datos_telefono fk_id_persona; Type: FK CONSTRAINT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.tbl_datos_telefono
    ADD CONSTRAINT fk_id_persona FOREIGN KEY (id_personas) REFERENCES ubicacionpersona.tbl_personas(id_persona) NOT VALID;


--
-- TOC entry 4756 (class 2606 OID 17269)
-- Name: cat_area_laboral fk_id_personas; Type: FK CONSTRAINT; Schema: ubicacionpersona; Owner: postgres
--

ALTER TABLE ONLY ubicacionpersona.cat_area_laboral
    ADD CONSTRAINT fk_id_personas FOREIGN KEY (id_personas) REFERENCES ubicacionpersona.tbl_personas(id_persona) NOT VALID;


-- Completed on 2024-06-27 16:20:26

--
-- PostgreSQL database dump complete
--

