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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


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
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (203, 2018, 'Final', 425, 426, 4, 2);
INSERT INTO public.games VALUES (204, 2018, 'Third Place', 427, 428, 2, 0);
INSERT INTO public.games VALUES (205, 2018, 'Semi-Final', 426, 428, 2, 1);
INSERT INTO public.games VALUES (206, 2018, 'Semi-Final', 425, 427, 1, 0);
INSERT INTO public.games VALUES (207, 2018, 'Quarter-Final', 426, 429, 3, 2);
INSERT INTO public.games VALUES (208, 2018, 'Quarter-Final', 428, 430, 2, 0);
INSERT INTO public.games VALUES (209, 2018, 'Quarter-Final', 427, 431, 2, 1);
INSERT INTO public.games VALUES (210, 2018, 'Quarter-Final', 425, 432, 2, 0);
INSERT INTO public.games VALUES (211, 2018, 'Eighth-Final', 428, 433, 2, 1);
INSERT INTO public.games VALUES (212, 2018, 'Eighth-Final', 430, 434, 1, 0);
INSERT INTO public.games VALUES (213, 2018, 'Eighth-Final', 427, 435, 3, 2);
INSERT INTO public.games VALUES (214, 2018, 'Eighth-Final', 431, 436, 2, 0);
INSERT INTO public.games VALUES (215, 2018, 'Eighth-Final', 426, 437, 2, 1);
INSERT INTO public.games VALUES (216, 2018, 'Eighth-Final', 429, 438, 2, 1);
INSERT INTO public.games VALUES (217, 2018, 'Eighth-Final', 432, 439, 2, 1);
INSERT INTO public.games VALUES (218, 2018, 'Eighth-Final', 425, 440, 4, 3);
INSERT INTO public.games VALUES (219, 2014, 'Final', 441, 440, 1, 0);
INSERT INTO public.games VALUES (220, 2014, 'Third Place', 442, 431, 3, 0);
INSERT INTO public.games VALUES (221, 2014, 'Semi-Final', 440, 442, 1, 0);
INSERT INTO public.games VALUES (222, 2014, 'Semi-Final', 441, 431, 7, 1);
INSERT INTO public.games VALUES (223, 2014, 'Quarter-Final', 442, 443, 1, 0);
INSERT INTO public.games VALUES (224, 2014, 'Quarter-Final', 440, 427, 1, 0);
INSERT INTO public.games VALUES (225, 2014, 'Quarter-Final', 431, 433, 2, 1);
INSERT INTO public.games VALUES (226, 2014, 'Quarter-Final', 441, 425, 1, 0);
INSERT INTO public.games VALUES (227, 2014, 'Eighth-Final', 431, 444, 2, 1);
INSERT INTO public.games VALUES (228, 2014, 'Eighth-Final', 433, 432, 2, 0);
INSERT INTO public.games VALUES (229, 2014, 'Eighth-Final', 425, 445, 2, 0);
INSERT INTO public.games VALUES (230, 2014, 'Eighth-Final', 441, 446, 2, 1);
INSERT INTO public.games VALUES (231, 2014, 'Eighth-Final', 442, 436, 2, 1);
INSERT INTO public.games VALUES (232, 2014, 'Eighth-Final', 443, 447, 2, 1);
INSERT INTO public.games VALUES (233, 2014, 'Eighth-Final', 440, 434, 1, 0);
INSERT INTO public.games VALUES (234, 2014, 'Eighth-Final', 427, 448, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (425, 'France');
INSERT INTO public.teams VALUES (426, 'Croatia');
INSERT INTO public.teams VALUES (427, 'Belgium');
INSERT INTO public.teams VALUES (428, 'England');
INSERT INTO public.teams VALUES (429, 'Russia');
INSERT INTO public.teams VALUES (430, 'Sweden');
INSERT INTO public.teams VALUES (431, 'Brazil');
INSERT INTO public.teams VALUES (432, 'Uruguay');
INSERT INTO public.teams VALUES (433, 'Colombia');
INSERT INTO public.teams VALUES (434, 'Switzerland');
INSERT INTO public.teams VALUES (435, 'Japan');
INSERT INTO public.teams VALUES (436, 'Mexico');
INSERT INTO public.teams VALUES (437, 'Denmark');
INSERT INTO public.teams VALUES (438, 'Spain');
INSERT INTO public.teams VALUES (439, 'Portugal');
INSERT INTO public.teams VALUES (440, 'Argentina');
INSERT INTO public.teams VALUES (441, 'Germany');
INSERT INTO public.teams VALUES (442, 'Netherlands');
INSERT INTO public.teams VALUES (443, 'Costa Rica');
INSERT INTO public.teams VALUES (444, 'Chile');
INSERT INTO public.teams VALUES (445, 'Nigeria');
INSERT INTO public.teams VALUES (446, 'Algeria');
INSERT INTO public.teams VALUES (447, 'Greece');
INSERT INTO public.teams VALUES (448, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 234, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 53, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 53, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 448, true);


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

