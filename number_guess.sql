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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: guesses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guesses (
    guess_id integer NOT NULL,
    number_guess integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.guesses OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guesses_guess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guesses_guess_id_seq OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guesses_guess_id_seq OWNED BY public.guesses.guess_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: guesses guess_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses ALTER COLUMN guess_id SET DEFAULT nextval('public.guesses_guess_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: guesses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guesses VALUES (9, 4, 39);
INSERT INTO public.guesses VALUES (10, 1, 40);
INSERT INTO public.guesses VALUES (11, 1, 40);
INSERT INTO public.guesses VALUES (12, 409, 41);
INSERT INTO public.guesses VALUES (13, 1, 41);
INSERT INTO public.guesses VALUES (14, 443, 40);
INSERT INTO public.guesses VALUES (15, 1, 40);
INSERT INTO public.guesses VALUES (16, 1, 40);
INSERT INTO public.guesses VALUES (17, 2, 39);
INSERT INTO public.guesses VALUES (18, 442, 42);
INSERT INTO public.guesses VALUES (19, 1, 42);
INSERT INTO public.guesses VALUES (20, 140, 43);
INSERT INTO public.guesses VALUES (21, 515, 43);
INSERT INTO public.guesses VALUES (22, 1, 42);
INSERT INTO public.guesses VALUES (23, 1, 42);
INSERT INTO public.guesses VALUES (24, 1, 42);
INSERT INTO public.guesses VALUES (25, 1, 44);
INSERT INTO public.guesses VALUES (26, 1, 44);
INSERT INTO public.guesses VALUES (27, 247, 45);
INSERT INTO public.guesses VALUES (28, 1, 45);
INSERT INTO public.guesses VALUES (29, 610, 44);
INSERT INTO public.guesses VALUES (30, 36, 44);
INSERT INTO public.guesses VALUES (31, 1, 44);
INSERT INTO public.guesses VALUES (32, 517, 46);
INSERT INTO public.guesses VALUES (33, 1, 46);
INSERT INTO public.guesses VALUES (34, 887, 47);
INSERT INTO public.guesses VALUES (35, 1, 47);
INSERT INTO public.guesses VALUES (36, 1, 46);
INSERT INTO public.guesses VALUES (37, 1, 46);
INSERT INTO public.guesses VALUES (38, 1, 46);
INSERT INTO public.guesses VALUES (39, 742, 48);
INSERT INTO public.guesses VALUES (40, 1, 48);
INSERT INTO public.guesses VALUES (41, 186, 49);
INSERT INTO public.guesses VALUES (42, 1, 49);
INSERT INTO public.guesses VALUES (43, 1, 48);
INSERT INTO public.guesses VALUES (44, 1, 48);
INSERT INTO public.guesses VALUES (45, 1, 48);
INSERT INTO public.guesses VALUES (46, 4, 51);
INSERT INTO public.guesses VALUES (47, 1, 52);
INSERT INTO public.guesses VALUES (48, 1, 52);
INSERT INTO public.guesses VALUES (49, 1, 53);
INSERT INTO public.guesses VALUES (50, 1, 53);
INSERT INTO public.guesses VALUES (51, 1, 52);
INSERT INTO public.guesses VALUES (52, 1, 52);
INSERT INTO public.guesses VALUES (53, 1, 52);
INSERT INTO public.guesses VALUES (54, 1, 54);
INSERT INTO public.guesses VALUES (55, 742, 54);
INSERT INTO public.guesses VALUES (56, 168, 55);
INSERT INTO public.guesses VALUES (57, 1, 55);
INSERT INTO public.guesses VALUES (58, 1, 54);
INSERT INTO public.guesses VALUES (59, 259, 54);
INSERT INTO public.guesses VALUES (60, 1, 54);
INSERT INTO public.guesses VALUES (61, 1, 56);
INSERT INTO public.guesses VALUES (62, 1, 56);
INSERT INTO public.guesses VALUES (63, 541, 57);
INSERT INTO public.guesses VALUES (64, 1, 57);
INSERT INTO public.guesses VALUES (65, 1, 56);
INSERT INTO public.guesses VALUES (66, 1, 56);
INSERT INTO public.guesses VALUES (67, 1, 56);
INSERT INTO public.guesses VALUES (68, 4, 61);
INSERT INTO public.guesses VALUES (69, 422, 62);
INSERT INTO public.guesses VALUES (70, 580, 62);
INSERT INTO public.guesses VALUES (71, 2, 63);
INSERT INTO public.guesses VALUES (72, 853, 63);
INSERT INTO public.guesses VALUES (73, 96, 62);
INSERT INTO public.guesses VALUES (74, 217, 62);
INSERT INTO public.guesses VALUES (75, 280, 62);
INSERT INTO public.guesses VALUES (76, 1, 64);
INSERT INTO public.guesses VALUES (77, 234, 64);
INSERT INTO public.guesses VALUES (78, 60, 65);
INSERT INTO public.guesses VALUES (79, 849, 65);
INSERT INTO public.guesses VALUES (80, 309, 64);
INSERT INTO public.guesses VALUES (81, 425, 64);
INSERT INTO public.guesses VALUES (82, 129, 64);
INSERT INTO public.guesses VALUES (83, 1, 66);
INSERT INTO public.guesses VALUES (84, 173, 66);
INSERT INTO public.guesses VALUES (85, 798, 67);
INSERT INTO public.guesses VALUES (86, 831, 67);
INSERT INTO public.guesses VALUES (87, 344, 66);
INSERT INTO public.guesses VALUES (88, 895, 66);
INSERT INTO public.guesses VALUES (89, 745, 66);
INSERT INTO public.guesses VALUES (90, 215, 68);
INSERT INTO public.guesses VALUES (91, 802, 68);
INSERT INTO public.guesses VALUES (92, 284, 69);
INSERT INTO public.guesses VALUES (93, 84, 69);
INSERT INTO public.guesses VALUES (94, 395, 68);
INSERT INTO public.guesses VALUES (95, 485, 68);
INSERT INTO public.guesses VALUES (96, 133, 68);
INSERT INTO public.guesses VALUES (97, 19, 70);
INSERT INTO public.guesses VALUES (98, 878, 70);
INSERT INTO public.guesses VALUES (99, 290, 71);
INSERT INTO public.guesses VALUES (100, 781, 71);
INSERT INTO public.guesses VALUES (101, 887, 70);
INSERT INTO public.guesses VALUES (102, 543, 70);
INSERT INTO public.guesses VALUES (103, 517, 70);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (39, 'maria');
INSERT INTO public.users VALUES (40, 'user_1679674459164');
INSERT INTO public.users VALUES (41, 'user_1679674459163');
INSERT INTO public.users VALUES (42, 'user_1679674516893');
INSERT INTO public.users VALUES (43, 'user_1679674516892');
INSERT INTO public.users VALUES (44, 'user_1679674612890');
INSERT INTO public.users VALUES (45, 'user_1679674612889');
INSERT INTO public.users VALUES (46, 'user_1679674760065');
INSERT INTO public.users VALUES (47, 'user_1679674760063');
INSERT INTO public.users VALUES (48, 'user_1679675250752');
INSERT INTO public.users VALUES (49, 'user_1679675250751');
INSERT INTO public.users VALUES (50, 'mimi');
INSERT INTO public.users VALUES (51, 'mm');
INSERT INTO public.users VALUES (52, 'user_1679675711281');
INSERT INTO public.users VALUES (53, 'user_1679675711280');
INSERT INTO public.users VALUES (54, 'user_1679675848126');
INSERT INTO public.users VALUES (55, 'user_1679675848125');
INSERT INTO public.users VALUES (56, 'user_1679676071723');
INSERT INTO public.users VALUES (57, 'user_1679676071722');
INSERT INTO public.users VALUES (58, '');
INSERT INTO public.users VALUES (59, 'bababa');
INSERT INTO public.users VALUES (60, 'ramadhan');
INSERT INTO public.users VALUES (61, 'karim');
INSERT INTO public.users VALUES (62, 'user_1679677382751');
INSERT INTO public.users VALUES (63, 'user_1679677382750');
INSERT INTO public.users VALUES (64, 'user_1679677539470');
INSERT INTO public.users VALUES (65, 'user_1679677539469');
INSERT INTO public.users VALUES (66, 'user_1679677561908');
INSERT INTO public.users VALUES (67, 'user_1679677561907');
INSERT INTO public.users VALUES (68, 'user_1679677613640');
INSERT INTO public.users VALUES (69, 'user_1679677613639');
INSERT INTO public.users VALUES (70, 'user_1679677683254');
INSERT INTO public.users VALUES (71, 'user_1679677683253');


--
-- Name: guesses_guess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guesses_guess_id_seq', 103, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 71, true);


--
-- Name: guesses guesses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_pkey PRIMARY KEY (guess_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: guesses guesses_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: guesses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guesses (
    guess_id integer NOT NULL,
    number_guess integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.guesses OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guesses_guess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guesses_guess_id_seq OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guesses_guess_id_seq OWNED BY public.guesses.guess_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: guesses guess_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses ALTER COLUMN guess_id SET DEFAULT nextval('public.guesses_guess_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: guesses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guesses VALUES (9, 4, 39);
INSERT INTO public.guesses VALUES (10, 1, 40);
INSERT INTO public.guesses VALUES (11, 1, 40);
INSERT INTO public.guesses VALUES (12, 409, 41);
INSERT INTO public.guesses VALUES (13, 1, 41);
INSERT INTO public.guesses VALUES (14, 443, 40);
INSERT INTO public.guesses VALUES (15, 1, 40);
INSERT INTO public.guesses VALUES (16, 1, 40);
INSERT INTO public.guesses VALUES (17, 2, 39);
INSERT INTO public.guesses VALUES (18, 442, 42);
INSERT INTO public.guesses VALUES (19, 1, 42);
INSERT INTO public.guesses VALUES (20, 140, 43);
INSERT INTO public.guesses VALUES (21, 515, 43);
INSERT INTO public.guesses VALUES (22, 1, 42);
INSERT INTO public.guesses VALUES (23, 1, 42);
INSERT INTO public.guesses VALUES (24, 1, 42);
INSERT INTO public.guesses VALUES (25, 1, 44);
INSERT INTO public.guesses VALUES (26, 1, 44);
INSERT INTO public.guesses VALUES (27, 247, 45);
INSERT INTO public.guesses VALUES (28, 1, 45);
INSERT INTO public.guesses VALUES (29, 610, 44);
INSERT INTO public.guesses VALUES (30, 36, 44);
INSERT INTO public.guesses VALUES (31, 1, 44);
INSERT INTO public.guesses VALUES (32, 517, 46);
INSERT INTO public.guesses VALUES (33, 1, 46);
INSERT INTO public.guesses VALUES (34, 887, 47);
INSERT INTO public.guesses VALUES (35, 1, 47);
INSERT INTO public.guesses VALUES (36, 1, 46);
INSERT INTO public.guesses VALUES (37, 1, 46);
INSERT INTO public.guesses VALUES (38, 1, 46);
INSERT INTO public.guesses VALUES (39, 742, 48);
INSERT INTO public.guesses VALUES (40, 1, 48);
INSERT INTO public.guesses VALUES (41, 186, 49);
INSERT INTO public.guesses VALUES (42, 1, 49);
INSERT INTO public.guesses VALUES (43, 1, 48);
INSERT INTO public.guesses VALUES (44, 1, 48);
INSERT INTO public.guesses VALUES (45, 1, 48);
INSERT INTO public.guesses VALUES (46, 4, 51);
INSERT INTO public.guesses VALUES (47, 1, 52);
INSERT INTO public.guesses VALUES (48, 1, 52);
INSERT INTO public.guesses VALUES (49, 1, 53);
INSERT INTO public.guesses VALUES (50, 1, 53);
INSERT INTO public.guesses VALUES (51, 1, 52);
INSERT INTO public.guesses VALUES (52, 1, 52);
INSERT INTO public.guesses VALUES (53, 1, 52);
INSERT INTO public.guesses VALUES (54, 1, 54);
INSERT INTO public.guesses VALUES (55, 742, 54);
INSERT INTO public.guesses VALUES (56, 168, 55);
INSERT INTO public.guesses VALUES (57, 1, 55);
INSERT INTO public.guesses VALUES (58, 1, 54);
INSERT INTO public.guesses VALUES (59, 259, 54);
INSERT INTO public.guesses VALUES (60, 1, 54);
INSERT INTO public.guesses VALUES (61, 1, 56);
INSERT INTO public.guesses VALUES (62, 1, 56);
INSERT INTO public.guesses VALUES (63, 541, 57);
INSERT INTO public.guesses VALUES (64, 1, 57);
INSERT INTO public.guesses VALUES (65, 1, 56);
INSERT INTO public.guesses VALUES (66, 1, 56);
INSERT INTO public.guesses VALUES (67, 1, 56);
INSERT INTO public.guesses VALUES (68, 4, 61);
INSERT INTO public.guesses VALUES (69, 422, 62);
INSERT INTO public.guesses VALUES (70, 580, 62);
INSERT INTO public.guesses VALUES (71, 2, 63);
INSERT INTO public.guesses VALUES (72, 853, 63);
INSERT INTO public.guesses VALUES (73, 96, 62);
INSERT INTO public.guesses VALUES (74, 217, 62);
INSERT INTO public.guesses VALUES (75, 280, 62);
INSERT INTO public.guesses VALUES (76, 1, 64);
INSERT INTO public.guesses VALUES (77, 234, 64);
INSERT INTO public.guesses VALUES (78, 60, 65);
INSERT INTO public.guesses VALUES (79, 849, 65);
INSERT INTO public.guesses VALUES (80, 309, 64);
INSERT INTO public.guesses VALUES (81, 425, 64);
INSERT INTO public.guesses VALUES (82, 129, 64);
INSERT INTO public.guesses VALUES (83, 1, 66);
INSERT INTO public.guesses VALUES (84, 173, 66);
INSERT INTO public.guesses VALUES (85, 798, 67);
INSERT INTO public.guesses VALUES (86, 831, 67);
INSERT INTO public.guesses VALUES (87, 344, 66);
INSERT INTO public.guesses VALUES (88, 895, 66);
INSERT INTO public.guesses VALUES (89, 745, 66);
INSERT INTO public.guesses VALUES (90, 215, 68);
INSERT INTO public.guesses VALUES (91, 802, 68);
INSERT INTO public.guesses VALUES (92, 284, 69);
INSERT INTO public.guesses VALUES (93, 84, 69);
INSERT INTO public.guesses VALUES (94, 395, 68);
INSERT INTO public.guesses VALUES (95, 485, 68);
INSERT INTO public.guesses VALUES (96, 133, 68);
INSERT INTO public.guesses VALUES (97, 19, 70);
INSERT INTO public.guesses VALUES (98, 878, 70);
INSERT INTO public.guesses VALUES (99, 290, 71);
INSERT INTO public.guesses VALUES (100, 781, 71);
INSERT INTO public.guesses VALUES (101, 887, 70);
INSERT INTO public.guesses VALUES (102, 543, 70);
INSERT INTO public.guesses VALUES (103, 517, 70);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (39, 'maria');
INSERT INTO public.users VALUES (40, 'user_1679674459164');
INSERT INTO public.users VALUES (41, 'user_1679674459163');
INSERT INTO public.users VALUES (42, 'user_1679674516893');
INSERT INTO public.users VALUES (43, 'user_1679674516892');
INSERT INTO public.users VALUES (44, 'user_1679674612890');
INSERT INTO public.users VALUES (45, 'user_1679674612889');
INSERT INTO public.users VALUES (46, 'user_1679674760065');
INSERT INTO public.users VALUES (47, 'user_1679674760063');
INSERT INTO public.users VALUES (48, 'user_1679675250752');
INSERT INTO public.users VALUES (49, 'user_1679675250751');
INSERT INTO public.users VALUES (50, 'mimi');
INSERT INTO public.users VALUES (51, 'mm');
INSERT INTO public.users VALUES (52, 'user_1679675711281');
INSERT INTO public.users VALUES (53, 'user_1679675711280');
INSERT INTO public.users VALUES (54, 'user_1679675848126');
INSERT INTO public.users VALUES (55, 'user_1679675848125');
INSERT INTO public.users VALUES (56, 'user_1679676071723');
INSERT INTO public.users VALUES (57, 'user_1679676071722');
INSERT INTO public.users VALUES (58, '');
INSERT INTO public.users VALUES (59, 'bababa');
INSERT INTO public.users VALUES (60, 'ramadhan');
INSERT INTO public.users VALUES (61, 'karim');
INSERT INTO public.users VALUES (62, 'user_1679677382751');
INSERT INTO public.users VALUES (63, 'user_1679677382750');
INSERT INTO public.users VALUES (64, 'user_1679677539470');
INSERT INTO public.users VALUES (65, 'user_1679677539469');
INSERT INTO public.users VALUES (66, 'user_1679677561908');
INSERT INTO public.users VALUES (67, 'user_1679677561907');
INSERT INTO public.users VALUES (68, 'user_1679677613640');
INSERT INTO public.users VALUES (69, 'user_1679677613639');
INSERT INTO public.users VALUES (70, 'user_1679677683254');
INSERT INTO public.users VALUES (71, 'user_1679677683253');


--
-- Name: guesses_guess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guesses_guess_id_seq', 103, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 71, true);


--
-- Name: guesses guesses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_pkey PRIMARY KEY (guess_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: guesses guesses_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

