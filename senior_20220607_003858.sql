--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7 (Debian 12.7-1.pgdg100+1)
-- Dumped by pg_dump version 14.0

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
-- Name: senior; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA senior;


ALTER SCHEMA senior OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: lists; Type: TABLE; Schema: senior; Owner: postgres
--

CREATE TABLE senior.lists (
    id integer NOT NULL,
    task character varying(25) NOT NULL
);


ALTER TABLE senior.lists OWNER TO postgres;

--
-- Name: lists_id_seq; Type: SEQUENCE; Schema: senior; Owner: postgres
--

CREATE SEQUENCE senior.lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE senior.lists_id_seq OWNER TO postgres;

--
-- Name: lists_id_seq; Type: SEQUENCE OWNED BY; Schema: senior; Owner: postgres
--

ALTER SEQUENCE senior.lists_id_seq OWNED BY senior.lists.id;


--
-- Name: lists id; Type: DEFAULT; Schema: senior; Owner: postgres
--

ALTER TABLE ONLY senior.lists ALTER COLUMN id SET DEFAULT nextval('senior.lists_id_seq'::regclass);


--
-- Name: lists lists_pkey; Type: CONSTRAINT; Schema: senior; Owner: postgres
--

ALTER TABLE ONLY senior.lists
    ADD CONSTRAINT lists_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

