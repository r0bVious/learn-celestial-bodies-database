--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    distance_from_earth numeric NOT NULL,
    common_name character varying(30),
    galaxy_val_est integer
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
-- Name: life_found; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life_found (
    life_found_id integer NOT NULL,
    name character varying(30) NOT NULL,
    life_description text,
    threat_scale_level integer
);


ALTER TABLE public.life_found OWNER TO freecodecamp;

--
-- Name: life_found_life_found_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_found_life_found_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_found_life_found_id_seq OWNER TO freecodecamp;

--
-- Name: life_found_life_found_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_found_life_found_id_seq OWNED BY public.life_found.life_found_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    has_atmosphere boolean NOT NULL,
    moon_val_est integer
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
    name character varying(30) NOT NULL,
    star_id integer,
    has_life boolean NOT NULL,
    planet_val_est integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    star_type character varying(30) NOT NULL,
    planet_children integer
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
-- Name: life_found life_found_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_found ALTER COLUMN life_found_id SET DEFAULT nextval('public.life_found_life_found_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 'Home Galaxy', 10000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, 'Nearest Large Galaxy', 15000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3000000, 'Pinwheel Galaxy', 5000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 23000000, 'Messier 51', 7000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 29000000, 'M104', 6500);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 13000000, 'NGC 5128', 4000);


--
-- Data for Name: life_found; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life_found VALUES (1, 'Xenomorph', 'An aggressive alien species that is highly dangerous to all life forms.', 9);
INSERT INTO public.life_found VALUES (2, 'Martian Plant', 'A newly discovered form of flora with rapid growth cycles.', 2);
INSERT INTO public.life_found VALUES (3, 'Proxima Lifeform', 'Microbial life detected on Proxima b.', 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, false, 1000);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, false, 500);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, false, 400);
INSERT INTO public.moon VALUES (4, 'Proxima Moon', 3, false, 600);
INSERT INTO public.moon VALUES (5, 'Sirius Moon I', 4, false, 450);
INSERT INTO public.moon VALUES (6, 'Sirius Moon II', 4, false, 400);
INSERT INTO public.moon VALUES (7, 'Alpha Centauri Bb Moon I', 5, false, 350);
INSERT INTO public.moon VALUES (8, 'Vega I Moon', 6, false, 600);
INSERT INTO public.moon VALUES (9, 'Vega II Moon I', 7, false, 550);
INSERT INTO public.moon VALUES (10, 'Vega II Moon II', 7, false, 500);
INSERT INTO public.moon VALUES (11, 'Alpha Centauri Cc Moon', 8, false, 450);
INSERT INTO public.moon VALUES (12, 'Betelgeuse I Moon', 9, false, 300);
INSERT INTO public.moon VALUES (13, 'Sirius c Moon', 10, false, 400);
INSERT INTO public.moon VALUES (14, 'Andromeda 1 Moon I', 11, false, 550);
INSERT INTO public.moon VALUES (15, 'Andromeda 1 Moon II', 11, false, 500);
INSERT INTO public.moon VALUES (16, 'Andromeda 1 Moon III', 11, false, 450);
INSERT INTO public.moon VALUES (17, 'Triangulum 1 Moon I', 12, false, 600);
INSERT INTO public.moon VALUES (18, 'Triangulum 1 Moon II', 12, false, 550);
INSERT INTO public.moon VALUES (19, 'Triangulum 1 Moon III', 12, false, 500);
INSERT INTO public.moon VALUES (20, 'Triangulum 1 Moon IV', 12, false, 450);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 10000);
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, 3000);
INSERT INTO public.planet VALUES (3, 'Proxima b', 3, false, 2000);
INSERT INTO public.planet VALUES (4, 'Sirius b', 4, false, 2500);
INSERT INTO public.planet VALUES (5, 'Alpha Centauri Bb', 2, false, 1500);
INSERT INTO public.planet VALUES (6, 'Vega I', 6, false, 1800);
INSERT INTO public.planet VALUES (7, 'Vega II', 6, false, 1700);
INSERT INTO public.planet VALUES (8, 'Alpha Centauri Cc', 2, false, 1600);
INSERT INTO public.planet VALUES (9, 'Betelgeuse I', 5, false, 1200);
INSERT INTO public.planet VALUES (10, 'Sirius c', 4, false, 2600);
INSERT INTO public.planet VALUES (11, 'Andromeda 1', 2, false, 3500);
INSERT INTO public.planet VALUES (12, 'Triangulum 1', 3, false, 4000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-type Main-Sequence', 8);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 2, 'G-type Main-Sequence', 3);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 2, 'Red Dwarf', 1);
INSERT INTO public.star VALUES (4, 'Sirius', 1, 'A-type Main-Sequence', 2);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 1, 'Red Supergiant', 0);
INSERT INTO public.star VALUES (6, 'Vega', 1, 'A-type Main-Sequence', 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: life_found_life_found_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_found_life_found_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


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
-- Name: life_found life_found_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_found
    ADD CONSTRAINT life_found_name_key UNIQUE (name);


--
-- Name: life_found life_found_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_found
    ADD CONSTRAINT life_found_pkey PRIMARY KEY (life_found_id);


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
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

