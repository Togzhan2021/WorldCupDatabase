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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (833, 1229, 1230, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (834, 1231, 1232, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (835, 1230, 1232, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (836, 1229, 1231, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (837, 1230, 1233, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (838, 1232, 1234, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (839, 1231, 1235, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (840, 1229, 1236, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (841, 1232, 1237, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (842, 1234, 1238, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (843, 1231, 1239, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (844, 1235, 1240, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (845, 1230, 1241, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (846, 1233, 1242, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (847, 1236, 1243, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (848, 1229, 1244, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (849, 1245, 1244, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (850, 1246, 1235, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (851, 1244, 1246, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (852, 1245, 1235, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (853, 1246, 1247, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (854, 1244, 1231, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (855, 1235, 1237, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (856, 1245, 1229, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (857, 1235, 1248, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (858, 1237, 1236, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (859, 1229, 1249, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (860, 1245, 1250, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (861, 1246, 1240, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (862, 1247, 1251, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (863, 1244, 1238, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (864, 1231, 1252, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1229, 'France');
INSERT INTO public.teams VALUES (1230, 'Croatia');
INSERT INTO public.teams VALUES (1231, 'Belgium');
INSERT INTO public.teams VALUES (1232, 'England');
INSERT INTO public.teams VALUES (1233, 'Russia');
INSERT INTO public.teams VALUES (1234, 'Sweden');
INSERT INTO public.teams VALUES (1235, 'Brazil');
INSERT INTO public.teams VALUES (1236, 'Uruguay');
INSERT INTO public.teams VALUES (1237, 'Colombia');
INSERT INTO public.teams VALUES (1238, 'Switzerland');
INSERT INTO public.teams VALUES (1239, 'Japan');
INSERT INTO public.teams VALUES (1240, 'Mexico');
INSERT INTO public.teams VALUES (1241, 'Denmark');
INSERT INTO public.teams VALUES (1242, 'Spain');
INSERT INTO public.teams VALUES (1243, 'Portugal');
INSERT INTO public.teams VALUES (1244, 'Argentina');
INSERT INTO public.teams VALUES (1245, 'Germany');
INSERT INTO public.teams VALUES (1246, 'Netherlands');
INSERT INTO public.teams VALUES (1247, 'Costa Rica');
INSERT INTO public.teams VALUES (1248, 'Chile');
INSERT INTO public.teams VALUES (1249, 'Nigeria');
INSERT INTO public.teams VALUES (1250, 'Algeria');
INSERT INTO public.teams VALUES (1251, 'Greece');
INSERT INTO public.teams VALUES (1252, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 864, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1252, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

