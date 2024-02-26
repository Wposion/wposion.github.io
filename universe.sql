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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    galaxy_types integer
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
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(10,5),
    distance_from_earth numeric(10,5),
    planet_id integer
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
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_types integer,
    age_in_millions_of_years numeric(10,5),
    distance_from_earth numeric(10,5),
    star_id integer
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
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


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
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'earth1', 'desc for earth1');
INSERT INTO public.earth VALUES (2, 'earth2', 'desc for earth2');
INSERT INTO public.earth VALUES (3, 'earth3', 'desc for earth3');
INSERT INTO public.earth VALUES (4, 'earth4', 'desc for earth4');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'The Milky Way', 'description for The Milky Way', false, 1);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 'description for Large Magellanic Cloud', false, 2);
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', 'description for Small Magellanic Cloud', false, 2);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 'description for Andromeda Galaxy', false, 3);
INSERT INTO public.galaxy VALUES (5, 'Canis Major Dwarf Galaxy', 'description for Canis Major Dwarf Galaxy', false, 4);
INSERT INTO public.galaxy VALUES (6, 'Aquila Stream', 'description for Aquila Stream', false, 5);
INSERT INTO public.galaxy VALUES (7, 'Sagittarius Dwarf Elliptical Galaxy', 'description for Sagittarius Dwarf Elliptical Galaxy', false, 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'description for moon', false, true, 60.00000, 35.01000, 1);
INSERT INTO public.moon VALUES (2, 'moon1', 'description for moon1', false, true, 60.00000, 35.01000, 2);
INSERT INTO public.moon VALUES (3, 'moon2', 'description for moon2', false, true, 60.00000, 35.01000, 2);
INSERT INTO public.moon VALUES (4, 'moon3', 'description for moon3', false, true, 60.00000, 35.01000, 3);
INSERT INTO public.moon VALUES (5, 'moon4', 'description for moon4', false, true, 60.00000, 35.01000, 3);
INSERT INTO public.moon VALUES (6, 'moon5', 'description for moon5', false, true, 60.00000, 35.01000, 4);
INSERT INTO public.moon VALUES (7, 'moon6', 'description for moon6', false, true, 60.00000, 35.01000, 5);
INSERT INTO public.moon VALUES (8, 'moon7', 'description for moon7', false, true, 60.00000, 35.01000, 6);
INSERT INTO public.moon VALUES (9, 'moon8', 'description for moon8', false, true, 60.00000, 35.01000, 7);
INSERT INTO public.moon VALUES (10, 'moon9', 'description for moon9', false, true, 60.00000, 35.01000, 2);
INSERT INTO public.moon VALUES (11, 'moon10', 'description for moon10', false, true, 60.00000, 35.01000, 3);
INSERT INTO public.moon VALUES (12, 'moon11', 'description for moon11', false, true, 60.00000, 35.01000, 4);
INSERT INTO public.moon VALUES (13, 'moon12', 'description for moon12', false, true, 60.00000, 35.01000, 8);
INSERT INTO public.moon VALUES (14, 'moon13', 'description for moon13', false, true, 60.00000, 35.01000, 9);
INSERT INTO public.moon VALUES (15, 'moon14', 'description for moon14', false, true, 60.00000, 35.01000, 10);
INSERT INTO public.moon VALUES (16, 'moon15', 'description for moon15', false, true, 60.00000, 35.01000, 11);
INSERT INTO public.moon VALUES (17, 'moon16', 'description for moon16', false, true, 60.00000, 35.01000, 12);
INSERT INTO public.moon VALUES (18, 'moon17', 'description for moon17', false, true, 60.00000, 35.01000, 13);
INSERT INTO public.moon VALUES (19, 'moon18', 'description for moon18', false, true, 60.00000, 35.01000, 14);
INSERT INTO public.moon VALUES (20, 'moon19', 'description for moon19', false, true, 60.00000, 35.01000, 15);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 'description for earth', true, false, 1, 60.00000, 0.00000, 1);
INSERT INTO public.planet VALUES (2, 'planet1', 'description for planet1', false, false, 1, 60.00000, 87.00000, 1);
INSERT INTO public.planet VALUES (3, 'planet2', 'description for planet2', false, false, 1, 61.00000, 87.01000, 2);
INSERT INTO public.planet VALUES (4, 'planet3', 'description for planet3', false, false, 1, 62.00000, 87.02000, 2);
INSERT INTO public.planet VALUES (5, 'planet4', 'description for planet4', false, false, 1, 63.00000, 87.03000, 3);
INSERT INTO public.planet VALUES (6, 'planet5', 'description for planet5', false, false, 1, 64.00000, 87.04000, 3);
INSERT INTO public.planet VALUES (7, 'planet6', 'description for planet6', false, false, 1, 65.00000, 87.05000, 4);
INSERT INTO public.planet VALUES (8, 'planet7', 'description for planet7', false, false, 1, 66.00000, 87.06000, 5);
INSERT INTO public.planet VALUES (9, 'planet8', 'description for planet8', false, false, 1, 67.00000, 87.07000, 6);
INSERT INTO public.planet VALUES (10, 'planet9', 'description for planet9', false, false, 1, 68.00000, 87.08000, 4);
INSERT INTO public.planet VALUES (11, 'planet10', 'description for planet10', false, false, 1, 69.00000, 87.09000, 4);
INSERT INTO public.planet VALUES (12, 'planet11', 'description for planet11', false, false, 1, 70.00000, 87.10000, 5);
INSERT INTO public.planet VALUES (13, 'planet12', 'description for planet12', false, false, 1, 71.00000, 87.12000, 2);
INSERT INTO public.planet VALUES (14, 'planet13', 'description for planet13', false, false, 1, 72.00000, 87.13000, 3);
INSERT INTO public.planet VALUES (15, 'planet14', 'description for planet14', false, false, 1, 73.00000, 87.14000, 7);
INSERT INTO public.planet VALUES (16, 'planet15', 'description for planet15', false, false, 1, 74.00000, 87.15000, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'description for star1', false, 1);
INSERT INTO public.star VALUES (2, 'star2', 'description for star2', false, 1);
INSERT INTO public.star VALUES (3, 'star3', 'description for star3', false, 2);
INSERT INTO public.star VALUES (4, 'star4', 'description for star4', false, 3);
INSERT INTO public.star VALUES (5, 'star5', 'description for star5', false, 4);
INSERT INTO public.star VALUES (6, 'star6', 'description for star6', false, 5);
INSERT INTO public.star VALUES (7, 'star7', 'description for star7', false, 6);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


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

