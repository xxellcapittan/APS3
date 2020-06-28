--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: agronomos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agronomos (
    cod_agronomo integer NOT NULL,
    nome character varying(40) NOT NULL,
    especialidade character varying(50) NOT NULL,
    crea_agronomo integer NOT NULL
);


ALTER TABLE public.agronomos OWNER TO postgres;

--
-- Name: agronomos_cod_agronomo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agronomos_cod_agronomo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agronomos_cod_agronomo_seq OWNER TO postgres;

--
-- Name: agronomos_cod_agronomo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agronomos_cod_agronomo_seq OWNED BY public.agronomos.cod_agronomo;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    usu_cod integer NOT NULL,
    usu_nome character varying(50),
    usu_senha character varying(15),
    usu_tipo character varying(30)
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- Name: usuarios_usu_cod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_usu_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_usu_cod_seq OWNER TO postgres;

--
-- Name: usuarios_usu_cod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_usu_cod_seq OWNED BY public.usuarios.usu_cod;


--
-- Name: agronomos cod_agronomo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agronomos ALTER COLUMN cod_agronomo SET DEFAULT nextval('public.agronomos_cod_agronomo_seq'::regclass);


--
-- Name: usuarios usu_cod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN usu_cod SET DEFAULT nextval('public.usuarios_usu_cod_seq'::regclass);


--
-- Data for Name: agronomos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agronomos (cod_agronomo, nome, especialidade, crea_agronomo) FROM stdin;
6	Cristina	Administração rural	45130215
8	Paulo Sergio de almeida	Manejo de Solo	999999656
10	Felipéssimo Marques	Administração rural	125215110
9	Amanda Garcia	Combate as pragas	15112005
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (usu_cod, usu_nome, usu_senha, usu_tipo) FROM stdin;
1	Rapha	1234	Administrador
5	Mariane	1234	Administrador
6	Maicon 	1234	Administrador
7	Roma	1234	Administrador
2	felipessimo marques	1234	Secretária(o)
4	Mickelangelo Petrisson	1234	Administrador
\.


--
-- Name: agronomos_cod_agronomo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agronomos_cod_agronomo_seq', 10, true);


--
-- Name: usuarios_usu_cod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_usu_cod_seq', 8, true);


--
-- Name: agronomos cod_agronomo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agronomos
    ADD CONSTRAINT cod_agronomo PRIMARY KEY (cod_agronomo);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (usu_cod);


--
-- PostgreSQL database dump complete
--

