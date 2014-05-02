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
-- Name: address; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE address (
    address_1 character(64) NOT NULL,
    address_2 character(64),
    city character(64) NOT NULL,
    zip character(12) NOT NULL,
    state character(32) NOT NULL,
    county character(32),
    country character(64) DEFAULT 'USA'::bpchar,
    id integer NOT NULL
);


ALTER TABLE public.address OWNER TO distappz;

--
-- Name: address_id_seq; Type: SEQUENCE; Schema: public; Owner: distappz
--

CREATE SEQUENCE address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_id_seq OWNER TO distappz;

--
-- Name: address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: distappz
--

ALTER SEQUENCE address_id_seq OWNED BY address.id;


--
-- Name: applies; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE applies (
    person_id integer NOT NULL,
    approved boolean DEFAULT false NOT NULL,
    job_id integer NOT NULL
);


ALTER TABLE public.applies OWNER TO distappz;

--
-- Name: certificate; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE certificate (
    cer_code character(32) NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    issued_by text NOT NULL,
    t_code character(32),
    id integer NOT NULL
);


ALTER TABLE public.certificate OWNER TO distappz;

--
-- Name: certificate_id_seq; Type: SEQUENCE; Schema: public; Owner: distappz
--

CREATE SEQUENCE certificate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.certificate_id_seq OWNER TO distappz;

--
-- Name: certificate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: distappz
--

ALTER SEQUENCE certificate_id_seq OWNED BY certificate.id;


--
-- Name: company; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE company (
    name text NOT NULL,
    email character(64),
    address_id integer,
    id integer NOT NULL
);


ALTER TABLE public.company OWNER TO distappz;

--
-- Name: company_id_seq; Type: SEQUENCE; Schema: public; Owner: distappz
--

CREATE SEQUENCE company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_id_seq OWNER TO distappz;

--
-- Name: company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: distappz
--

ALTER SEQUENCE company_id_seq OWNED BY company.id;


--
-- Name: course; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE course (
    title text NOT NULL,
    level character(12) NOT NULL,
    format character(32) NOT NULL,
    description text NOT NULL,
    status character(1) NOT NULL,
    c_code character(32) NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.course OWNER TO distappz;

--
-- Name: course_id_seq; Type: SEQUENCE; Schema: public; Owner: distappz
--

CREATE SEQUENCE course_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_id_seq OWNER TO distappz;

--
-- Name: course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: distappz
--

ALTER SEQUENCE course_id_seq OWNED BY course.id;


--
-- Name: educ_institute; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE educ_institute (
    name text NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.educ_institute OWNER TO distappz;

--
-- Name: educ_institute_id_seq; Type: SEQUENCE; Schema: public; Owner: distappz
--

CREATE SEQUENCE educ_institute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.educ_institute_id_seq OWNER TO distappz;

--
-- Name: educ_institute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: distappz
--

ALTER SEQUENCE educ_institute_id_seq OWNED BY educ_institute.id;


--
-- Name: job; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE job (
    job_code character(32) NOT NULL,
    type character(12) NOT NULL,
    pay_type character(12) NOT NULL,
    pay_rate character(12) NOT NULL,
    company_id integer NOT NULL,
    id integer NOT NULL,
    position_id integer NOT NULL
);


ALTER TABLE public.job OWNER TO distappz;

--
-- Name: job_id_seq; Type: SEQUENCE; Schema: public; Owner: distappz
--

CREATE SEQUENCE job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_id_seq OWNER TO distappz;

--
-- Name: job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: distappz
--

ALTER SEQUENCE job_id_seq OWNED BY job.id;


--
-- Name: knowledge_skill; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE knowledge_skill (
    ks_code character(32) NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    level character(12) NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.knowledge_skill OWNER TO distappz;

--
-- Name: knowledge_skill_id_seq; Type: SEQUENCE; Schema: public; Owner: distappz
--

CREATE SEQUENCE knowledge_skill_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knowledge_skill_id_seq OWNER TO distappz;

--
-- Name: knowledge_skill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: distappz
--

ALTER SEQUENCE knowledge_skill_id_seq OWNED BY knowledge_skill.id;

-- DEVIN ADDED
CREATE TABLE mos_code (
    mos character(32) NOT NULL,
    branch character(12) NOT NULL,
    title text NOT NULL,
    id integer NOT NULL
);

ALTER TABLE public.mos_code OWNER TO distappz;

CREATE SEQUENCE mos_code_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.mos_code_id_seq OWNER TO distappz;

ALTER SEQUENCE mos_code_id_seq OWNED BY mos_code.id;

ALTER TABLE ONLY mos_code ALTER COLUMN id SET DEFAULT nextval('mos_code_id_seq'::regclass);

--
-- Name: offers_course; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE offers_course (
    educ_institute_id integer NOT NULL,
    section_id integer NOT NULL
);


ALTER TABLE public.offers_course OWNER TO distappz;

--
-- Name: person; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE person (
    name text NOT NULL,
    zip_code character(12),
    email character(64),
    gender character(1),
    id integer NOT NULL,
    address_id integer,
    veteran boolean
);


ALTER TABLE public.person OWNER TO distappz;

--
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: distappz
--

CREATE SEQUENCE person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_id_seq OWNER TO distappz;

--
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: distappz
--

ALTER SEQUENCE person_id_seq OWNED BY person.id;


--
-- Name: position; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE "position" (
    pos_code character(32) NOT NULL,
    title character(64) NOT NULL,
    description text,
    base_pay_type character(12) NOT NULL,
    base_pay numeric(12,2) NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public."position" OWNER TO distappz;

--
-- Name: position_id_seq; Type: SEQUENCE; Schema: public; Owner: distappz
--

CREATE SEQUENCE position_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.position_id_seq OWNER TO distappz;

--
-- Name: position_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: distappz
--

ALTER SEQUENCE position_id_seq OWNED BY "position".id;


--
-- Name: position_req_skills; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE position_req_skills (
    skill_id integer NOT NULL,
    position_id integer NOT NULL
);


ALTER TABLE public.position_req_skills OWNER TO distappz;

--
-- Name: section; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE section (
    course_id integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    format character(32) NOT NULL,
    offered_by text NOT NULL,
    cost numeric(12,2) NOT NULL,
    status character(1) NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.section OWNER TO distappz;

--
-- Name: section_id_seq; Type: SEQUENCE; Schema: public; Owner: distappz
--

CREATE SEQUENCE section_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.section_id_seq OWNER TO distappz;

--
-- Name: section_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: distappz
--

ALTER SEQUENCE section_id_seq OWNED BY section.id;


--
-- Name: takes; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE takes (
    person_id integer NOT NULL,
    paid boolean DEFAULT false NOT NULL,
    grade numeric(3,1) NOT NULL,
    course_id integer NOT NULL,
    section_id integer NOT NULL
);


ALTER TABLE public.takes OWNER TO distappz;

--
-- Name: user_company_map; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE user_company_map (
    user_id integer NOT NULL,
    company_id integer NOT NULL
);


ALTER TABLE public.user_company_map OWNER TO distappz;

--
-- Name: user_educ_map; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE user_educ_map (
    user_id integer NOT NULL,
    educ_id integer NOT NULL
);


ALTER TABLE public.user_educ_map OWNER TO distappz;

--
-- Name: user_person_map; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE user_person_map (
    person_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.user_person_map OWNER TO distappz;

--
-- Name: user_profile; Type: TABLE; Schema: public; Owner: distappz; Tablespace: 
--

CREATE TABLE user_profile (
    id integer NOT NULL,
    usr text NOT NULL,
    psw text NOT NULL,
    type text NOT NULL
);


ALTER TABLE public.user_profile OWNER TO distappz;

--
-- Name: user_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: distappz
--

CREATE SEQUENCE user_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_profile_id_seq OWNER TO distappz;

--
-- Name: user_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: distappz
--

ALTER SEQUENCE user_profile_id_seq OWNED BY user_profile.id;


-- DEVIN ADDED
-- TABLE FOR WHICH CERTS A PERSON HAS
CREATE TABLE cert_per_lookup (
    cer_code integer NOT NULL,
    per_code integer NOT NULL,
    expire_date date NOT NULL,
    id integer NOT NULL
);

ALTER TABLE public.cert_per_lookup OWNER TO distappz;

CREATE SEQUENCE cert_per_lookup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE cert_per_lookup_id_seq OWNED BY cert_per_lookup.id;

ALTER TABLE ONLY cert_per_lookup ALTER COLUMN id SET DEFAULT nextval('cert_per_lookup_id_seq'::regclass);

CREATE TABLE mos_civ_lk (
    mos_code integer NOT NULL,
    civ_code integer NOT NULL,
    id integer NOT NULL
);

ALTER TABLE public.mos_civ_lk OWNER TO distappz;

CREATE SEQUENCE mos_civ_lk_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE mos_civ_lk_id_seq OWNED BY mos_civ_lk.id;

ALTER TABLE ONLY mos_civ_lk ALTER COLUMN id SET DEFAULT nextval('mos_civ_lk_id_seq'::regclass);

-- END DEVIN ADDED

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY address ALTER COLUMN id SET DEFAULT nextval('address_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY certificate ALTER COLUMN id SET DEFAULT nextval('certificate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY company ALTER COLUMN id SET DEFAULT nextval('company_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY course ALTER COLUMN id SET DEFAULT nextval('course_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY educ_institute ALTER COLUMN id SET DEFAULT nextval('educ_institute_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY job ALTER COLUMN id SET DEFAULT nextval('job_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY knowledge_skill ALTER COLUMN id SET DEFAULT nextval('knowledge_skill_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY person ALTER COLUMN id SET DEFAULT nextval('person_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY "position" ALTER COLUMN id SET DEFAULT nextval('position_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY section ALTER COLUMN id SET DEFAULT nextval('section_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY user_profile ALTER COLUMN id SET DEFAULT nextval('user_profile_id_seq'::regclass);


--
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY address (address_1, address_2, city, zip, state, county, country, id) FROM stdin;
1 Test St                                                       	\N	Metairie                                                        	70001       	LA                              	\N	\N	1
1 Test St                                                       	\N	Metairie                                                        	70001       	LA                              	\N	\N	0
1 Test St                                                       	\N	Metairie                                                        	70001       	LA                              	\N	\N	2
2 Test St                                                       	2-B                                                             	New Orleans                                                     	70001       	LA                              	Orleans                         	\N	3
3 Test St                                                       	\N	Slidell                                                         	70128       	LA                              	\N	USA                                                             	4
1 Test St                                                       	\N	Metairie                                                        	70001       	LA                              	\N	\N	5
2 Test St                                                       	2-B                                                             	New Orleans                                                     	70001       	LA                              	Orleans                         	\N	6
3 Test St                                                       	\N	Slidell                                                         	70128       	LA                              	\N	USA                                                             	7
\.


--
-- Name: address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: distappz
--

SELECT pg_catalog.setval('address_id_seq', 7, true);


--
-- Data for Name: applies; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY applies (person_id, approved, job_id) FROM stdin;
\.


--
-- Data for Name: certificate; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY certificate (cer_code, title, description, issued_by, t_code, id) FROM stdin;
\.


--
-- Name: certificate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: distappz
--

SELECT pg_catalog.setval('certificate_id_seq', 1, false);


--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY company (name, email, address_id, id) FROM stdin;
FooBar Systems	foo@bar.com                                                     	\N	1
FooBar Systems	foo@bar.com                                                     	0	0
FooBar Systems	foo@bar.com                                                     	2	2
FooBar Systems	foo@bar.com                                                     	5	5
Too Industries	too@wtf.com                                                     	6	6
Yoyodyne Tech	yoyo@tech.com                                                   	\N	8
Too Industries	too@legit.com                                                   	3	3
\.


--
-- Name: company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: distappz
--

SELECT pg_catalog.setval('company_id_seq', 8, true);


--
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY course (title, level, format, description, status, c_code, id) FROM stdin;
\.


--
-- Name: course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: distappz
--

SELECT pg_catalog.setval('course_id_seq', 1, false);


--
-- Data for Name: educ_institute; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY educ_institute (name, id) FROM stdin;
\.


--
-- Name: educ_institute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: distappz
--

SELECT pg_catalog.setval('educ_institute_id_seq', 1, false);


--
-- Data for Name: job; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY job (job_code, type, pay_type, pay_rate, company_id, id, position_id) FROM stdin;
\.


--
-- Name: job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: distappz
--

SELECT pg_catalog.setval('job_id_seq', 1, false);


--
-- Data for Name: knowledge_skill; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY knowledge_skill (ks_code, title, description, level, id) FROM stdin;
\.


--
-- Name: knowledge_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: distappz
--

SELECT pg_catalog.setval('knowledge_skill_id_seq', 1, false);


--
-- Data for Name: offers_course; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY offers_course (educ_institute_id, section_id) FROM stdin;
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY person (name, zip_code, email, gender, id, address_id) FROM stdin;
Testing Girl1	70124       	tgirl1@gmail.com                                                	f	19	\N
Testing Girl2	70123       	tgirl2@hotmail.com                                              	f	20	\N
Testing Guy1	70001       	number1Stunta@gmail.com                                         	m	17	\N
\.


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: distappz
--

SELECT pg_catalog.setval('person_id_seq', 20, true);


--
-- Data for Name: position; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY "position" (pos_code, title, description, base_pay_type, base_pay, id) FROM stdin;
\.


--
-- Name: position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: distappz
--

SELECT pg_catalog.setval('position_id_seq', 1, false);


--
-- Data for Name: position_req_skills; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY position_req_skills (skill_id, position_id) FROM stdin;
\.


--
-- Data for Name: section; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY section (course_id, start_date, end_date, format, offered_by, cost, status, id) FROM stdin;
\.


--
-- Name: section_id_seq; Type: SEQUENCE SET; Schema: public; Owner: distappz
--

SELECT pg_catalog.setval('section_id_seq', 1, false);


--
-- Data for Name: takes; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY takes (person_id, paid, grade, course_id, section_id) FROM stdin;
\.


--
-- Data for Name: user_company_map; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY user_company_map (user_id, company_id) FROM stdin;
\.


--
-- Data for Name: user_educ_map; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY user_educ_map (user_id, educ_id) FROM stdin;
\.


--
-- Data for Name: user_person_map; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY user_person_map (person_id, user_id) FROM stdin;
\.


--
-- Data for Name: user_profile; Type: TABLE DATA; Schema: public; Owner: distappz
--

COPY user_profile (id, usr, psw, type) FROM stdin;
\.


--
-- Name: user_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: distappz
--

SELECT pg_catalog.setval('user_profile_id_seq', 1, false);


--
-- Name: address_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);


--
-- Name: applies_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY applies
    ADD CONSTRAINT applies_pkey PRIMARY KEY (person_id, job_id);


--
-- Name: certificate_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY certificate
    ADD CONSTRAINT certificate_pkey PRIMARY KEY (id);


--
-- Name: company_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id);


--
-- Name: course_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY course
    ADD CONSTRAINT course_pkey PRIMARY KEY (id);


--
-- Name: educ_institute_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY educ_institute
    ADD CONSTRAINT educ_institute_pkey PRIMARY KEY (id);


--
-- Name: job_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY job
    ADD CONSTRAINT job_pkey PRIMARY KEY (id);


--
-- Name: knowledge_skill_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY knowledge_skill
    ADD CONSTRAINT knowledge_skill_pkey PRIMARY KEY (id);


--
-- Name: offers_course_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY offers_course
    ADD CONSTRAINT offers_course_pkey PRIMARY KEY (educ_institute_id, section_id);


--
-- Name: person_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- Name: position_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY "position"
    ADD CONSTRAINT position_pkey PRIMARY KEY (id);


--
-- Name: position_req_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY position_req_skills
    ADD CONSTRAINT position_req_skills_pkey PRIMARY KEY (skill_id, position_id);


--
-- Name: section_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY section
    ADD CONSTRAINT section_pkey PRIMARY KEY (id);


--
-- Name: takes_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY takes
    ADD CONSTRAINT takes_pkey PRIMARY KEY (person_id, course_id, section_id);


--
-- Name: user_company_map_company_id_key; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY user_company_map
    ADD CONSTRAINT user_company_map_company_id_key UNIQUE (company_id);


--
-- Name: user_company_map_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY user_company_map
    ADD CONSTRAINT user_company_map_pkey PRIMARY KEY (user_id, company_id);


--
-- Name: user_company_map_user_id_key; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY user_company_map
    ADD CONSTRAINT user_company_map_user_id_key UNIQUE (user_id);


--
-- Name: user_educ_map_educ_id_key; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY user_educ_map
    ADD CONSTRAINT user_educ_map_educ_id_key UNIQUE (educ_id);


--
-- Name: user_educ_map_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY user_educ_map
    ADD CONSTRAINT user_educ_map_pkey PRIMARY KEY (user_id, educ_id);


--
-- Name: user_educ_map_user_id_key; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY user_educ_map
    ADD CONSTRAINT user_educ_map_user_id_key UNIQUE (user_id);


--
-- Name: user_person_map_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY user_person_map
    ADD CONSTRAINT user_person_map_pkey PRIMARY KEY (person_id, user_id);


--
-- Name: user_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: distappz; Tablespace: 
--

ALTER TABLE ONLY user_profile
    ADD CONSTRAINT user_profile_pkey PRIMARY KEY (id);


--
-- Name: applies_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY applies
    ADD CONSTRAINT applies_job_id_fkey FOREIGN KEY (job_id) REFERENCES job(id);


--
-- Name: applies_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY applies
    ADD CONSTRAINT applies_person_id_fkey FOREIGN KEY (person_id) REFERENCES person(id);


--
-- Name: company_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY company
    ADD CONSTRAINT company_address_id_fkey FOREIGN KEY (address_id) REFERENCES address(id);


--
-- Name: job_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY job
    ADD CONSTRAINT job_company_id_fkey FOREIGN KEY (company_id) REFERENCES company(id);


--
-- Name: job_position_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY job
    ADD CONSTRAINT job_position_id_fkey FOREIGN KEY (position_id) REFERENCES "position"(id);


--
-- Name: offers_course_educ_institute_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY offers_course
    ADD CONSTRAINT offers_course_educ_institute_id_fkey FOREIGN KEY (educ_institute_id) REFERENCES educ_institute(id);


--
-- Name: offers_course_section_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY offers_course
    ADD CONSTRAINT offers_course_section_id_fkey FOREIGN KEY (section_id) REFERENCES section(id);


--
-- Name: person_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_address_id_fkey FOREIGN KEY (address_id) REFERENCES address(id);


--
-- Name: position_req_skills_position_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY position_req_skills
    ADD CONSTRAINT position_req_skills_position_id_fkey FOREIGN KEY (position_id) REFERENCES "position"(id);


--
-- Name: position_req_skills_skill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY position_req_skills
    ADD CONSTRAINT position_req_skills_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES knowledge_skill(id);


--
-- Name: takes_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY takes
    ADD CONSTRAINT takes_course_id_fkey FOREIGN KEY (course_id) REFERENCES course(id);


--
-- Name: takes_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY takes
    ADD CONSTRAINT takes_person_id_fkey FOREIGN KEY (person_id) REFERENCES person(id);


--
-- Name: takes_section_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY takes
    ADD CONSTRAINT takes_section_id_fkey FOREIGN KEY (section_id) REFERENCES section(id);


--
-- Name: user_company_map_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY user_company_map
    ADD CONSTRAINT user_company_map_company_id_fkey FOREIGN KEY (company_id) REFERENCES company(id);


--
-- Name: user_company_map_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY user_company_map
    ADD CONSTRAINT user_company_map_user_id_fkey FOREIGN KEY (user_id) REFERENCES user_profile(id);


--
-- Name: user_educ_map_educ_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY user_educ_map
    ADD CONSTRAINT user_educ_map_educ_id_fkey FOREIGN KEY (educ_id) REFERENCES educ_institute(id);


--
-- Name: user_educ_map_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY user_educ_map
    ADD CONSTRAINT user_educ_map_user_id_fkey FOREIGN KEY (user_id) REFERENCES user_profile(id);


--
-- Name: user_person_map_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY user_person_map
    ADD CONSTRAINT user_person_map_person_id_fkey FOREIGN KEY (person_id) REFERENCES person(id);


--
-- Name: user_person_map_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: distappz
--

ALTER TABLE ONLY user_person_map
    ADD CONSTRAINT user_person_map_user_id_fkey FOREIGN KEY (user_id) REFERENCES user_profile(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: distappz
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM distappz;
GRANT ALL ON SCHEMA public TO distappz;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: address; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON TABLE address FROM PUBLIC;
REVOKE ALL ON TABLE address FROM distappz;
GRANT ALL ON TABLE address TO distappz;


--
-- Name: address_id_seq; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON SEQUENCE address_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE address_id_seq FROM distappz;
GRANT ALL ON SEQUENCE address_id_seq TO distappz;


--
-- Name: applies; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON TABLE applies FROM PUBLIC;
REVOKE ALL ON TABLE applies FROM distappz;
GRANT ALL ON TABLE applies TO distappz;


--
-- Name: certificate; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON TABLE certificate FROM PUBLIC;
REVOKE ALL ON TABLE certificate FROM distappz;
GRANT ALL ON TABLE certificate TO distappz;


--
-- Name: certificate_id_seq; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON SEQUENCE certificate_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE certificate_id_seq FROM distappz;
GRANT ALL ON SEQUENCE certificate_id_seq TO distappz;


--
-- Name: company; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON TABLE company FROM PUBLIC;
REVOKE ALL ON TABLE company FROM distappz;
GRANT ALL ON TABLE company TO distappz;


--
-- Name: company_id_seq; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON SEQUENCE company_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE company_id_seq FROM distappz;
GRANT ALL ON SEQUENCE company_id_seq TO distappz;


--
-- Name: course; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON TABLE course FROM PUBLIC;
REVOKE ALL ON TABLE course FROM distappz;
GRANT ALL ON TABLE course TO distappz;


--
-- Name: course_id_seq; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON SEQUENCE course_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE course_id_seq FROM distappz;
GRANT ALL ON SEQUENCE course_id_seq TO distappz;


--
-- Name: educ_institute; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON TABLE educ_institute FROM PUBLIC;
REVOKE ALL ON TABLE educ_institute FROM distappz;
GRANT ALL ON TABLE educ_institute TO distappz;


--
-- Name: educ_institute_id_seq; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON SEQUENCE educ_institute_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE educ_institute_id_seq FROM distappz;
GRANT ALL ON SEQUENCE educ_institute_id_seq TO distappz;


--
-- Name: job; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON TABLE job FROM PUBLIC;
REVOKE ALL ON TABLE job FROM distappz;
GRANT ALL ON TABLE job TO distappz;


--
-- Name: job_id_seq; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON SEQUENCE job_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE job_id_seq FROM distappz;
GRANT ALL ON SEQUENCE job_id_seq TO distappz;


--
-- Name: knowledge_skill; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON TABLE knowledge_skill FROM PUBLIC;
REVOKE ALL ON TABLE knowledge_skill FROM distappz;
GRANT ALL ON TABLE knowledge_skill TO distappz;


--
-- Name: knowledge_skill_id_seq; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON SEQUENCE knowledge_skill_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE knowledge_skill_id_seq FROM distappz;
GRANT ALL ON SEQUENCE knowledge_skill_id_seq TO distappz;


--
-- Name: offers_course; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON TABLE offers_course FROM PUBLIC;
REVOKE ALL ON TABLE offers_course FROM distappz;
GRANT ALL ON TABLE offers_course TO distappz;


--
-- Name: person; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON TABLE person FROM PUBLIC;
REVOKE ALL ON TABLE person FROM distappz;
GRANT ALL ON TABLE person TO distappz;


--
-- Name: person_id_seq; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON SEQUENCE person_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE person_id_seq FROM distappz;
GRANT ALL ON SEQUENCE person_id_seq TO distappz;


--
-- Name: position; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON TABLE "position" FROM PUBLIC;
REVOKE ALL ON TABLE "position" FROM distappz;
GRANT ALL ON TABLE "position" TO distappz;


--
-- Name: position_id_seq; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON SEQUENCE position_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE position_id_seq FROM distappz;
GRANT ALL ON SEQUENCE position_id_seq TO distappz;


--
-- Name: position_req_skills; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON TABLE position_req_skills FROM PUBLIC;
REVOKE ALL ON TABLE position_req_skills FROM distappz;
GRANT ALL ON TABLE position_req_skills TO distappz;


--
-- Name: section; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON TABLE section FROM PUBLIC;
REVOKE ALL ON TABLE section FROM distappz;
GRANT ALL ON TABLE section TO distappz;


--
-- Name: section_id_seq; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON SEQUENCE section_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE section_id_seq FROM distappz;
GRANT ALL ON SEQUENCE section_id_seq TO distappz;


--
-- Name: takes; Type: ACL; Schema: public; Owner: distappz
--

REVOKE ALL ON TABLE takes FROM PUBLIC;
REVOKE ALL ON TABLE takes FROM distappz;
GRANT ALL ON TABLE takes TO distappz;


--
-- PostgreSQL database dump complete
--

