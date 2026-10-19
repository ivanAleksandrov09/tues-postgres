--
-- PostgreSQL database dump
--

\restrict ndHszL5xt6jCunSMA36fyTcvwp3m1K9iQ3SWTAdcbXw5dkHTbUyxKNWL3mn74Wg

-- Dumped from database version 18.6 (Debian 18.6-1.pgdg13+2)
-- Dumped by pg_dump version 18.6 (Debian 18.6-1.pgdg13+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: grades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grades (
    user_id integer,
    subject_id integer,
    grade integer,
    "time" timestamp without time zone NOT NULL,
    CONSTRAINT grades_grade_check CHECK (((grade >= 2) AND (grade <= 6)))
);


ALTER TABLE public.grades OWNER TO postgres;

--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.subjects OWNER TO postgres;

--
-- Data for Name: grades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grades (user_id, subject_id, grade, "time") FROM stdin;
1	1	5	2026-09-05 09:00:00
1	1	4	2026-09-12 09:00:00
1	1	6	2026-09-20 09:00:00
1	2	5	2026-09-06 10:00:00
1	3	3	2026-09-07 11:00:00
2	1	6	2026-09-05 09:00:00
2	2	4	2026-09-06 10:00:00
2	3	5	2026-09-07 11:00:00
2	4	6	2026-09-08 12:00:00
3	1	3	2026-09-05 09:00:00
3	2	3	2026-09-06 10:00:00
3	3	4	2026-09-07 11:00:00
3	4	5	2026-09-08 12:00:00
4	1	4	2026-09-05 09:00:00
4	2	5	2026-09-06 10:00:00
4	3	6	2026-09-07 11:00:00
4	4	4	2026-09-08 12:00:00
5	1	2	2026-09-05 09:00:00
5	2	4	2026-09-06 10:00:00
5	3	5	2026-09-07 11:00:00
5	4	3	2026-09-08 12:00:00
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (id, name) FROM stdin;
1	Alex Johnson
2	Maria Garcia
3	Liam Chen
4	Sofia Rossi
5	Ethan Novak
\.


--
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects (id, name) FROM stdin;
1	Mathematics
2	Physics
3	History
4	Literature
\.


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);


--
-- Name: grades grades_subject_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subjects(id);


--
-- Name: grades grades_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.students(id);


--
-- PostgreSQL database dump complete
--

\unrestrict ndHszL5xt6jCunSMA36fyTcvwp3m1K9iQ3SWTAdcbXw5dkHTbUyxKNWL3mn74Wg

