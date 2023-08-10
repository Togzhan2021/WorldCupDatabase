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

INSERT INTO public.games VALUES (350, 504, 505, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (351, 506, 507, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (352, 505, 507, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (353, 504, 506, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (354, 505, 508, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (355, 507, 509, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (356, 506, 510, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (357, 504, 511, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (358, 507, 512, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (359, 509, 513, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (360, 506, 514, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (361, 510, 515, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (362, 505, 516, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (363, 508, 517, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (364, 511, 518, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (365, 504, 519, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (366, 520, 519, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (367, 521, 510, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (368, 519, 521, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (369, 520, 510, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (370, 521, 522, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (371, 519, 506, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (372, 510, 512, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (373, 520, 504, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (374, 510, 523, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (375, 512, 511, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (376, 504, 524, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (377, 520, 525, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (378, 521, 515, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (379, 522, 526, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (380, 519, 513, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (381, 506, 527, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (504, 'France');
INSERT INTO public.teams VALUES (505, 'Croatia');
INSERT INTO public.teams VALUES (506, 'Belgium');
INSERT INTO public.teams VALUES (507, 'England');
INSERT INTO public.teams VALUES (508, 'Russia');
INSERT INTO public.teams VALUES (509, 'Sweden');
INSERT INTO public.teams VALUES (510, 'Brazil');
INSERT INTO public.teams VALUES (511, 'Uruguay');
INSERT INTO public.teams VALUES (512, 'Colombia');
INSERT INTO public.teams VALUES (513, 'Switzerland');
INSERT INTO public.teams VALUES (514, 'Japan');
INSERT INTO public.teams VALUES (515, 'Mexico');
INSERT INTO public.teams VALUES (516, 'Denmark');
INSERT INTO public.teams VALUES (517, 'Spain');
INSERT INTO public.teams VALUES (518, 'Portugal');
INSERT INTO public.teams VALUES (519, 'Argentina');
INSERT INTO public.teams VALUES (520, 'Germany');
INSERT INTO public.teams VALUES (521, 'Netherlands');
INSERT INTO public.teams VALUES (522, 'Costa Rica');
INSERT INTO public.teams VALUES (523, 'Chile');
INSERT INTO public.teams VALUES (524, 'Nigeria');
INSERT INTO public.teams VALUES (525, 'Algeria');
INSERT INTO public.teams VALUES (526, 'Greece');
INSERT INTO public.teams VALUES (527, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 381, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 527, true);


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

