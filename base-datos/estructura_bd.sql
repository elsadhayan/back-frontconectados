--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-07-18 11:39:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 238 (class 1259 OID 17976)
-- Name: administrador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.administrador (
    id_admin bigint NOT NULL,
    apellido_paterno character varying(255) NOT NULL,
    apellido_materno character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL,
    correo character varying(255) NOT NULL,
    cargo character varying(255) NOT NULL,
    id_usuario bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.administrador OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 17975)
-- Name: administrador_id_admin_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.administrador_id_admin_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.administrador_id_admin_seq OWNER TO postgres;

--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 237
-- Name: administrador_id_admin_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.administrador_id_admin_seq OWNED BY public.administrador.id_admin;


--
-- TOC entry 234 (class 1259 OID 17932)
-- Name: alumno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumno (
    id_alumno bigint NOT NULL,
    apellido_paterno character varying(255) NOT NULL,
    apellido_materno character varying(255) NOT NULL,
    nombres character varying(255) NOT NULL,
    fecha_nacimiento date NOT NULL,
    edad integer NOT NULL,
    sexo character varying(255) NOT NULL,
    numero_telefono character varying(255) NOT NULL,
    numero_casa character varying(255),
    taller_cultural character varying(255),
    id_usuario bigint NOT NULL,
    id_tutor bigint NOT NULL,
    id_academico bigint,
    id_taller bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.alumno OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 17923)
-- Name: alumno_academico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumno_academico (
    id_academico bigint NOT NULL,
    estudio_alumno character varying(255) NOT NULL,
    grado_estudio character varying(255) NOT NULL,
    institucion_educativa character varying(255) NOT NULL,
    escuela_nueva character varying(255),
    estado character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.alumno_academico OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17922)
-- Name: alumno_academico_id_academico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumno_academico_id_academico_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alumno_academico_id_academico_seq OWNER TO postgres;

--
-- TOC entry 5050 (class 0 OID 0)
-- Dependencies: 231
-- Name: alumno_academico_id_academico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumno_academico_id_academico_seq OWNED BY public.alumno_academico.id_academico;


--
-- TOC entry 236 (class 1259 OID 17961)
-- Name: alumno_dato_medico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumno_dato_medico (
    id_dato_medico bigint NOT NULL,
    alergia character varying(255) NOT NULL,
    alergia_descripcion character varying(255),
    tipo_sangre character varying(255) NOT NULL,
    tratamiento_medico boolean DEFAULT false NOT NULL,
    tratamiento_descripcion character varying(255),
    enfermedad_cronica character varying(255),
    tutor_emergencia character varying(255) NOT NULL,
    telefono_emergencia character varying(255) NOT NULL,
    id_alumno bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.alumno_dato_medico OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17960)
-- Name: alumno_dato_medico_id_dato_medico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumno_dato_medico_id_dato_medico_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alumno_dato_medico_id_dato_medico_seq OWNER TO postgres;

--
-- TOC entry 5051 (class 0 OID 0)
-- Dependencies: 235
-- Name: alumno_dato_medico_id_dato_medico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumno_dato_medico_id_dato_medico_seq OWNED BY public.alumno_dato_medico.id_dato_medico;


--
-- TOC entry 233 (class 1259 OID 17931)
-- Name: alumno_id_alumno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumno_id_alumno_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alumno_id_alumno_seq OWNER TO postgres;

--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 233
-- Name: alumno_id_alumno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumno_id_alumno_seq OWNED BY public.alumno.id_alumno;


--
-- TOC entry 226 (class 1259 OID 17882)
-- Name: edificios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.edificios (
    id_edificio bigint NOT NULL,
    nombre_edificio character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.edificios OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17881)
-- Name: edificios_id_edificio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.edificios_id_edificio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.edificios_id_edificio_seq OWNER TO postgres;

--
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 225
-- Name: edificios_id_edificio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.edificios_id_edificio_seq OWNED BY public.edificios.id_edificio;


--
-- TOC entry 242 (class 1259 OID 18001)
-- Name: inscripcion_reinscripcion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inscripcion_reinscripcion (
    id_inscripcion bigint NOT NULL,
    tipo_pago character varying(255) NOT NULL,
    periodo character varying(255) NOT NULL,
    fecha_inscripcion date NOT NULL,
    estado character varying(255) NOT NULL,
    id_alumno bigint NOT NULL,
    id_taller bigint NOT NULL,
    id_pago bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.inscripcion_reinscripcion OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 18000)
-- Name: inscripcion_reinscripcion_id_inscripcion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inscripcion_reinscripcion_id_inscripcion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inscripcion_reinscripcion_id_inscripcion_seq OWNER TO postgres;

--
-- TOC entry 5054 (class 0 OID 0)
-- Dependencies: 241
-- Name: inscripcion_reinscripcion_id_inscripcion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inscripcion_reinscripcion_id_inscripcion_seq OWNED BY public.inscripcion_reinscripcion.id_inscripcion;


--
-- TOC entry 224 (class 1259 OID 17868)
-- Name: maestros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.maestros (
    id_maestro bigint NOT NULL,
    nombre character varying(255) NOT NULL,
    apellido_paterno character varying(255) NOT NULL,
    apellido_materno character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL,
    correo character varying(255) NOT NULL,
    especialidad character varying(255) NOT NULL,
    id_usuario bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.maestros OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17867)
-- Name: maestros_id_maestro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.maestros_id_maestro_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maestros_id_maestro_seq OWNER TO postgres;

--
-- TOC entry 5055 (class 0 OID 0)
-- Dependencies: 223
-- Name: maestros_id_maestro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.maestros_id_maestro_seq OWNED BY public.maestros.id_maestro;


--
-- TOC entry 244 (class 1259 OID 18025)
-- Name: mensualidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mensualidad (
    id_mensualidad bigint NOT NULL,
    mes character varying(255) NOT NULL,
    id_alumno bigint NOT NULL,
    id_pago bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.mensualidad OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 18024)
-- Name: mensualidad_id_mensualidad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mensualidad_id_mensualidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mensualidad_id_mensualidad_seq OWNER TO postgres;

--
-- TOC entry 5056 (class 0 OID 0)
-- Dependencies: 243
-- Name: mensualidad_id_mensualidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mensualidad_id_mensualidad_seq OWNED BY public.mensualidad.id_mensualidad;


--
-- TOC entry 218 (class 1259 OID 17836)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17835)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 5057 (class 0 OID 0)
-- Dependencies: 217
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 240 (class 1259 OID 17990)
-- Name: pagos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pagos (
    id_pago bigint NOT NULL,
    monto numeric(8,2) NOT NULL,
    folio character varying(255) NOT NULL,
    fecha_emision date NOT NULL,
    fecha_vencimiento date NOT NULL,
    estado character varying(255) NOT NULL,
    tipo_pago character varying(255) NOT NULL,
    pdf_ruta character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.pagos OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 17989)
-- Name: pagos_id_pago_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pagos_id_pago_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pagos_id_pago_seq OWNER TO postgres;

--
-- TOC entry 5058 (class 0 OID 0)
-- Dependencies: 239
-- Name: pagos_id_pago_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pagos_id_pago_seq OWNED BY public.pagos.id_pago;


--
-- TOC entry 228 (class 1259 OID 17891)
-- Name: salones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salones (
    id_salon bigint NOT NULL,
    nombre_salon character varying(255) NOT NULL,
    id_edificio bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.salones OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17890)
-- Name: salones_id_salon_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.salones_id_salon_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.salones_id_salon_seq OWNER TO postgres;

--
-- TOC entry 5059 (class 0 OID 0)
-- Dependencies: 227
-- Name: salones_id_salon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.salones_id_salon_seq OWNED BY public.salones.id_salon;


--
-- TOC entry 230 (class 1259 OID 17903)
-- Name: talleres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.talleres (
    id_taller bigint NOT NULL,
    nombre_taller character varying(255) NOT NULL,
    cupo_maximo integer NOT NULL,
    cupo_apartado integer DEFAULT 0 NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_final date NOT NULL,
    horario character varying(255) NOT NULL,
    edad_minima integer NOT NULL,
    edad_maxima integer NOT NULL,
    id_maestro bigint NOT NULL,
    id_salon bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.talleres OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17902)
-- Name: talleres_id_taller_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.talleres_id_taller_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.talleres_id_taller_seq OWNER TO postgres;

--
-- TOC entry 5060 (class 0 OID 0)
-- Dependencies: 229
-- Name: talleres_id_taller_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.talleres_id_taller_seq OWNED BY public.talleres.id_taller;


--
-- TOC entry 222 (class 1259 OID 17854)
-- Name: tutor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tutor (
    id_tutor bigint NOT NULL,
    apellido_paterno character varying(255) NOT NULL,
    apellido_materno character varying(255) NOT NULL,
    nombres character varying(255) NOT NULL,
    numero_telefonico character varying(255) NOT NULL,
    correo character varying(255),
    id_usuario bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.tutor OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17853)
-- Name: tutor_id_tutor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tutor_id_tutor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tutor_id_tutor_seq OWNER TO postgres;

--
-- TOC entry 5061 (class 0 OID 0)
-- Dependencies: 221
-- Name: tutor_id_tutor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tutor_id_tutor_seq OWNED BY public.tutor.id_tutor;


--
-- TOC entry 220 (class 1259 OID 17843)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario bigint NOT NULL,
    curp character varying(18) NOT NULL,
    contrasena character varying(255) NOT NULL,
    role character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17842)
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 5062 (class 0 OID 0)
-- Dependencies: 219
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;


--
-- TOC entry 4819 (class 2604 OID 17979)
-- Name: administrador id_admin; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrador ALTER COLUMN id_admin SET DEFAULT nextval('public.administrador_id_admin_seq'::regclass);


--
-- TOC entry 4816 (class 2604 OID 17935)
-- Name: alumno id_alumno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno ALTER COLUMN id_alumno SET DEFAULT nextval('public.alumno_id_alumno_seq'::regclass);


--
-- TOC entry 4815 (class 2604 OID 17926)
-- Name: alumno_academico id_academico; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_academico ALTER COLUMN id_academico SET DEFAULT nextval('public.alumno_academico_id_academico_seq'::regclass);


--
-- TOC entry 4817 (class 2604 OID 17964)
-- Name: alumno_dato_medico id_dato_medico; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_dato_medico ALTER COLUMN id_dato_medico SET DEFAULT nextval('public.alumno_dato_medico_id_dato_medico_seq'::regclass);


--
-- TOC entry 4811 (class 2604 OID 17885)
-- Name: edificios id_edificio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.edificios ALTER COLUMN id_edificio SET DEFAULT nextval('public.edificios_id_edificio_seq'::regclass);


--
-- TOC entry 4821 (class 2604 OID 18004)
-- Name: inscripcion_reinscripcion id_inscripcion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscripcion_reinscripcion ALTER COLUMN id_inscripcion SET DEFAULT nextval('public.inscripcion_reinscripcion_id_inscripcion_seq'::regclass);


--
-- TOC entry 4810 (class 2604 OID 17871)
-- Name: maestros id_maestro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maestros ALTER COLUMN id_maestro SET DEFAULT nextval('public.maestros_id_maestro_seq'::regclass);


--
-- TOC entry 4822 (class 2604 OID 18028)
-- Name: mensualidad id_mensualidad; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mensualidad ALTER COLUMN id_mensualidad SET DEFAULT nextval('public.mensualidad_id_mensualidad_seq'::regclass);


--
-- TOC entry 4807 (class 2604 OID 17839)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 4820 (class 2604 OID 17993)
-- Name: pagos id_pago; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagos ALTER COLUMN id_pago SET DEFAULT nextval('public.pagos_id_pago_seq'::regclass);


--
-- TOC entry 4812 (class 2604 OID 17894)
-- Name: salones id_salon; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salones ALTER COLUMN id_salon SET DEFAULT nextval('public.salones_id_salon_seq'::regclass);


--
-- TOC entry 4813 (class 2604 OID 17906)
-- Name: talleres id_taller; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talleres ALTER COLUMN id_taller SET DEFAULT nextval('public.talleres_id_taller_seq'::regclass);


--
-- TOC entry 4809 (class 2604 OID 17857)
-- Name: tutor id_tutor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutor ALTER COLUMN id_tutor SET DEFAULT nextval('public.tutor_id_tutor_seq'::regclass);


--
-- TOC entry 4808 (class 2604 OID 17846)
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);


--
-- TOC entry 5037 (class 0 OID 17976)
-- Dependencies: 238
-- Data for Name: administrador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.administrador (id_admin, apellido_paterno, apellido_materno, nombre, telefono, correo, cargo, id_usuario, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5033 (class 0 OID 17932)
-- Dependencies: 234
-- Data for Name: alumno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumno (id_alumno, apellido_paterno, apellido_materno, nombres, fecha_nacimiento, edad, sexo, numero_telefono, numero_casa, taller_cultural, id_usuario, id_tutor, id_academico, id_taller, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5031 (class 0 OID 17923)
-- Dependencies: 232
-- Data for Name: alumno_academico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumno_academico (id_academico, estudio_alumno, grado_estudio, institucion_educativa, escuela_nueva, estado, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5035 (class 0 OID 17961)
-- Dependencies: 236
-- Data for Name: alumno_dato_medico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumno_dato_medico (id_dato_medico, alergia, alergia_descripcion, tipo_sangre, tratamiento_medico, tratamiento_descripcion, enfermedad_cronica, tutor_emergencia, telefono_emergencia, id_alumno, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5025 (class 0 OID 17882)
-- Dependencies: 226
-- Data for Name: edificios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.edificios (id_edificio, nombre_edificio, direccion, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5041 (class 0 OID 18001)
-- Dependencies: 242
-- Data for Name: inscripcion_reinscripcion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inscripcion_reinscripcion (id_inscripcion, tipo_pago, periodo, fecha_inscripcion, estado, id_alumno, id_taller, id_pago, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5023 (class 0 OID 17868)
-- Dependencies: 224
-- Data for Name: maestros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.maestros (id_maestro, nombre, apellido_paterno, apellido_materno, telefono, correo, especialidad, id_usuario, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5043 (class 0 OID 18025)
-- Dependencies: 244
-- Data for Name: mensualidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mensualidad (id_mensualidad, mes, id_alumno, id_pago, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5017 (class 0 OID 17836)
-- Dependencies: 218
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2025_07_18_021009_create_usuario_table	1
2	2025_07_18_021138_create_tutor_table	1
3	2025_07_18_021448_create_maestros_table	1
4	2025_07_18_021629_create_edificio_table	1
5	2025_07_18_140914_create_salones_table	1
6	2025_07_18_141042_create_talleres_table	1
7	2025_07_18_144400_create_alumno_academico_table	1
8	2025_07_18_144535_create_alumno_table	1
9	2025_07_18_144717_create_alumno_dato_medico_table	1
10	2025_07_18_144946_create_administrador_table	1
11	2025_07_18_145000_create_pagos_table	1
12	2025_07_18_145118_create_inscripcion_reinscripcion_table	1
13	2025_07_18_145357_create_mensualidad_table	1
\.


--
-- TOC entry 5039 (class 0 OID 17990)
-- Dependencies: 240
-- Data for Name: pagos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pagos (id_pago, monto, folio, fecha_emision, fecha_vencimiento, estado, tipo_pago, pdf_ruta, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5027 (class 0 OID 17891)
-- Dependencies: 228
-- Data for Name: salones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salones (id_salon, nombre_salon, id_edificio, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5029 (class 0 OID 17903)
-- Dependencies: 230
-- Data for Name: talleres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.talleres (id_taller, nombre_taller, cupo_maximo, cupo_apartado, fecha_inicio, fecha_final, horario, edad_minima, edad_maxima, id_maestro, id_salon, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5021 (class 0 OID 17854)
-- Dependencies: 222
-- Data for Name: tutor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tutor (id_tutor, apellido_paterno, apellido_materno, nombres, numero_telefonico, correo, id_usuario, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5019 (class 0 OID 17843)
-- Dependencies: 220
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_usuario, curp, contrasena, role, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5063 (class 0 OID 0)
-- Dependencies: 237
-- Name: administrador_id_admin_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.administrador_id_admin_seq', 1, false);


--
-- TOC entry 5064 (class 0 OID 0)
-- Dependencies: 231
-- Name: alumno_academico_id_academico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumno_academico_id_academico_seq', 1, false);


--
-- TOC entry 5065 (class 0 OID 0)
-- Dependencies: 235
-- Name: alumno_dato_medico_id_dato_medico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumno_dato_medico_id_dato_medico_seq', 1, false);


--
-- TOC entry 5066 (class 0 OID 0)
-- Dependencies: 233
-- Name: alumno_id_alumno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumno_id_alumno_seq', 1, false);


--
-- TOC entry 5067 (class 0 OID 0)
-- Dependencies: 225
-- Name: edificios_id_edificio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.edificios_id_edificio_seq', 1, false);


--
-- TOC entry 5068 (class 0 OID 0)
-- Dependencies: 241
-- Name: inscripcion_reinscripcion_id_inscripcion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inscripcion_reinscripcion_id_inscripcion_seq', 1, false);


--
-- TOC entry 5069 (class 0 OID 0)
-- Dependencies: 223
-- Name: maestros_id_maestro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.maestros_id_maestro_seq', 1, false);


--
-- TOC entry 5070 (class 0 OID 0)
-- Dependencies: 243
-- Name: mensualidad_id_mensualidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mensualidad_id_mensualidad_seq', 1, false);


--
-- TOC entry 5071 (class 0 OID 0)
-- Dependencies: 217
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 13, true);


--
-- TOC entry 5072 (class 0 OID 0)
-- Dependencies: 239
-- Name: pagos_id_pago_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pagos_id_pago_seq', 1, false);


--
-- TOC entry 5073 (class 0 OID 0)
-- Dependencies: 227
-- Name: salones_id_salon_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.salones_id_salon_seq', 1, false);


--
-- TOC entry 5074 (class 0 OID 0)
-- Dependencies: 229
-- Name: talleres_id_taller_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.talleres_id_taller_seq', 1, false);


--
-- TOC entry 5075 (class 0 OID 0)
-- Dependencies: 221
-- Name: tutor_id_tutor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tutor_id_tutor_seq', 1, false);


--
-- TOC entry 5076 (class 0 OID 0)
-- Dependencies: 219
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, false);


--
-- TOC entry 4846 (class 2606 OID 17983)
-- Name: administrador administrador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_pkey PRIMARY KEY (id_admin);


--
-- TOC entry 4840 (class 2606 OID 17930)
-- Name: alumno_academico alumno_academico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_academico
    ADD CONSTRAINT alumno_academico_pkey PRIMARY KEY (id_academico);


--
-- TOC entry 4844 (class 2606 OID 17969)
-- Name: alumno_dato_medico alumno_dato_medico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_dato_medico
    ADD CONSTRAINT alumno_dato_medico_pkey PRIMARY KEY (id_dato_medico);


--
-- TOC entry 4842 (class 2606 OID 17939)
-- Name: alumno alumno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_pkey PRIMARY KEY (id_alumno);


--
-- TOC entry 4834 (class 2606 OID 17889)
-- Name: edificios edificios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.edificios
    ADD CONSTRAINT edificios_pkey PRIMARY KEY (id_edificio);


--
-- TOC entry 4852 (class 2606 OID 18008)
-- Name: inscripcion_reinscripcion inscripcion_reinscripcion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscripcion_reinscripcion
    ADD CONSTRAINT inscripcion_reinscripcion_pkey PRIMARY KEY (id_inscripcion);


--
-- TOC entry 4832 (class 2606 OID 17875)
-- Name: maestros maestros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maestros
    ADD CONSTRAINT maestros_pkey PRIMARY KEY (id_maestro);


--
-- TOC entry 4854 (class 2606 OID 18030)
-- Name: mensualidad mensualidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mensualidad
    ADD CONSTRAINT mensualidad_pkey PRIMARY KEY (id_mensualidad);


--
-- TOC entry 4824 (class 2606 OID 17841)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 4848 (class 2606 OID 17999)
-- Name: pagos pagos_folio_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_folio_unique UNIQUE (folio);


--
-- TOC entry 4850 (class 2606 OID 17997)
-- Name: pagos pagos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_pkey PRIMARY KEY (id_pago);


--
-- TOC entry 4836 (class 2606 OID 17896)
-- Name: salones salones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salones
    ADD CONSTRAINT salones_pkey PRIMARY KEY (id_salon);


--
-- TOC entry 4838 (class 2606 OID 17911)
-- Name: talleres talleres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talleres
    ADD CONSTRAINT talleres_pkey PRIMARY KEY (id_taller);


--
-- TOC entry 4830 (class 2606 OID 17861)
-- Name: tutor tutor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutor
    ADD CONSTRAINT tutor_pkey PRIMARY KEY (id_tutor);


--
-- TOC entry 4826 (class 2606 OID 17852)
-- Name: usuario usuario_curp_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_curp_unique UNIQUE (curp);


--
-- TOC entry 4828 (class 2606 OID 17850)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 4865 (class 2606 OID 17984)
-- Name: administrador administrador_id_usuario_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_id_usuario_foreign FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 4864 (class 2606 OID 17970)
-- Name: alumno_dato_medico alumno_dato_medico_id_alumno_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno_dato_medico
    ADD CONSTRAINT alumno_dato_medico_id_alumno_foreign FOREIGN KEY (id_alumno) REFERENCES public.alumno(id_alumno) ON DELETE CASCADE;


--
-- TOC entry 4860 (class 2606 OID 17950)
-- Name: alumno alumno_id_academico_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_id_academico_foreign FOREIGN KEY (id_academico) REFERENCES public.alumno_academico(id_academico) ON DELETE SET NULL;


--
-- TOC entry 4861 (class 2606 OID 17955)
-- Name: alumno alumno_id_taller_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_id_taller_foreign FOREIGN KEY (id_taller) REFERENCES public.talleres(id_taller) ON DELETE SET NULL;


--
-- TOC entry 4862 (class 2606 OID 17945)
-- Name: alumno alumno_id_tutor_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_id_tutor_foreign FOREIGN KEY (id_tutor) REFERENCES public.tutor(id_tutor) ON DELETE CASCADE;


--
-- TOC entry 4863 (class 2606 OID 17940)
-- Name: alumno alumno_id_usuario_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_id_usuario_foreign FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 4866 (class 2606 OID 18009)
-- Name: inscripcion_reinscripcion inscripcion_reinscripcion_id_alumno_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscripcion_reinscripcion
    ADD CONSTRAINT inscripcion_reinscripcion_id_alumno_foreign FOREIGN KEY (id_alumno) REFERENCES public.alumno(id_alumno) ON DELETE CASCADE;


--
-- TOC entry 4867 (class 2606 OID 18019)
-- Name: inscripcion_reinscripcion inscripcion_reinscripcion_id_pago_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscripcion_reinscripcion
    ADD CONSTRAINT inscripcion_reinscripcion_id_pago_foreign FOREIGN KEY (id_pago) REFERENCES public.pagos(id_pago) ON DELETE CASCADE;


--
-- TOC entry 4868 (class 2606 OID 18014)
-- Name: inscripcion_reinscripcion inscripcion_reinscripcion_id_taller_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscripcion_reinscripcion
    ADD CONSTRAINT inscripcion_reinscripcion_id_taller_foreign FOREIGN KEY (id_taller) REFERENCES public.talleres(id_taller) ON DELETE CASCADE;


--
-- TOC entry 4856 (class 2606 OID 17876)
-- Name: maestros maestros_id_usuario_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maestros
    ADD CONSTRAINT maestros_id_usuario_foreign FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON DELETE CASCADE;


--
-- TOC entry 4869 (class 2606 OID 18031)
-- Name: mensualidad mensualidad_id_alumno_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mensualidad
    ADD CONSTRAINT mensualidad_id_alumno_foreign FOREIGN KEY (id_alumno) REFERENCES public.alumno(id_alumno) ON DELETE CASCADE;


--
-- TOC entry 4870 (class 2606 OID 18036)
-- Name: mensualidad mensualidad_id_pago_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mensualidad
    ADD CONSTRAINT mensualidad_id_pago_foreign FOREIGN KEY (id_pago) REFERENCES public.pagos(id_pago) ON DELETE CASCADE;


--
-- TOC entry 4857 (class 2606 OID 17897)
-- Name: salones salones_id_edificio_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salones
    ADD CONSTRAINT salones_id_edificio_foreign FOREIGN KEY (id_edificio) REFERENCES public.edificios(id_edificio) ON DELETE CASCADE;


--
-- TOC entry 4858 (class 2606 OID 17912)
-- Name: talleres talleres_id_maestro_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talleres
    ADD CONSTRAINT talleres_id_maestro_foreign FOREIGN KEY (id_maestro) REFERENCES public.maestros(id_maestro) ON DELETE CASCADE;


--
-- TOC entry 4859 (class 2606 OID 17917)
-- Name: talleres talleres_id_salon_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talleres
    ADD CONSTRAINT talleres_id_salon_foreign FOREIGN KEY (id_salon) REFERENCES public.salones(id_salon) ON DELETE SET NULL;


--
-- TOC entry 4855 (class 2606 OID 17862)
-- Name: tutor tutor_id_usuario_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutor
    ADD CONSTRAINT tutor_id_usuario_foreign FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) ON DELETE CASCADE;


-- Completed on 2025-07-18 11:39:25

--
-- PostgreSQL database dump complete
--

