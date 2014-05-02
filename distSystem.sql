--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: address; Type: TABLE; Schema: public; Owner: christianlevi; Tablespace: 
--

CREATE TABLE address (
    id integer NOT NULL,
    address_1 character(64) NOT NULL,
    address_2 character(64),
    city character(64) NOT NULL,
    zip character(12) NOT NULL,
    state character(32) NOT NULL,
    county character(32),
    country character(64) DEFAULT 'USA'::bpchar NOT NULL
);


ALTER TABLE public.address OWNER TO christianlevi;

--
-- Name: certificate; Type: TABLE; Schema: public; Owner: christianlevi; Tablespace: 
--

CREATE TABLE certificate (
    id integer NOT NULL,
    cer_code character(32) NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    expire_date date,
    issued_by text NOT NULL,
    t_code character(32)
);


ALTER TABLE public.certificate OWNER TO christianlevi;

--
-- Name: company; Type: TABLE; Schema: public; Owner: christianlevi; Tablespace: 
--

CREATE TABLE company (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.company OWNER TO christianlevi;

--
-- Name: course; Type: TABLE; Schema: public; Owner: christianlevi; Tablespace: 
--

CREATE TABLE course (
    id integer NOT NULL,
    title text NOT NULL,
    level character(12) NOT NULL,
    format character(32) NOT NULL,
    description text NOT NULL,
    status character(1) NOT NULL,
    c_code character(32) NOT NULL
);


ALTER TABLE public.course OWNER TO christianlevi;

--
-- Name: educ_institute; Type: TABLE; Schema: public; Owner: christianlevi; Tablespace: 
--

CREATE TABLE educ_institute (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.educ_institute OWNER TO christianlevi;

--
-- Name: job; Type: TABLE; Schema: public; Owner: christianlevi; Tablespace: 
--

CREATE TABLE job (
    id integer NOT NULL,
    job_code character(32) NOT NULL,
    pos_id integer NOT NULL,
    type character(12) NOT NULL,
    pay_type character(12) NOT NULL,
    pay_rate character(12) NOT NULL,
    company_id integer NOT NULL
);


ALTER TABLE public.job OWNER TO christianlevi;

--
-- Name: knowledge_skill; Type: TABLE; Schema: public; Owner: christianlevi; Tablespace: 
--

CREATE TABLE knowledge_skill (
    id integer NOT NULL,
    ks_code character(32) NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    level character(12) NOT NULL
);


ALTER TABLE public.knowledge_skill OWNER TO christianlevi;

--
-- Name: offers_course; Type: TABLE; Schema: public; Owner: christianlevi; Tablespace: 
--

CREATE TABLE offers_course (
    educ_institute_id integer NOT NULL,
    section_id integer NOT NULL
);


ALTER TABLE public.offers_course OWNER TO christianlevi;

--
-- Name: person; Type: TABLE; Schema: public; Owner: christianlevi; Tablespace: 
--

CREATE TABLE person (
    id integer NOT NULL,
    name text NOT NULL,
    address_id integer,
    zip_code character(12),
    email character(64),
    gender character(1)
);


ALTER TABLE public.person OWNER TO christianlevi;

--
-- Name: position; Type: TABLE; Schema: public; Owner: christianlevi; Tablespace: 
--

CREATE TABLE "position" (
    id integer NOT NULL,
    pos_code character(32) NOT NULL,
    title character(64) NOT NULL,
    description text,
    base_pay_type character(12) NOT NULL,
    base_pay numeric(12,2) NOT NULL
);


ALTER TABLE public."position" OWNER TO christianlevi;

--
-- Name: position_req_skills; Type: TABLE; Schema: public; Owner: christianlevi; Tablespace: 
--

CREATE TABLE position_req_skills (
    posistion_id integer NOT NULL,
    skill_id integer NOT NULL
);


ALTER TABLE public.position_req_skills OWNER TO christianlevi;

--
-- Name: section; Type: TABLE; Schema: public; Owner: christianlevi; Tablespace: 
--

CREATE TABLE section (
    id integer NOT NULL,
    course_id integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    format character(32) NOT NULL,
    offered_by text NOT NULL,
    cost numeric(12,2) NOT NULL,
    status character(1) NOT NULL
);


ALTER TABLE public.section OWNER TO christianlevi;

--
-- Name: takes; Type: TABLE; Schema: public; Owner: christianlevi; Tablespace: 
--

CREATE TABLE takes (
    person_id integer NOT NULL,
    course_id integer NOT NULL,
    section_id integer NOT NULL,
    paid boolean DEFAULT false NOT NULL,
    grade numeric(3,1) NOT NULL
);


ALTER TABLE public.takes OWNER TO christianlevi;

--
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: christianlevi
--

COPY address (id, address_1, address_2, city, zip, state, county, country) FROM stdin;
\.


--
-- Data for Name: certificate; Type: TABLE DATA; Schema: public; Owner: christianlevi
--

COPY certificate (id, cer_code, title, description, expire_date, issued_by, t_code) FROM stdin;
\.


--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: christianlevi
--

COPY company (id, name) FROM stdin;
\.


--
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: christianlevi
--

COPY course (id, title, level, format, description, status, c_code) FROM stdin;
\.


--
-- Data for Name: educ_institute; Type: TABLE DATA; Schema: public; Owner: christianlevi
--

COPY educ_institute (id, name) FROM stdin;
\.


--
-- Data for Name: job; Type: TABLE DATA; Schema: public; Owner: christianlevi
--

COPY job (id, job_code, pos_id, type, pay_type, pay_rate, company_id) FROM stdin;
\.


--
-- Data for Name: knowledge_skill; Type: TABLE DATA; Schema: public; Owner: christianlevi
--

COPY knowledge_skill (id, ks_code, title, description, level) FROM stdin;
\.


--
-- Data for Name: offers_course; Type: TABLE DATA; Schema: public; Owner: christianlevi
--

COPY offers_course (educ_institute_id, section_id) FROM stdin;
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: christianlevi
--

COPY person (id, name, address_id, zip_code, email, gender) FROM stdin;
\.


--
-- Data for Name: position; Type: TABLE DATA; Schema: public; Owner: christianlevi
--

COPY "position" (id, pos_code, title, description, base_pay_type, base_pay) FROM stdin;
\.


--
-- Data for Name: position_req_skills; Type: TABLE DATA; Schema: public; Owner: christianlevi
--

COPY position_req_skills (posistion_id, skill_id) FROM stdin;
\.


--
-- Data for Name: section; Type: TABLE DATA; Schema: public; Owner: christianlevi
--

COPY section (id, course_id, start_date, end_date, format, offered_by, cost, status) FROM stdin;
\.


--
-- Data for Name: takes; Type: TABLE DATA; Schema: public; Owner: christianlevi
--

COPY takes (person_id, course_id, section_id, paid, grade) FROM stdin;
\.


--
-- Name: address_pkey; Type: CONSTRAINT; Schema: public; Owner: christianlevi; Tablespace: 
--

ALTER TABLE ONLY address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);


--
-- Name: certificate_pkey; Type: CONSTRAINT; Schema: public; Owner: christianlevi; Tablespace: 
--

ALTER TABLE ONLY certificate
    ADD CONSTRAINT certificate_pkey PRIMARY KEY (id);


--
-- Name: company_pkey; Type: CONSTRAINT; Schema: public; Owner: christianlevi; Tablespace: 
--

ALTER TABLE ONLY company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id);


--
-- Name: course_pkey; Type: CONSTRAINT; Schema: public; Owner: christianlevi; Tablespace: 
--

ALTER TABLE ONLY course
    ADD CONSTRAINT course_pkey PRIMARY KEY (id);


--
-- Name: educ_institute_pkey; Type: CONSTRAINT; Schema: public; Owner: christianlevi; Tablespace: 
--

ALTER TABLE ONLY educ_institute
    ADD CONSTRAINT educ_institute_pkey PRIMARY KEY (id);


--
-- Name: job_pkey; Type: CONSTRAINT; Schema: public; Owner: christianlevi; Tablespace: 
--

ALTER TABLE ONLY job
    ADD CONSTRAINT job_pkey PRIMARY KEY (id);


--
-- Name: knowledge_skill_pkey; Type: CONSTRAINT; Schema: public; Owner: christianlevi; Tablespace: 
--

ALTER TABLE ONLY knowledge_skill
    ADD CONSTRAINT knowledge_skill_pkey PRIMARY KEY (id);


--
-- Name: person_pkey; Type: CONSTRAINT; Schema: public; Owner: christianlevi; Tablespace: 
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- Name: position_pkey; Type: CONSTRAINT; Schema: public; Owner: christianlevi; Tablespace: 
--

ALTER TABLE ONLY "position"
    ADD CONSTRAINT position_pkey PRIMARY KEY (id);


--
-- Name: section_pkey; Type: CONSTRAINT; Schema: public; Owner: christianlevi; Tablespace: 
--

ALTER TABLE ONLY section
    ADD CONSTRAINT section_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: christianlevi
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM christianlevi;
GRANT ALL ON SCHEMA public TO christianlevi;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

