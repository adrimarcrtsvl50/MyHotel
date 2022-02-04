--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8
-- Dumped by pg_dump version 12.8

-- Started on 2022-02-03 14:59:58

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
-- TOC entry 205 (class 1259 OID 16596)
-- Name: card; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card (
    id integer NOT NULL,
    cvv integer NOT NULL,
    nombre character varying(255) NOT NULL,
    numero integer NOT NULL,
    vencimiento date NOT NULL
);


ALTER TABLE public.card OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16594)
-- Name: card_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.card_id_seq OWNER TO postgres;

--
-- TOC entry 2922 (class 0 OID 0)
-- Dependencies: 204
-- Name: card_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.card_id_seq OWNED BY public.card.id;


--
-- TOC entry 203 (class 1259 OID 16572)
-- Name: hotel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hotel (
    id integer NOT NULL,
    address character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    namehotel character varying(255) NOT NULL,
    stars integer NOT NULL
);


ALTER TABLE public.hotel OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16570)
-- Name: hotel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hotel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_id_seq OWNER TO postgres;

--
-- TOC entry 2923 (class 0 OID 0)
-- Dependencies: 202
-- Name: hotel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hotel_id_seq OWNED BY public.hotel.id;


--
-- TOC entry 207 (class 1259 OID 16606)
-- Name: pos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pos (
    id integer NOT NULL,
    sub_total real NOT NULL,
    iva real NOT NULL,
    total real NOT NULL
);


ALTER TABLE public.pos OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16604)
-- Name: pos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pos_id_seq OWNER TO postgres;

--
-- TOC entry 2924 (class 0 OID 0)
-- Dependencies: 206
-- Name: pos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pos_id_seq OWNED BY public.pos.id;


--
-- TOC entry 209 (class 1259 OID 16614)
-- Name: profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profile (
    id integer NOT NULL,
    apellido character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL,
    numid character varying(255) NOT NULL,
    tipo character varying(255) NOT NULL,
    tipodedocumento character varying(255) NOT NULL
);


ALTER TABLE public.profile OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16612)
-- Name: profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_id_seq OWNER TO postgres;

--
-- TOC entry 2925 (class 0 OID 0)
-- Dependencies: 208
-- Name: profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profile_id_seq OWNED BY public.profile.id;


--
-- TOC entry 213 (class 1259 OID 16651)
-- Name: reservation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reservation (
    id integer NOT NULL,
    pos_id integer NOT NULL,
    card_id integer NOT NULL,
    fecha_final date NOT NULL,
    fecha_inicial date NOT NULL
);


ALTER TABLE public.reservation OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16697)
-- Name: reservation_general_extras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reservation_general_extras (
    reservation_id integer NOT NULL,
    general_extra_id integer NOT NULL
);


ALTER TABLE public.reservation_general_extras OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16682)
-- Name: reservation_guests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reservation_guests (
    reservation_id integer NOT NULL,
    guest_id integer NOT NULL
);


ALTER TABLE public.reservation_guests OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16649)
-- Name: reservation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reservation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reservation_id_seq OWNER TO postgres;

--
-- TOC entry 2926 (class 0 OID 0)
-- Dependencies: 212
-- Name: reservation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reservation_id_seq OWNED BY public.reservation.id;


--
-- TOC entry 215 (class 1259 OID 16659)
-- Name: room; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.room (
    id integer NOT NULL,
    beds integer NOT NULL,
    room_number character varying(255) NOT NULL,
    room_type character varying(255) NOT NULL,
    hotel_id integer,
    reservation_id integer
);


ALTER TABLE public.room OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16657)
-- Name: room_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.room_id_seq OWNER TO postgres;

--
-- TOC entry 2927 (class 0 OID 0)
-- Dependencies: 214
-- Name: room_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.room_id_seq OWNED BY public.room.id;


--
-- TOC entry 211 (class 1259 OID 16625)
-- Name: servicios_extra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.servicios_extra (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    precie real NOT NULL
);


ALTER TABLE public.servicios_extra OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16623)
-- Name: servicios_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.servicios_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.servicios_extra_id_seq OWNER TO postgres;

--
-- TOC entry 2928 (class 0 OID 0)
-- Dependencies: 210
-- Name: servicios_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.servicios_extra_id_seq OWNED BY public.servicios_extra.id;


--
-- TOC entry 2735 (class 2604 OID 16599)
-- Name: card id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card ALTER COLUMN id SET DEFAULT nextval('public.card_id_seq'::regclass);


--
-- TOC entry 2734 (class 2604 OID 16575)
-- Name: hotel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel ALTER COLUMN id SET DEFAULT nextval('public.hotel_id_seq'::regclass);


--
-- TOC entry 2736 (class 2604 OID 16609)
-- Name: pos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pos ALTER COLUMN id SET DEFAULT nextval('public.pos_id_seq'::regclass);


--
-- TOC entry 2737 (class 2604 OID 16617)
-- Name: profile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile ALTER COLUMN id SET DEFAULT nextval('public.profile_id_seq'::regclass);


--
-- TOC entry 2739 (class 2604 OID 16654)
-- Name: reservation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation ALTER COLUMN id SET DEFAULT nextval('public.reservation_id_seq'::regclass);


--
-- TOC entry 2740 (class 2604 OID 16662)
-- Name: room id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room ALTER COLUMN id SET DEFAULT nextval('public.room_id_seq'::regclass);


--
-- TOC entry 2738 (class 2604 OID 16628)
-- Name: servicios_extra id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servicios_extra ALTER COLUMN id SET DEFAULT nextval('public.servicios_extra_id_seq'::regclass);


--
-- TOC entry 2904 (class 0 OID 16596)
-- Dependencies: 205
-- Data for Name: card; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.card (id, cvv, nombre, numero, vencimiento) FROM stdin;
\.


--
-- TOC entry 2902 (class 0 OID 16572)
-- Dependencies: 203
-- Data for Name: hotel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hotel (id, address, email, namehotel, stars) FROM stdin;
\.


--
-- TOC entry 2906 (class 0 OID 16606)
-- Dependencies: 207
-- Data for Name: pos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pos (id, sub_total, iva, total) FROM stdin;
\.


--
-- TOC entry 2908 (class 0 OID 16614)
-- Dependencies: 209
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profile (id, apellido, email, nombre, numid, tipo, tipodedocumento) FROM stdin;
\.


--
-- TOC entry 2912 (class 0 OID 16651)
-- Dependencies: 213
-- Data for Name: reservation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reservation (id, pos_id, card_id, fecha_final, fecha_inicial) FROM stdin;
\.


--
-- TOC entry 2916 (class 0 OID 16697)
-- Dependencies: 217
-- Data for Name: reservation_general_extras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reservation_general_extras (reservation_id, general_extra_id) FROM stdin;
\.


--
-- TOC entry 2915 (class 0 OID 16682)
-- Dependencies: 216
-- Data for Name: reservation_guests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reservation_guests (reservation_id, guest_id) FROM stdin;
\.


--
-- TOC entry 2914 (class 0 OID 16659)
-- Dependencies: 215
-- Data for Name: room; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.room (id, beds, room_number, room_type, hotel_id, reservation_id) FROM stdin;
\.


--
-- TOC entry 2910 (class 0 OID 16625)
-- Dependencies: 211
-- Data for Name: servicios_extra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.servicios_extra (id, name, precie) FROM stdin;
\.


--
-- TOC entry 2929 (class 0 OID 0)
-- Dependencies: 204
-- Name: card_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.card_id_seq', 1, false);


--
-- TOC entry 2930 (class 0 OID 0)
-- Dependencies: 202
-- Name: hotel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hotel_id_seq', 1, false);


--
-- TOC entry 2931 (class 0 OID 0)
-- Dependencies: 206
-- Name: pos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pos_id_seq', 1, false);


--
-- TOC entry 2932 (class 0 OID 0)
-- Dependencies: 208
-- Name: profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profile_id_seq', 1, false);


--
-- TOC entry 2933 (class 0 OID 0)
-- Dependencies: 212
-- Name: reservation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reservation_id_seq', 1, false);


--
-- TOC entry 2934 (class 0 OID 0)
-- Dependencies: 214
-- Name: room_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.room_id_seq', 1, false);


--
-- TOC entry 2935 (class 0 OID 0)
-- Dependencies: 210
-- Name: servicios_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.servicios_extra_id_seq', 1, false);


--
-- TOC entry 2744 (class 2606 OID 16601)
-- Name: card card_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT card_pkey PRIMARY KEY (id);


--
-- TOC entry 2742 (class 2606 OID 16580)
-- Name: hotel hotel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (id);


--
-- TOC entry 2746 (class 2606 OID 16611)
-- Name: pos pos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pos
    ADD CONSTRAINT pos_pkey PRIMARY KEY (id);


--
-- TOC entry 2748 (class 2606 OID 16622)
-- Name: profile profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id);


--
-- TOC entry 2766 (class 2606 OID 16701)
-- Name: reservation_general_extras reservation_general_extras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation_general_extras
    ADD CONSTRAINT reservation_general_extras_pkey PRIMARY KEY (reservation_id, general_extra_id);


--
-- TOC entry 2764 (class 2606 OID 16686)
-- Name: reservation_guests reservation_guests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation_guests
    ADD CONSTRAINT reservation_guests_pkey PRIMARY KEY (reservation_id, guest_id);


--
-- TOC entry 2752 (class 2606 OID 16656)
-- Name: reservation reservation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_pkey PRIMARY KEY (id);


--
-- TOC entry 2758 (class 2606 OID 16667)
-- Name: room room_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);


--
-- TOC entry 2750 (class 2606 OID 16630)
-- Name: servicios_extra servicios_extra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servicios_extra
    ADD CONSTRAINT servicios_extra_pkey PRIMARY KEY (id);


--
-- TOC entry 2754 (class 2606 OID 16720)
-- Name: reservation uk_c7v0y35gduvkkeckyo9snqqnp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT uk_c7v0y35gduvkkeckyo9snqqnp UNIQUE (card_id);


--
-- TOC entry 2760 (class 2606 OID 16671)
-- Name: room uk_df4cvvccp8uy0b60pxqm1tcbd; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room
    ADD CONSTRAINT uk_df4cvvccp8uy0b60pxqm1tcbd UNIQUE (room_number);


--
-- TOC entry 2762 (class 2606 OID 16669)
-- Name: room uk_fvetq5dj3wcvmdf19bbof0os6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room
    ADD CONSTRAINT uk_fvetq5dj3wcvmdf19bbof0os6 UNIQUE (room_number);


--
-- TOC entry 2756 (class 2606 OID 16713)
-- Name: reservation uk_la1t5e01es1bv0civyrpl4efb; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT uk_la1t5e01es1bv0civyrpl4efb UNIQUE (pos_id);


--
-- TOC entry 2771 (class 2606 OID 16687)
-- Name: reservation_guests fkb85ek23j8c0tnikaytkmvwn0b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation_guests
    ADD CONSTRAINT fkb85ek23j8c0tnikaytkmvwn0b FOREIGN KEY (guest_id) REFERENCES public.profile(id);


--
-- TOC entry 2770 (class 2606 OID 16677)
-- Name: room fkbqjc1we17tbqewgyxup8i010w; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room
    ADD CONSTRAINT fkbqjc1we17tbqewgyxup8i010w FOREIGN KEY (reservation_id) REFERENCES public.reservation(id);


--
-- TOC entry 2767 (class 2606 OID 16714)
-- Name: reservation fkcx7wg0ft5nkrj7xex0phcy8ki; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT fkcx7wg0ft5nkrj7xex0phcy8ki FOREIGN KEY (pos_id) REFERENCES public.pos(id);


--
-- TOC entry 2773 (class 2606 OID 16702)
-- Name: reservation_general_extras fkdjix6ofauw38x8etv06t09ywy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation_general_extras
    ADD CONSTRAINT fkdjix6ofauw38x8etv06t09ywy FOREIGN KEY (general_extra_id) REFERENCES public.servicios_extra(id);


--
-- TOC entry 2769 (class 2606 OID 16672)
-- Name: room fkdosq3ww4h9m2osim6o0lugng8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room
    ADD CONSTRAINT fkdosq3ww4h9m2osim6o0lugng8 FOREIGN KEY (hotel_id) REFERENCES public.hotel(id);


--
-- TOC entry 2774 (class 2606 OID 16707)
-- Name: reservation_general_extras fkp054xfull52j6srk1pwrx5o6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation_general_extras
    ADD CONSTRAINT fkp054xfull52j6srk1pwrx5o6 FOREIGN KEY (reservation_id) REFERENCES public.reservation(id);


--
-- TOC entry 2768 (class 2606 OID 16721)
-- Name: reservation fkr1mheob71qrlc1kumd4l239oe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT fkr1mheob71qrlc1kumd4l239oe FOREIGN KEY (card_id) REFERENCES public.card(id);


--
-- TOC entry 2772 (class 2606 OID 16692)
-- Name: reservation_guests fkrhec0m0ool0evkwmvxm890j83; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation_guests
    ADD CONSTRAINT fkrhec0m0ool0evkwmvxm890j83 FOREIGN KEY (reservation_id) REFERENCES public.reservation(id);


-- Completed on 2022-02-03 15:00:00

--
-- PostgreSQL database dump complete
--

