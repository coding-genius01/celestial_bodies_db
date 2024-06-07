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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    year_sighted integer NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    designation text,
    shape character varying(30),
    diameter_in_light_years integer
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
    name character varying(40),
    designation character varying(40) NOT NULL,
    shape character varying(30),
    diameter_in_km integer NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(40),
    designation character varying(40) NOT NULL,
    diameter_in_km integer NOT NULL,
    weight_in_earth_masses numeric(8,5),
    star_id integer NOT NULL
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
    constellation character varying(30),
    larger_than_sun boolean NOT NULL,
    hotter_than_sun boolean NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Hale-Bopp', 1995);
INSERT INTO public.comet VALUES (2, 'Great Comet', 1811);
INSERT INTO public.comet VALUES (3, 'Neowise', 2020);
INSERT INTO public.comet VALUES (4, 'McNaught', 2006);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'M31', 'spiral', 100000);
INSERT INTO public.galaxy VALUES (2, 'Sombrero Galaxy', 'M104', 'elliptical', 140000);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy', 'M51', 'spiral', 100000);
INSERT INTO public.galaxy VALUES (4, 'Milky Way Galaxy', NULL, 'spiral', 100000);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 'NGC 2403', 'spiral', 130000);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'NGC 5128', 'elliptical', 65000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth', 'spheroid', 3474, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars I', 'irregular', 22, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars II', 'potato', 13, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiter I', 'spheroid', 3642, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter II', 'spheroid', 3138, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Jupiter III', 'spheroid', 5268, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiter IV', 'spheroid', 4821, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn VI', 'spheroid', 5149, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Saturn V', 'oblate spheroid', 1529, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Saturn X', 'walnut', 1492, 6);
INSERT INTO public.moon VALUES (11, 'Miranda', 'Uranus V', 'irregular', 476, 7);
INSERT INTO public.moon VALUES (12, 'Ariel', 'Uranus I', 'spheroid', 1164, 7);
INSERT INTO public.moon VALUES (13, 'Umbriel', 'Uranus II', 'spheroid', 1169, 7);
INSERT INTO public.moon VALUES (14, 'Titania', 'Uranus III', 'spheroid', 1578, 7);
INSERT INTO public.moon VALUES (15, 'Oberon', 'Uranus IV', 'spheroid', 1522, 7);
INSERT INTO public.moon VALUES (16, 'Triton', 'Neptune I', 'spheroid', 2709, 8);
INSERT INTO public.moon VALUES (17, 'Proteus', 'Neptune VIII', 'irregular', 420, 8);
INSERT INTO public.moon VALUES (18, 'Nereid', 'Neptune II', 'irregular', 340, 8);
INSERT INTO public.moon VALUES (19, 'Larissa', 'Neptune VII', 'irregular', 200, 8);
INSERT INTO public.moon VALUES (20, 'Charon', 'Pluto I', 'spheroid', 1212, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', '1', 4879, 0.05500, 9);
INSERT INTO public.planet VALUES (2, 'Venus', '2', 12104, 0.81500, 9);
INSERT INTO public.planet VALUES (3, 'Earth', '3', 12742, 1.00000, 9);
INSERT INTO public.planet VALUES (4, 'Mars', '4', 6779, 0.10700, 9);
INSERT INTO public.planet VALUES (5, 'Jupiter', '5', 142800, 317.80000, 9);
INSERT INTO public.planet VALUES (6, 'Saturn', '6', 116464, 95.16000, 9);
INSERT INTO public.planet VALUES (7, 'Uranus', '7', 51118, 14.54000, 9);
INSERT INTO public.planet VALUES (8, 'Neptune', '8', 49528, 1.71400, 9);
INSERT INTO public.planet VALUES (9, 'Pluto', '134340', 2376, 0.00027, 9);
INSERT INTO public.planet VALUES (10, 'Ceres', '1 Ceres', 946, 0.00016, 9);
INSERT INTO public.planet VALUES (11, 'Eris', '136199', 2326, 0.00028, 9);
INSERT INTO public.planet VALUES (12, 'Haumea', '136108', 2310, 0.00007, 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 'Centaurus', false, false, 4);
INSERT INTO public.star VALUES (2, 'Sirius A', 'Canis Major', true, true, 4);
INSERT INTO public.star VALUES (3, 'Aldebaran', 'Taurus', true, false, 4);
INSERT INTO public.star VALUES (4, 'Betelguese', 'Orion', true, false, 4);
INSERT INTO public.star VALUES (5, 'Vega', 'Lyra', true, true, 4);
INSERT INTO public.star VALUES (6, 'Altair', 'Aquila', true, true, 4);
INSERT INTO public.star VALUES (7, 'Polaris', 'Ursa Minor', true, true, 4);
INSERT INTO public.star VALUES (8, 'Epsilon Eridani', 'Eridanus', false, true, 4);
INSERT INTO public.star VALUES (9, 'Sun', NULL, false, false, 4);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_designation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_designation_key UNIQUE (designation);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_designation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_designation_key UNIQUE (designation);


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
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


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

