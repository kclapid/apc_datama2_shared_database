--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-02 09:12:07

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 17 (class 2615 OID 16757)
-- Name: kclapid; Type: SCHEMA; Schema: -; Owner: datama2mi181
--

CREATE SCHEMA kclapid;


ALTER SCHEMA kclapid OWNER TO datama2mi181;

SET default_tablespace = '';

--
-- TOC entry 256 (class 1259 OID 17094)
-- Name: _client; Type: TABLE; Schema: kclapid; Owner: datama2mi181
--

CREATE TABLE kclapid._client (
    id integer NOT NULL,
    client_fname character varying(45) DEFAULT NULL::character varying,
    client_lname character varying(45) DEFAULT NULL::character varying,
    client_initial character varying(3) DEFAULT NULL::character varying,
    client_address character varying(255) DEFAULT NULL::character varying,
    client_contact character varying(9) DEFAULT NULL::character varying
);


ALTER TABLE kclapid._client OWNER TO datama2mi181;

--
-- TOC entry 257 (class 1259 OID 17102)
-- Name: _client_has_commodities; Type: TABLE; Schema: kclapid; Owner: datama2mi181
--

CREATE TABLE kclapid._client_has_commodities (
    id integer NOT NULL,
    client_id character varying(1) DEFAULT NULL::character varying,
    commodities_id character varying(1) DEFAULT NULL::character varying,
    commodities_employee_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE kclapid._client_has_commodities OWNER TO datama2mi181;

--
-- TOC entry 258 (class 1259 OID 17108)
-- Name: _client_has_commodities_id_seq; Type: SEQUENCE; Schema: kclapid; Owner: datama2mi181
--

CREATE SEQUENCE kclapid._client_has_commodities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kclapid._client_has_commodities_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 258
-- Name: _client_has_commodities_id_seq; Type: SEQUENCE OWNED BY; Schema: kclapid; Owner: datama2mi181
--

ALTER SEQUENCE kclapid._client_has_commodities_id_seq OWNED BY kclapid._client_has_commodities.id;


--
-- TOC entry 259 (class 1259 OID 17110)
-- Name: _client_id_seq; Type: SEQUENCE; Schema: kclapid; Owner: datama2mi181
--

CREATE SEQUENCE kclapid._client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kclapid._client_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 259
-- Name: _client_id_seq; Type: SEQUENCE OWNED BY; Schema: kclapid; Owner: datama2mi181
--

ALTER SEQUENCE kclapid._client_id_seq OWNED BY kclapid._client.id;


--
-- TOC entry 260 (class 1259 OID 17112)
-- Name: _commodities; Type: TABLE; Schema: kclapid; Owner: datama2mi181
--

CREATE TABLE kclapid._commodities (
    id integer NOT NULL,
    com_type character varying(45) DEFAULT NULL::character varying,
    com_validity character varying(45) DEFAULT NULL::character varying,
    com_worth character varying(45) DEFAULT NULL::character varying,
    com_quantity smallint,
    com_brand character varying(45) DEFAULT NULL::character varying,
    employee_id smallint
);


ALTER TABLE kclapid._commodities OWNER TO datama2mi181;

--
-- TOC entry 261 (class 1259 OID 17119)
-- Name: _commodities_id_seq; Type: SEQUENCE; Schema: kclapid; Owner: datama2mi181
--

CREATE SEQUENCE kclapid._commodities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kclapid._commodities_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 261
-- Name: _commodities_id_seq; Type: SEQUENCE OWNED BY; Schema: kclapid; Owner: datama2mi181
--

ALTER SEQUENCE kclapid._commodities_id_seq OWNED BY kclapid._commodities.id;


--
-- TOC entry 262 (class 1259 OID 17121)
-- Name: _contract; Type: TABLE; Schema: kclapid; Owner: datama2mi181
--

CREATE TABLE kclapid._contract (
    id integer NOT NULL,
    con_signed character varying(45) DEFAULT NULL::character varying,
    con_date character varying(45) DEFAULT NULL::character varying,
    con_expiration character varying(45) DEFAULT NULL::character varying,
    client_id character varying(45) DEFAULT NULL::character varying,
    employee_id character varying(45) DEFAULT NULL::character varying,
    employee_client_id character varying(45) DEFAULT NULL::character varying
);


ALTER TABLE kclapid._contract OWNER TO datama2mi181;

--
-- TOC entry 263 (class 1259 OID 17130)
-- Name: _contract_id_seq; Type: SEQUENCE; Schema: kclapid; Owner: datama2mi181
--

CREATE SEQUENCE kclapid._contract_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kclapid._contract_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 263
-- Name: _contract_id_seq; Type: SEQUENCE OWNED BY; Schema: kclapid; Owner: datama2mi181
--

ALTER SEQUENCE kclapid._contract_id_seq OWNED BY kclapid._contract.id;


--
-- TOC entry 264 (class 1259 OID 17132)
-- Name: _delivery; Type: TABLE; Schema: kclapid; Owner: datama2mi181
--

CREATE TABLE kclapid._delivery (
    id integer NOT NULL,
    del_cour character varying(45) DEFAULT NULL::character varying,
    del_data_receive character varying(45) DEFAULT NULL::character varying,
    client_id character varying(45) DEFAULT NULL::character varying
);


ALTER TABLE kclapid._delivery OWNER TO datama2mi181;

--
-- TOC entry 265 (class 1259 OID 17138)
-- Name: _delivery_id_seq; Type: SEQUENCE; Schema: kclapid; Owner: datama2mi181
--

CREATE SEQUENCE kclapid._delivery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kclapid._delivery_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 265
-- Name: _delivery_id_seq; Type: SEQUENCE OWNED BY; Schema: kclapid; Owner: datama2mi181
--

ALTER SEQUENCE kclapid._delivery_id_seq OWNED BY kclapid._delivery.id;


--
-- TOC entry 266 (class 1259 OID 17140)
-- Name: _employee; Type: TABLE; Schema: kclapid; Owner: datama2mi181
--

CREATE TABLE kclapid._employee (
    id integer NOT NULL,
    emp_fname character varying(45) DEFAULT NULL::character varying,
    emp_lname character varying(45) DEFAULT NULL::character varying,
    emp_initial character varying(3) DEFAULT NULL::character varying,
    emp_address character varying(255) DEFAULT NULL::character varying,
    emp_dob character varying(19) DEFAULT NULL::character varying,
    client_id smallint,
    financial_report_id smallint
);


ALTER TABLE kclapid._employee OWNER TO datama2mi181;

--
-- TOC entry 267 (class 1259 OID 17148)
-- Name: _employee_id_seq; Type: SEQUENCE; Schema: kclapid; Owner: datama2mi181
--

CREATE SEQUENCE kclapid._employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kclapid._employee_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 267
-- Name: _employee_id_seq; Type: SEQUENCE OWNED BY; Schema: kclapid; Owner: datama2mi181
--

ALTER SEQUENCE kclapid._employee_id_seq OWNED BY kclapid._employee.id;


--
-- TOC entry 268 (class 1259 OID 17150)
-- Name: _financial_report; Type: TABLE; Schema: kclapid; Owner: datama2mi181
--

CREATE TABLE kclapid._financial_report (
    id integer NOT NULL,
    fr_amount character varying(45) DEFAULT NULL::character varying,
    fr_date character varying(45) DEFAULT NULL::character varying
);


ALTER TABLE kclapid._financial_report OWNER TO datama2mi181;

--
-- TOC entry 269 (class 1259 OID 17155)
-- Name: _financial_report_id_seq; Type: SEQUENCE; Schema: kclapid; Owner: datama2mi181
--

CREATE SEQUENCE kclapid._financial_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kclapid._financial_report_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 269
-- Name: _financial_report_id_seq; Type: SEQUENCE OWNED BY; Schema: kclapid; Owner: datama2mi181
--

ALTER SEQUENCE kclapid._financial_report_id_seq OWNED BY kclapid._financial_report.id;


--
-- TOC entry 270 (class 1259 OID 17157)
-- Name: _salary; Type: TABLE; Schema: kclapid; Owner: datama2mi181
--

CREATE TABLE kclapid._salary (
    id integer NOT NULL,
    sal_amount character varying(45) DEFAULT NULL::character varying,
    sal_received character varying(45) DEFAULT NULL::character varying,
    employee_id character varying(45) DEFAULT NULL::character varying,
    employee_client_id character varying(45) DEFAULT NULL::character varying
);


ALTER TABLE kclapid._salary OWNER TO datama2mi181;

--
-- TOC entry 271 (class 1259 OID 17164)
-- Name: _salary_id_seq; Type: SEQUENCE; Schema: kclapid; Owner: datama2mi181
--

CREATE SEQUENCE kclapid._salary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kclapid._salary_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 271
-- Name: _salary_id_seq; Type: SEQUENCE OWNED BY; Schema: kclapid; Owner: datama2mi181
--

ALTER SEQUENCE kclapid._salary_id_seq OWNED BY kclapid._salary.id;


--
-- TOC entry 272 (class 1259 OID 17166)
-- Name: _training; Type: TABLE; Schema: kclapid; Owner: datama2mi181
--

CREATE TABLE kclapid._training (
    id integer NOT NULL,
    trai_location character varying(45) DEFAULT NULL::character varying,
    trai_num_employ character varying(45) DEFAULT NULL::character varying,
    employee_id character varying(45) DEFAULT NULL::character varying,
    employee_client_id character varying(45) DEFAULT NULL::character varying,
    employee_financial_report_id character varying(45) DEFAULT NULL::character varying
);


ALTER TABLE kclapid._training OWNER TO datama2mi181;

--
-- TOC entry 273 (class 1259 OID 17174)
-- Name: _training_id_seq; Type: SEQUENCE; Schema: kclapid; Owner: datama2mi181
--

CREATE SEQUENCE kclapid._training_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kclapid._training_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 273
-- Name: _training_id_seq; Type: SEQUENCE OWNED BY; Schema: kclapid; Owner: datama2mi181
--

ALTER SEQUENCE kclapid._training_id_seq OWNED BY kclapid._training.id;


--
-- TOC entry 274 (class 1259 OID 17176)
-- Name: sales; Type: VIEW; Schema: kclapid; Owner: datama2mi181
--

CREATE VIEW kclapid.sales AS
 SELECT _employee.emp_fname,
    _employee.emp_lname,
    _commodities.com_type,
    _commodities.com_worth,
    _commodities.com_quantity,
    _commodities.com_brand
   FROM (kclapid._employee
     JOIN kclapid._commodities ON ((_commodities.employee_id = _employee.id)));


ALTER TABLE kclapid.sales OWNER TO datama2mi181;

--
-- TOC entry 375 (class 1259 OID 23300)
-- Name: view2; Type: VIEW; Schema: kclapid; Owner: datama2mi181
--

CREATE VIEW kclapid.view2 AS
 SELECT _client.client_fname,
    _client.client_lname,
    _delivery.id
   FROM (kclapid._client
     LEFT JOIN kclapid._delivery ON ((_client.id = _delivery.id)));


ALTER TABLE kclapid.view2 OWNER TO datama2mi181;

--
-- TOC entry 3219 (class 2604 OID 17180)
-- Name: _client id; Type: DEFAULT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._client ALTER COLUMN id SET DEFAULT nextval('kclapid._client_id_seq'::regclass);


--
-- TOC entry 3223 (class 2604 OID 17181)
-- Name: _client_has_commodities id; Type: DEFAULT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._client_has_commodities ALTER COLUMN id SET DEFAULT nextval('kclapid._client_has_commodities_id_seq'::regclass);


--
-- TOC entry 3228 (class 2604 OID 17182)
-- Name: _commodities id; Type: DEFAULT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._commodities ALTER COLUMN id SET DEFAULT nextval('kclapid._commodities_id_seq'::regclass);


--
-- TOC entry 3235 (class 2604 OID 17183)
-- Name: _contract id; Type: DEFAULT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._contract ALTER COLUMN id SET DEFAULT nextval('kclapid._contract_id_seq'::regclass);


--
-- TOC entry 3239 (class 2604 OID 17184)
-- Name: _delivery id; Type: DEFAULT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._delivery ALTER COLUMN id SET DEFAULT nextval('kclapid._delivery_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 17185)
-- Name: _employee id; Type: DEFAULT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._employee ALTER COLUMN id SET DEFAULT nextval('kclapid._employee_id_seq'::regclass);


--
-- TOC entry 3248 (class 2604 OID 17186)
-- Name: _financial_report id; Type: DEFAULT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._financial_report ALTER COLUMN id SET DEFAULT nextval('kclapid._financial_report_id_seq'::regclass);


--
-- TOC entry 3253 (class 2604 OID 17187)
-- Name: _salary id; Type: DEFAULT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._salary ALTER COLUMN id SET DEFAULT nextval('kclapid._salary_id_seq'::regclass);


--
-- TOC entry 3259 (class 2604 OID 17188)
-- Name: _training id; Type: DEFAULT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._training ALTER COLUMN id SET DEFAULT nextval('kclapid._training_id_seq'::regclass);


--
-- TOC entry 3414 (class 0 OID 17094)
-- Dependencies: 256
-- Data for Name: _client; Type: TABLE DATA; Schema: kclapid; Owner: datama2mi181
--

COPY kclapid._client (id, client_fname, client_lname, client_initial, client_address, client_contact) FROM stdin;
1	Andre	Lagsac	M.	Makati City	895-65-65
2	Christian	Maning	P.	Makati City	821-76-36
\.


--
-- TOC entry 3415 (class 0 OID 17102)
-- Dependencies: 257
-- Data for Name: _client_has_commodities; Type: TABLE DATA; Schema: kclapid; Owner: datama2mi181
--

COPY kclapid._client_has_commodities (id, client_id, commodities_id, commodities_employee_id) FROM stdin;
\.


--
-- TOC entry 3418 (class 0 OID 17112)
-- Dependencies: 260
-- Data for Name: _commodities; Type: TABLE DATA; Schema: kclapid; Owner: datama2mi181
--

COPY kclapid._commodities (id, com_type, com_validity, com_worth, com_quantity, com_brand, employee_id) FROM stdin;
1	Service	2019-10-30	P500,000	200	Pall	1
2	Equipment	2019-10-28	P1,000,000	500	B2B	1
3	Service	2019-10-27	P250,000	100	Everpure	1
4	Equipment	2019-10-23	P50,000	10	3M	1
\.


--
-- TOC entry 3420 (class 0 OID 17121)
-- Dependencies: 262
-- Data for Name: _contract; Type: TABLE DATA; Schema: kclapid; Owner: datama2mi181
--

COPY kclapid._contract (id, con_signed, con_date, con_expiration, client_id, employee_id, employee_client_id) FROM stdin;
\.


--
-- TOC entry 3422 (class 0 OID 17132)
-- Dependencies: 264
-- Data for Name: _delivery; Type: TABLE DATA; Schema: kclapid; Owner: datama2mi181
--

COPY kclapid._delivery (id, del_cour, del_data_receive, client_id) FROM stdin;
\.


--
-- TOC entry 3424 (class 0 OID 17140)
-- Dependencies: 266
-- Data for Name: _employee; Type: TABLE DATA; Schema: kclapid; Owner: datama2mi181
--

COPY kclapid._employee (id, emp_fname, emp_lname, emp_initial, emp_address, emp_dob, client_id, financial_report_id) FROM stdin;
1	Kyla	Lapid	C.	Taguig City	523-12-99	\N	\N
2	Andre	Lagsac	M.	Makati City	20-09-97	\N	\N
\.


--
-- TOC entry 3426 (class 0 OID 17150)
-- Dependencies: 268
-- Data for Name: _financial_report; Type: TABLE DATA; Schema: kclapid; Owner: datama2mi181
--

COPY kclapid._financial_report (id, fr_amount, fr_date) FROM stdin;
\.


--
-- TOC entry 3428 (class 0 OID 17157)
-- Dependencies: 270
-- Data for Name: _salary; Type: TABLE DATA; Schema: kclapid; Owner: datama2mi181
--

COPY kclapid._salary (id, sal_amount, sal_received, employee_id, employee_client_id) FROM stdin;
\.


--
-- TOC entry 3430 (class 0 OID 17166)
-- Dependencies: 272
-- Data for Name: _training; Type: TABLE DATA; Schema: kclapid; Owner: datama2mi181
--

COPY kclapid._training (id, trai_location, trai_num_employ, employee_id, employee_client_id, employee_financial_report_id) FROM stdin;
\.


--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 258
-- Name: _client_has_commodities_id_seq; Type: SEQUENCE SET; Schema: kclapid; Owner: datama2mi181
--

SELECT pg_catalog.setval('kclapid._client_has_commodities_id_seq', 1, false);


--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 259
-- Name: _client_id_seq; Type: SEQUENCE SET; Schema: kclapid; Owner: datama2mi181
--

SELECT pg_catalog.setval('kclapid._client_id_seq', 2, true);


--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 261
-- Name: _commodities_id_seq; Type: SEQUENCE SET; Schema: kclapid; Owner: datama2mi181
--

SELECT pg_catalog.setval('kclapid._commodities_id_seq', 4, true);


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 263
-- Name: _contract_id_seq; Type: SEQUENCE SET; Schema: kclapid; Owner: datama2mi181
--

SELECT pg_catalog.setval('kclapid._contract_id_seq', 1, false);


--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 265
-- Name: _delivery_id_seq; Type: SEQUENCE SET; Schema: kclapid; Owner: datama2mi181
--

SELECT pg_catalog.setval('kclapid._delivery_id_seq', 1, false);


--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 267
-- Name: _employee_id_seq; Type: SEQUENCE SET; Schema: kclapid; Owner: datama2mi181
--

SELECT pg_catalog.setval('kclapid._employee_id_seq', 1, true);


--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 269
-- Name: _financial_report_id_seq; Type: SEQUENCE SET; Schema: kclapid; Owner: datama2mi181
--

SELECT pg_catalog.setval('kclapid._financial_report_id_seq', 1, false);


--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 271
-- Name: _salary_id_seq; Type: SEQUENCE SET; Schema: kclapid; Owner: datama2mi181
--

SELECT pg_catalog.setval('kclapid._salary_id_seq', 1, false);


--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 273
-- Name: _training_id_seq; Type: SEQUENCE SET; Schema: kclapid; Owner: datama2mi181
--

SELECT pg_catalog.setval('kclapid._training_id_seq', 1, false);


--
-- TOC entry 3263 (class 2606 OID 17190)
-- Name: _client_has_commodities _client_has_commodities_pkey; Type: CONSTRAINT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._client_has_commodities
    ADD CONSTRAINT _client_has_commodities_pkey PRIMARY KEY (id);


--
-- TOC entry 3261 (class 2606 OID 17192)
-- Name: _client _client_pkey; Type: CONSTRAINT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._client
    ADD CONSTRAINT _client_pkey PRIMARY KEY (id);


--
-- TOC entry 3265 (class 2606 OID 17194)
-- Name: _commodities _commodities_pkey; Type: CONSTRAINT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._commodities
    ADD CONSTRAINT _commodities_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 17196)
-- Name: _contract _contract_pkey; Type: CONSTRAINT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._contract
    ADD CONSTRAINT _contract_pkey PRIMARY KEY (id);


--
-- TOC entry 3269 (class 2606 OID 17198)
-- Name: _delivery _delivery_pkey; Type: CONSTRAINT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._delivery
    ADD CONSTRAINT _delivery_pkey PRIMARY KEY (id);


--
-- TOC entry 3271 (class 2606 OID 17200)
-- Name: _employee _employee_pkey; Type: CONSTRAINT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._employee
    ADD CONSTRAINT _employee_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 17202)
-- Name: _financial_report _financial_report_pkey; Type: CONSTRAINT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._financial_report
    ADD CONSTRAINT _financial_report_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 17204)
-- Name: _salary _salary_pkey; Type: CONSTRAINT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._salary
    ADD CONSTRAINT _salary_pkey PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 17206)
-- Name: _training _training_pkey; Type: CONSTRAINT; Schema: kclapid; Owner: datama2mi181
--

ALTER TABLE ONLY kclapid._training
    ADD CONSTRAINT _training_pkey PRIMARY KEY (id);


-- Completed on 2019-12-02 09:12:08

--
-- PostgreSQL database dump complete
--

