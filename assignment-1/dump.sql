--
-- PostgreSQL database dump
--

\restrict G0okE2TnmhSekUEajMe9mvMl1W0xQHMypRrtFGrksNn5TKGoK9rd4iWneYIEQ51

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
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    id integer NOT NULL,
    title text NOT NULL,
    author text NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.books OWNER TO postgres;

--
-- Name: loans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loans (
    user_id integer,
    book_id integer,
    borrowed timestamp without time zone NOT NULL,
    returned boolean DEFAULT false NOT NULL
);


ALTER TABLE public.loans OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (id, title, author, year) FROM stdin;
1	To Kill a Mockingbird	Harper Lee	1960
2	1984	George Orwell	1949
3	The Great Gatsby	F. Scott Fitzgerald	1925
4	Moby Dick	Herman Melville	1851
5	Pride and Prejudice	Jane Austen	1813
6	The Catcher in the Rye	J.D. Salinger	1951
\.


--
-- Data for Name: loans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loans (user_id, book_id, borrowed, returned) FROM stdin;
1	1	2026-09-09 07:19:27.375376	t
2	1	2026-09-24 07:19:27.375376	f
3	2	2026-10-01 07:19:27.375376	f
4	3	2026-10-14 07:19:27.375376	f
1	4	2026-09-19 07:19:27.375376	t
2	5	2026-10-09 07:19:27.375376	t
3	6	2026-08-20 07:19:27.375376	t
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name) FROM stdin;
1	Alice Smith
2	Bob Jones
3	Charlie Brown
4	Diana Prince
\.


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: loans loans_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(id);


--
-- Name: loans loans_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

\unrestrict G0okE2TnmhSekUEajMe9mvMl1W0xQHMypRrtFGrksNn5TKGoK9rd4iWneYIEQ51

