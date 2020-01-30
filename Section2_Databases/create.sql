--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

-- Started on 2020-01-31 00:38:39

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
-- TOC entry 2909 (class 1262 OID 16802)
-- Name: CarShop; Type: DATABASE; Schema: -; Owner: postgres
--

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

SET default_with_oids = false;

--
-- TOC entry 207 (class 1259 OID 16848)
-- Name: car; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.car (
    "carId" integer NOT NULL,
    "variantId" integer NOT NULL,
    "isNew" boolean NOT NULL
);


ALTER TABLE public.car OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16844)
-- Name: car_carId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."car_carId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."car_carId_seq" OWNER TO postgres;

--
-- TOC entry 2910 (class 0 OID 0)
-- Dependencies: 205
-- Name: car_carId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."car_carId_seq" OWNED BY public.car."carId";


--
-- TOC entry 206 (class 1259 OID 16846)
-- Name: car_manufacturerId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."car_manufacturerId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."car_manufacturerId_seq" OWNER TO postgres;

--
-- TOC entry 2911 (class 0 OID 0)
-- Dependencies: 206
-- Name: car_manufacturerId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."car_manufacturerId_seq" OWNED BY public.car."variantId";


--
-- TOC entry 197 (class 1259 OID 16805)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    "customerId" integer NOT NULL,
    "customerName" character varying NOT NULL,
    "phoneNumber" character varying NOT NULL
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16803)
-- Name: customer_customerId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."customer_customerId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."customer_customerId_seq" OWNER TO postgres;

--
-- TOC entry 2912 (class 0 OID 0)
-- Dependencies: 196
-- Name: customer_customerId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."customer_customerId_seq" OWNED BY public.customer."customerId";


--
-- TOC entry 209 (class 1259 OID 16866)
-- Name: manufacturer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manufacturer (
    "manufacturerId" integer NOT NULL,
    "manufacturerName" character varying NOT NULL
);


ALTER TABLE public.manufacturer OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16864)
-- Name: manufacturer_manufacturerId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."manufacturer_manufacturerId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."manufacturer_manufacturerId_seq" OWNER TO postgres;

--
-- TOC entry 2913 (class 0 OID 0)
-- Dependencies: 208
-- Name: manufacturer_manufacturerId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."manufacturer_manufacturerId_seq" OWNED BY public.manufacturer."manufacturerId";


--
-- TOC entry 212 (class 1259 OID 16888)
-- Name: model; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model (
    "modelId" integer NOT NULL,
    "manufacturerId" integer NOT NULL,
    "modelName" character varying NOT NULL
);


ALTER TABLE public.model OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16886)
-- Name: model_manufacturerId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."model_manufacturerId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."model_manufacturerId_seq" OWNER TO postgres;

--
-- TOC entry 2914 (class 0 OID 0)
-- Dependencies: 211
-- Name: model_manufacturerId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."model_manufacturerId_seq" OWNED BY public.model."manufacturerId";


--
-- TOC entry 210 (class 1259 OID 16884)
-- Name: model_modelId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."model_modelId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."model_modelId_seq" OWNER TO postgres;

--
-- TOC entry 2915 (class 0 OID 0)
-- Dependencies: 210
-- Name: model_modelId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."model_modelId_seq" OWNED BY public.model."modelId";


--
-- TOC entry 217 (class 1259 OID 16939)
-- Name: price; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.price (
    "carId" integer NOT NULL,
    price numeric NOT NULL
);


ALTER TABLE public.price OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16937)
-- Name: price_carId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."price_carId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."price_carId_seq" OWNER TO postgres;

--
-- TOC entry 2916 (class 0 OID 0)
-- Dependencies: 216
-- Name: price_carId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."price_carId_seq" OWNED BY public.price."carId";


--
-- TOC entry 204 (class 1259 OID 16838)
-- Name: salesPerson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."salesPerson" (
    "salesPersonId" integer NOT NULL,
    "salesPersonName" character varying NOT NULL
);


ALTER TABLE public."salesPerson" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16836)
-- Name: salesPerson_salesPersonId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."salesPerson_salesPersonId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."salesPerson_salesPersonId_seq" OWNER TO postgres;

--
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 203
-- Name: salesPerson_salesPersonId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."salesPerson_salesPersonId_seq" OWNED BY public."salesPerson"."salesPersonId";


--
-- TOC entry 202 (class 1259 OID 16822)
-- Name: salesTransaction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."salesTransaction" (
    "salesId" integer NOT NULL,
    "customerId" integer NOT NULL,
    "salesPersonId" integer NOT NULL,
    "carId" integer NOT NULL,
    "purchasedAt" timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public."salesTransaction" OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16820)
-- Name: salesTransaction_carId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."salesTransaction_carId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."salesTransaction_carId_seq" OWNER TO postgres;

--
-- TOC entry 2918 (class 0 OID 0)
-- Dependencies: 201
-- Name: salesTransaction_carId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."salesTransaction_carId_seq" OWNED BY public."salesTransaction"."carId";


--
-- TOC entry 199 (class 1259 OID 16816)
-- Name: salesTransaction_customerId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."salesTransaction_customerId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."salesTransaction_customerId_seq" OWNER TO postgres;

--
-- TOC entry 2919 (class 0 OID 0)
-- Dependencies: 199
-- Name: salesTransaction_customerId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."salesTransaction_customerId_seq" OWNED BY public."salesTransaction"."customerId";


--
-- TOC entry 198 (class 1259 OID 16814)
-- Name: salesTransaction_salesId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."salesTransaction_salesId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."salesTransaction_salesId_seq" OWNER TO postgres;

--
-- TOC entry 2920 (class 0 OID 0)
-- Dependencies: 198
-- Name: salesTransaction_salesId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."salesTransaction_salesId_seq" OWNED BY public."salesTransaction"."salesId";


--
-- TOC entry 200 (class 1259 OID 16818)
-- Name: salesTransaction_salesPersonId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."salesTransaction_salesPersonId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."salesTransaction_salesPersonId_seq" OWNER TO postgres;

--
-- TOC entry 2921 (class 0 OID 0)
-- Dependencies: 200
-- Name: salesTransaction_salesPersonId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."salesTransaction_salesPersonId_seq" OWNED BY public."salesTransaction"."salesPersonId";


--
-- TOC entry 215 (class 1259 OID 16902)
-- Name: variant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.variant (
    "variantId" integer NOT NULL,
    "modelId" integer NOT NULL,
    "modelVariant" character varying NOT NULL,
    weight numeric NOT NULL,
    "engineCubicCapacity" numeric NOT NULL,
    price numeric NOT NULL
);


ALTER TABLE public.variant OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16900)
-- Name: variant_modelId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."variant_modelId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."variant_modelId_seq" OWNER TO postgres;

--
-- TOC entry 2922 (class 0 OID 0)
-- Dependencies: 214
-- Name: variant_modelId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."variant_modelId_seq" OWNED BY public.variant."modelId";


--
-- TOC entry 213 (class 1259 OID 16898)
-- Name: variant_variantId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."variant_variantId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."variant_variantId_seq" OWNER TO postgres;

--
-- TOC entry 2923 (class 0 OID 0)
-- Dependencies: 213
-- Name: variant_variantId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."variant_variantId_seq" OWNED BY public.variant."variantId";


--
-- TOC entry 2752 (class 2604 OID 16851)
-- Name: car carId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car ALTER COLUMN "carId" SET DEFAULT nextval('public."car_carId_seq"'::regclass);


--
-- TOC entry 2753 (class 2604 OID 16852)
-- Name: car variantId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car ALTER COLUMN "variantId" SET DEFAULT nextval('public."car_manufacturerId_seq"'::regclass);


--
-- TOC entry 2745 (class 2604 OID 16808)
-- Name: customer customerId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN "customerId" SET DEFAULT nextval('public."customer_customerId_seq"'::regclass);


--
-- TOC entry 2754 (class 2604 OID 16869)
-- Name: manufacturer manufacturerId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturer ALTER COLUMN "manufacturerId" SET DEFAULT nextval('public."manufacturer_manufacturerId_seq"'::regclass);


--
-- TOC entry 2755 (class 2604 OID 16891)
-- Name: model modelId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model ALTER COLUMN "modelId" SET DEFAULT nextval('public."model_modelId_seq"'::regclass);


--
-- TOC entry 2756 (class 2604 OID 16892)
-- Name: model manufacturerId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model ALTER COLUMN "manufacturerId" SET DEFAULT nextval('public."model_manufacturerId_seq"'::regclass);


--
-- TOC entry 2759 (class 2604 OID 16942)
-- Name: price carId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price ALTER COLUMN "carId" SET DEFAULT nextval('public."price_carId_seq"'::regclass);


--
-- TOC entry 2751 (class 2604 OID 16841)
-- Name: salesPerson salesPersonId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."salesPerson" ALTER COLUMN "salesPersonId" SET DEFAULT nextval('public."salesPerson_salesPersonId_seq"'::regclass);


--
-- TOC entry 2746 (class 2604 OID 16825)
-- Name: salesTransaction salesId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."salesTransaction" ALTER COLUMN "salesId" SET DEFAULT nextval('public."salesTransaction_salesId_seq"'::regclass);


--
-- TOC entry 2747 (class 2604 OID 16826)
-- Name: salesTransaction customerId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."salesTransaction" ALTER COLUMN "customerId" SET DEFAULT nextval('public."salesTransaction_customerId_seq"'::regclass);


--
-- TOC entry 2748 (class 2604 OID 16827)
-- Name: salesTransaction salesPersonId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."salesTransaction" ALTER COLUMN "salesPersonId" SET DEFAULT nextval('public."salesTransaction_salesPersonId_seq"'::regclass);


--
-- TOC entry 2749 (class 2604 OID 16828)
-- Name: salesTransaction carId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."salesTransaction" ALTER COLUMN "carId" SET DEFAULT nextval('public."salesTransaction_carId_seq"'::regclass);


--
-- TOC entry 2757 (class 2604 OID 16905)
-- Name: variant variantId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variant ALTER COLUMN "variantId" SET DEFAULT nextval('public."variant_variantId_seq"'::regclass);


--
-- TOC entry 2758 (class 2604 OID 16906)
-- Name: variant modelId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variant ALTER COLUMN "modelId" SET DEFAULT nextval('public."variant_modelId_seq"'::regclass);


--
-- TOC entry 2767 (class 2606 OID 16854)
-- Name: car car_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY ("carId");


--
-- TOC entry 2761 (class 2606 OID 16813)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY ("customerId");


--
-- TOC entry 2769 (class 2606 OID 16874)
-- Name: manufacturer manufacturer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT manufacturer_pkey PRIMARY KEY ("manufacturerId");


--
-- TOC entry 2771 (class 2606 OID 16897)
-- Name: model model_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_pkey PRIMARY KEY ("modelId");


--
-- TOC entry 2775 (class 2606 OID 16947)
-- Name: price price_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_pkey PRIMARY KEY ("carId");


--
-- TOC entry 2765 (class 2606 OID 16843)
-- Name: salesPerson salesPerson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."salesPerson"
    ADD CONSTRAINT "salesPerson_pkey" PRIMARY KEY ("salesPersonId");


--
-- TOC entry 2763 (class 2606 OID 16830)
-- Name: salesTransaction salesTransaction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."salesTransaction"
    ADD CONSTRAINT "salesTransaction_pkey" PRIMARY KEY ("salesId");


--
-- TOC entry 2773 (class 2606 OID 16911)
-- Name: variant variant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variant
    ADD CONSTRAINT variant_pkey PRIMARY KEY ("variantId");


--
-- TOC entry 2778 (class 2606 OID 16918)
-- Name: salesTransaction carId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."salesTransaction"
    ADD CONSTRAINT "carId" FOREIGN KEY ("carId") REFERENCES public.car("carId");


--
-- TOC entry 2782 (class 2606 OID 16948)
-- Name: price carId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT "carId" FOREIGN KEY ("carId") REFERENCES public.car("carId");


--
-- TOC entry 2776 (class 2606 OID 16831)
-- Name: salesTransaction customerId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."salesTransaction"
    ADD CONSTRAINT "customerId" FOREIGN KEY ("customerId") REFERENCES public.customer("customerId");


--
-- TOC entry 2780 (class 2606 OID 16953)
-- Name: model manufacturerId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT "manufacturerId" FOREIGN KEY ("manufacturerId") REFERENCES public.manufacturer("manufacturerId");


--
-- TOC entry 2781 (class 2606 OID 16958)
-- Name: variant modelId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variant
    ADD CONSTRAINT "modelId" FOREIGN KEY ("modelId") REFERENCES public.model("modelId");


--
-- TOC entry 2777 (class 2606 OID 16913)
-- Name: salesTransaction salesPersonId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."salesTransaction"
    ADD CONSTRAINT "salesPersonId" FOREIGN KEY ("salesPersonId") REFERENCES public."salesPerson"("salesPersonId");


--
-- TOC entry 2779 (class 2606 OID 16995)
-- Name: car variantId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT "variantId" FOREIGN KEY ("variantId") REFERENCES public.variant("variantId");


-- Completed on 2020-01-31 00:38:40

--
-- PostgreSQL database dump complete
--

