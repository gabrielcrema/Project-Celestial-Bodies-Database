--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    tamanho integer NOT NULL,
    "distância_terra" integer,
    descricao text,
    visivel_terra boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    tamanho integer NOT NULL,
    distancia numeric NOT NULL,
    visivel boolean NOT NULL,
    descricao text NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    tamanho integer NOT NULL,
    distancia numeric NOT NULL,
    descricao text NOT NULL,
    visivel boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: satelites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelites (
    satelites_id integer NOT NULL,
    name character varying(40) NOT NULL,
    descricao text NOT NULL,
    tamanho integer NOT NULL,
    distancia numeric NOT NULL,
    visivel boolean NOT NULL
);


ALTER TABLE public.satelites OWNER TO freecodecamp;

--
-- Name: satelites_satelites_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelites_satelites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelites_satelites_id_seq OWNER TO freecodecamp;

--
-- Name: satelites_satelites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelites_satelites_id_seq OWNED BY public.satelites.satelites_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    tamanho integer,
    distancia numeric,
    descricao text,
    visivel boolean,
    name character varying(40) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satelites satelites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites ALTER COLUMN satelites_id SET DEFAULT nextval('public.satelites_satelites_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'gatinho', 50, 500, 'longe', true);
INSERT INTO public.galaxy VALUES (2, 'dog', 50, 500, 'perto', false);
INSERT INTO public.galaxy VALUES (3, 'cat', 40, 500, 'sim', true);
INSERT INTO public.galaxy VALUES (4, 'girafa', 50, 500, 'aham', true);
INSERT INTO public.galaxy VALUES (5, 'macaco', 80, 800, 'sim', false);
INSERT INTO public.galaxy VALUES (6, 'leão', 50, 700, 'claro', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 1, 11, true, 'a');
INSERT INTO public.moon VALUES (8, 'b', 2, 22, true, 'b');
INSERT INTO public.moon VALUES (9, 'f', 3, 33, true, 'f');
INSERT INTO public.moon VALUES (10, 'c', 4, 44, true, 'c');
INSERT INTO public.moon VALUES (11, 'g', 5, 55, true, 'g');
INSERT INTO public.moon VALUES (12, 'd', 6, 66, true, 'd');
INSERT INTO public.moon VALUES (13, 'e', 7, 77, true, 'e');
INSERT INTO public.moon VALUES (15, 'i', 8, 88, true, 'i');
INSERT INTO public.moon VALUES (16, 'h', 9, 99, true, 'h');
INSERT INTO public.moon VALUES (17, 'j', 10, 1010, true, 'j');
INSERT INTO public.moon VALUES (18, 'k', 12, 1212, true, 'k');
INSERT INTO public.moon VALUES (19, 'l', 13, 1313, true, 'l');
INSERT INTO public.moon VALUES (20, 'm', 14, 1414, true, 'm');
INSERT INTO public.moon VALUES (21, 'n', 15, 1515, true, 'n');
INSERT INTO public.moon VALUES (22, 'o', 16, 1616, true, 'o');
INSERT INTO public.moon VALUES (23, 'p', 18, 1818, true, 'p');
INSERT INTO public.moon VALUES (24, 'q', 19, 1919, true, 'q');
INSERT INTO public.moon VALUES (25, 'r', 20, 2020, true, 'r');
INSERT INTO public.moon VALUES (26, 't', 21, 2121, true, 't');
INSERT INTO public.moon VALUES (27, 'z', 22, 2222, true, 'z');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'um', 1, 11, 'uma', true);
INSERT INTO public.planet VALUES (4, 'dois', 2, 22, 'duas', true);
INSERT INTO public.planet VALUES (5, 'tres', 3, 33, 'tresa', true);
INSERT INTO public.planet VALUES (6, 'quatro', 4, 44, 'quatra', true);
INSERT INTO public.planet VALUES (7, 'cinco', 5, 55, 'cinca', true);
INSERT INTO public.planet VALUES (8, 'seis', 6, 66, 'seis', true);
INSERT INTO public.planet VALUES (9, 'sete', 7, 77, 'sete', true);
INSERT INTO public.planet VALUES (10, 'oito', 8, 88, 'oito', true);
INSERT INTO public.planet VALUES (11, 'nove', 9, 99, 'nove', true);
INSERT INTO public.planet VALUES (12, 'dez', 10, 1010, 'dez', true);
INSERT INTO public.planet VALUES (13, 'onze', 11, 1111, 'onze', true);
INSERT INTO public.planet VALUES (14, 'doize', 12, 1212, 'doze', true);


--
-- Data for Name: satelites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelites VALUES (1, 'um', 'um', 1, 11, true);
INSERT INTO public.satelites VALUES (2, 'dois', 'dois', 2, 22, true);
INSERT INTO public.satelites VALUES (3, 'tres', 'tres', 3, 33, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 40, 500, 'aham', true, 'toicinho');
INSERT INTO public.star VALUES (2, 2, 20, 400, 'certo', false, 'tamarindo');
INSERT INTO public.star VALUES (3, 3, 20, 500, 'tem', false, 'cloaq');
INSERT INTO public.star VALUES (4, 4, 60, 600, 'baita', true, 'isto');
INSERT INTO public.star VALUES (5, 5, 60, 700, 'tininos', true, 'logi');
INSERT INTO public.star VALUES (6, 6, 80, 800, 'clara', false, 'lara');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: satelites_satelites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelites_satelites_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_descricao_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_descricao_key UNIQUE (descricao);


--
-- Name: moon moon_distancia_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distancia_key UNIQUE (distancia);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_tamanho_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_tamanho_key UNIQUE (tamanho);


--
-- Name: planet planet_descricao_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_descricao_key UNIQUE (descricao);


--
-- Name: planet planet_distancia_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distancia_key UNIQUE (distancia);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_tamanho_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_tamanho_key UNIQUE (tamanho);


--
-- Name: satelites satelites_descricao_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_descricao_key UNIQUE (descricao);


--
-- Name: satelites satelites_distancia_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_distancia_key UNIQUE (distancia);


--
-- Name: satelites satelites_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_name_key UNIQUE (name);


--
-- Name: satelites satelites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_pkey PRIMARY KEY (satelites_id);


--
-- Name: satelites satelites_tamanho_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelites
    ADD CONSTRAINT satelites_tamanho_key UNIQUE (tamanho);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

