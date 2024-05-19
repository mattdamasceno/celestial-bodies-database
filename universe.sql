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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(100) NOT NULL,
    stars integer NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(35) NOT NULL,
    spiral_galaxy boolean NOT NULL,
    diameter text,
    magnitude_apar integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(35) NOT NULL,
    discovery_year integer,
    mass text NOT NULL,
    diameter numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(35) NOT NULL,
    gas_giant boolean,
    discovery_year integer NOT NULL,
    moons integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(35) NOT NULL,
    radial_speed numeric,
    absolute_magnitude numeric NOT NULL,
    light_years numeric,
    temperature integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 7);
INSERT INTO public.constellation VALUES (2, 'Ursa Maior', 7);
INSERT INTO public.constellation VALUES (3, 'Cassiopeia', 7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', true, '220,000 light years', 3);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', true, '60,000 light years', 6);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', false, '50,000 light years', 9);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', true, '76,000 light years', 8);
INSERT INTO public.galaxy VALUES (7, 'Black Eye Galaxy', true, '41,000 light years', 9);
INSERT INTO public.galaxy VALUES (8, 'Messier 87', false, '120,000 light years', 10);
INSERT INTO public.galaxy VALUES (9, 'Centaurus A', false, '60,000 light years', 7);
INSERT INTO public.galaxy VALUES (10, 'NGC 1300', true, '110,000 light years', 11);
INSERT INTO public.galaxy VALUES (11, 'NGC 6744', true, '175,000 light years', 9);
INSERT INTO public.galaxy VALUES (12, 'Large Magellanic Cloud', false, '14,000 light years', 1);
INSERT INTO public.galaxy VALUES (13, 'Small Magellanic Cloud', false, '7,000 light years', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'Titã', 1655, '1.345x10^23', NULL, 7);
INSERT INTO public.moon VALUES (5, 'Encélado', 1789, '1.08x10^20', NULL, 7);
INSERT INTO public.moon VALUES (6, 'Fobos', 1877, '10.08x10^16', NULL, 5);
INSERT INTO public.moon VALUES (7, 'Io', 1610, '8.93x10^22', NULL, 6);
INSERT INTO public.moon VALUES (8, 'Deimos', 1877, '2.24x10^15', NULL, 5);
INSERT INTO public.moon VALUES (9, 'Calisto', 1610, '1.08x10^23', NULL, 6);
INSERT INTO public.moon VALUES (11, 'Oberon', 1787, '3.01x10^21', NULL, 8);
INSERT INTO public.moon VALUES (12, 'Mimas', 1789, '3.84x10^19', NULL, 7);
INSERT INTO public.moon VALUES (13, 'Ariel', 1851, '1.35x10^21', NULL, 8);
INSERT INTO public.moon VALUES (1, 'Lua', NULL, '7.35x10^22', 3476.2, 4);
INSERT INTO public.moon VALUES (2, 'Europa', 1610, '4.82x10^22', 3121.6, 6);
INSERT INTO public.moon VALUES (14, 'Tritão', 1846, '2.14x10^22', 2706.8, 9);
INSERT INTO public.moon VALUES (15, 'Miranda', 1948, '6.59x10^19', 471.6, 8);
INSERT INTO public.moon VALUES (16, 'Dione', 1684, '1.095x10^21', 1123, 7);
INSERT INTO public.moon VALUES (17, 'Rhea', 1672, '2.31x10^21', 1527, 7);
INSERT INTO public.moon VALUES (18, 'Umbriel', 1851, '1.27x10^21', 1169, 8);
INSERT INTO public.moon VALUES (19, 'Titânia', 1787, '3.53x10^21', 1577.8, 8);
INSERT INTO public.moon VALUES (20, 'Tétis', 1684, '6.18x10^20', 1062, 7);
INSERT INTO public.moon VALUES (23, 'Caronte', 1978, '1.586x10^21', NULL, 14);
INSERT INTO public.moon VALUES (3, 'Ganímedes', 1610, '1.48x10^23', NULL, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', false, 0, 0, 2);
INSERT INTO public.planet VALUES (3, 'Venus', false, 0, 0, 2);
INSERT INTO public.planet VALUES (4, 'Earth', false, 0, 1, 2);
INSERT INTO public.planet VALUES (5, 'Mars', false, 0, 2, 2);
INSERT INTO public.planet VALUES (6, 'Jupiter', true, 0, 79, 2);
INSERT INTO public.planet VALUES (7, 'Saturn', true, 0, 83, 2);
INSERT INTO public.planet VALUES (8, 'Uranus', true, 1781, 27, 2);
INSERT INTO public.planet VALUES (9, 'Neptune', true, 1846, 14, 2);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', false, 2011, 0, 10);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', false, 2016, 0, 3);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1d', false, 2017, 0, 8);
INSERT INTO public.planet VALUES (13, '51 Pegasi b', true, 1995, 0, 9);
INSERT INTO public.planet VALUES (14, 'Plutão', false, 1930, 5, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', -7.6, 1.42, 8.57, NULL, 1);
INSERT INTO public.star VALUES (2, 'Sun', 0, 4.85, 0.00001524, NULL, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 22.2, 15.5, 4.24, 3042, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', -21.5, -5.14, 642.5, 3600, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', -19.4, 4.4, 4.37, 5790, 1);
INSERT INTO public.star VALUES (6, 'Vega', 12.5, 0.58, 25.04, 9602, 1);
INSERT INTO public.star VALUES (7, 'Polaris', -17.9, -3.64, 323.2, 6000, 1);
INSERT INTO public.star VALUES (8, 'TRAPPIST-1', 0, 18.798, 39.5, 2550, 1);
INSERT INTO public.star VALUES (9, '52 Pegasi', -12.0, 2.77, 50.9, 5750, 1);
INSERT INTO public.star VALUES (10, 'Kepler-22', 0, 7.33, 620, 5500, 1);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 13, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 24, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 10, true);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: constellation name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

