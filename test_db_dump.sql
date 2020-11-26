--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

-- Started on 2020-11-26 22:45:35 +08

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

--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 38377)
-- Name: test_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_table (
    test_id character varying NOT NULL,
    test_name character varying
);


ALTER TABLE public.test_table OWNER TO postgres;

--
-- TOC entry 3132 (class 0 OID 38377)
-- Dependencies: 203
-- Data for Name: test_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_table (test_id, test_name) FROM stdin;
test_id_1	test_name_1
\.


--
-- TOC entry 3005 (class 2606 OID 38384)
-- Name: test_table test_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_table
    ADD CONSTRAINT test_table_pkey PRIMARY KEY (test_id);


-- Completed on 2020-11-26 22:45:37 +08

--
-- PostgreSQL database dump complete
--

