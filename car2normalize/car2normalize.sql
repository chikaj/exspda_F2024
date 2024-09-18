--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg110+1)
-- Dumped by pg_dump version 16.4

-- Started on 2024-09-18 21:53:50 UTC

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
-- TOC entry 10 (class 2615 OID 22195)
-- Name: staging; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA staging;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 246 (class 1259 OID 22196)
-- Name: cars; Type: TABLE; Schema: staging; Owner: -
--

CREATE TABLE staging.cars (
    id integer,
    make text,
    model text,
    caddress text,
    cphone text,
    dname text,
    dquality text,
    mname text,
    maddress text,
    mcity text,
    mcountry text
);


--
-- TOC entry 4829 (class 0 OID 22196)
-- Dependencies: 246
-- Data for Name: cars; Type: TABLE DATA; Schema: staging; Owner: -
--

INSERT INTO staging.cars VALUES (1, 'Buick', 'lacrosse', 'Kansas, USA', '34.534.56792', 'Bradley le Buick', '7', 'Buck', '123 Buick', 'Detroit', 'MI');
INSERT INTO staging.cars VALUES (2, 'Buick', 'Park Avenue', 'MI, USA', '2342343456', 'Brittney le Buick', '8', 'Buck', '123 Buick Bahn', 'Detroit', 'MI');
INSERT INTO staging.cars VALUES (3, 'GMC', 'S-15 Jimmy', 'Detroit USA', '876.587.6549', 'Bettie Durant', 'ten', 'GMC Man. LLC', '327 South side', 'North Detroit', 'MI');
INSERT INTO staging.cars VALUES (4, 'Buick', 'Skyhawk', 'MI, USA', '2342343458', 'Buick, BL', '7', 'Buck', '123 Buick Bahn', 'Detroit', 'mi');
INSERT INTO staging.cars VALUES (5, 'Opel', 'Tigra A', 'Munich, Germany', '98-798-765-470', 'Adam Opel', '4', 'Opel', '1 DeStret', 'Ruselsheim am Main', 'GER');
INSERT INTO staging.cars VALUES (6, 'Opel', 'chevette', 'Munich, Germany', '98-798-765468', 'Adam Ople', '4', 'Opel', '1 DeStret', 'Russelsheim on Main', 'DE');
INSERT INTO staging.cars VALUES (7, 'Buick', 'Excelle', 'Kansas, USA', '3453456790', 'Brittney le Buick', '8', 'Buck', '123 Buick Bahn', 'Detroit', 'Mich');
INSERT INTO staging.cars VALUES (8, 'GMC', 'Sierra', 'Detroit, USA', '876.587.6543', 'Bettie Durant', 'ten', 'GMC Man. LLC.', '321 Southside', 'North Detroit', 'MI');
INSERT INTO staging.cars VALUES (9, 'Acura', 'CL', 'Minto, Tokyo', '1231231240', 'Sally de Acura', '6', 'Acura', '1919 Torrance Blvd.', 'Torrance', 'CA');
INSERT INTO staging.cars VALUES (10, 'Buick', 'Sail', 'MI, USA', '2342343457', 'Brittney le Buick', '8', 'Buck', '123 Buick Bahn', 'Detroit', 'mi');
INSERT INTO staging.cars VALUES (11, 'acura', 'Legend', 'Minato, Tokyo', '123.123.1241', 'de Acura, Sally', '5', 'Acura', '1919 Torrance Blvd.', 'Torranc', 'California');
INSERT INTO staging.cars VALUES (12, 'Opel', 'Kadett a', 'Munich, Gernany', '98-798-765471', 'Adam Opel', '4', 'Opel', '1 DeStret', 'Russelsheim am Main', 'GER');
INSERT INTO staging.cars VALUES (13, 'fiat', 'Dino Coupe', 'Turin, Italy', '8887775433', 'A Giordano', '7', 'Fiat Parts, Ltd.', '10 Lingotto', 'Torin', 'it');
INSERT INTO staging.cars VALUES (14, 'Buck', 'LeSabre', 'Kansas, USA', '3453456794', 'Brittney le Buick', '8', 'Buck', '123 Buick Bahn', 'Detroit', 'MI');
INSERT INTO staging.cars VALUES (15, 'Buick', 'Excelle', 'Kansas, USA', '3453456789', 'Bradley le Buick', '7', 'Buck', '123 Buick Bahn', 'Detroit', 'MI');
INSERT INTO staging.cars VALUES (16, 'Buick', 'Wilcat', 'Kansas, USA', '3453456798', 'Brittney le Buick', '8', 'Buck', '123 Biuck Bahn', 'Detroit', 'MI');
INSERT INTO staging.cars VALUES (17, 'Fiat', 'Regata', 'Turin, Italy', '8887775435', 'A Giordano', '7', 'Fiat Parts Ltd', '12 Lingotto', 'Torin', 'italy');
INSERT INTO staging.cars VALUES (18, 'Acura', 'ILX', 'Minato, Tokyo', '1231231236', 'de Acura, Nelson', '7', 'Acura', '1919 Torrance Blvd.', 'Torance', 'Cal');
INSERT INTO staging.cars VALUES (19, 'GMC', 'Envoy', 'detroit, usa', '876.587.6550', 'Bettie Durant', 'ten', 'GMC Man. LLC', '328 Southside', 'North Detroit', 'MI');
INSERT INTO staging.cars VALUES (20, 'GMC', 'Rally', 'Detroit USA', '876.587.6547', 'Elisabeth Durrant', '7', 'GMC Man. LLC.', '325 Southside', 'North Detroit', 'MI');
INSERT INTO staging.cars VALUES (21, 'Buick', 'Riviera', 'Kansas, USA', '345-345-6795', 'Brittney le Buick', '8', 'Buck', '123 Buick', 'Detroit', 'MI');
INSERT INTO staging.cars VALUES (22, 'Opel', 'Corsa A', 'Munich, Germany', '98-798-765-469', 'Adam Opel', 'four', 'Opel', '1 DeStret', 'Russelsheim am Main', 'DE');
INSERT INTO staging.cars VALUES (23, 'GMC', 'Canyon', 'Detroit USA', '876.587.6544', 'Bettie Durant', 'ten', 'GMC Man. LLC.', '322 Southside', 'North Detroit', 'MI');
INSERT INTO staging.cars VALUES (24, 'Buick', 'Wildcat', 'Kansas, USA', '3453456797', 'Brittney le Buick', '8', 'Buck', '123 Buick Bahn', 'Detroit', 'MI');
INSERT INTO staging.cars VALUES (25, 'Buick', 'Opel', 'MI, USA', '234-234-3456', 'BL Buick', '8', 'Buck Ltd.', '123 Buick Bahn', 'Detroit', 'MI');
INSERT INTO staging.cars VALUES (26, 'GMC', 'Handi-Bus', 'Detroit USA', '876.587.6546', 'B. Durant', 'ten', 'GMC Man. LLC.', '324 Southside', 'North Detroit', 'michigan');
INSERT INTO staging.cars VALUES (27, 'GMC', 'Suburban', 'Detroit USA', '876.587.6548', 'William Durant', '6', 'GMC Man. LC.', '326 Southside', 'North Detroit', 'MI');
INSERT INTO staging.cars VALUES (28, 'Acura', 'RSX', 'Minato, Tokyo', '1231231239', 'Nelson de Acura', '7', 'Acura', '1919 Torrance Blvd.', 'Tomance', 'ca');
INSERT INTO staging.cars VALUES (29, 'Acura', 'MDX', 'Minata, Tokyo', '1231231234', 'Bob de Acura', '6', 'Acura', '1919 Torrance Blvd.', 'Torrance', 'CA');
INSERT INTO staging.cars VALUES (30, 'Fiat', 'Punto Evo', 'Turin, Italy', '8887775437', 'Alb. Giordano', '7', 'Fiat Parts Ltd.', '14 Lingotto', 'Torin', 'IT');
INSERT INTO staging.cars VALUES (31, 'Fiat', 'Spider', 'Turin, Italy', '8887775438', 'Giovanni Agnelli', '6', 'Fiat Parts, Ltd.', '15 Lingoto', 'Turin', 'iT');
INSERT INTO staging.cars VALUES (32, 'Acura', 'NSX', 'Minato, Tokio', '1231231237', 'Bob de Acura', 'six', 'Acura', '1919 Torance Blvd.', 'Torrance', 'California');
INSERT INTO staging.cars VALUES (33, 'Buick', 'Riviera', 'Kansas, USA', '3453456796', 'le Buick, Brittney', '8', 'Buck', '123 Buick Bahn', 'Detroit', 'MI');
INSERT INTO staging.cars VALUES (34, 'Acura', 'RDX', 'Minato, Tokyo', '1231231235', 'Sally de Acura', '6', 'Acura', '1919 Torrance Blvd.', 'Torrance', 'CA');
INSERT INTO staging.cars VALUES (35, 'Opel', 'Olympia Rekord', 'Munich, Germany', '98-798-765-474', 'Adam Opel', '4', 'Opel', '1 DeStret', 'Russelsheim am Main', 'ger');
INSERT INTO staging.cars VALUES (36, 'Opel', 'Adam', 'Munich, Germany', '98-798-765-466', 'Adam Opel', '4', 'Opel', '1 DeStret', 'Russelseim am Main', 'GER');
INSERT INTO staging.cars VALUES (37, 'Opel', 'Olympia A', 'Munich, Germany', '98-798-765-472', 'Adam Opel', '4', 'Opel', '1 DeStret', 'Russelsheim am Main', 'DE');
INSERT INTO staging.cars VALUES (38, 'Opel', 'Corsa', 'Munich, Germany', '98-798-765-467', 'adam opel', '4', 'Opel', '1 DeStret', 'Russelsheim am Main', 'GER');
INSERT INTO staging.cars VALUES (39, 'Acura', 'TSX', 'Minato, Tokyo', '123.123.1242', 'Nelson de Acura', '8', 'Acura', '1919 Torrance Blvd.', 'Torrance', 'ca');
INSERT INTO staging.cars VALUES (40, 'Opel', 'Karl', 'Munish, Germany', '98-798-765-465', 'Adam opel', '4', 'Opel', '1 DeStret', 'Russelsheim am Main', 'GER');
INSERT INTO staging.cars VALUES (41, 'Opel', 'Calibra', 'Munich, Germany', '98798-765-473', 'Adam Opel', '4', 'Opel', '1 DeStret', 'Russelsheim am Main', 'GER');
INSERT INTO staging.cars VALUES (42, 'Buick', 'Lacrosse', 'Kansas, USA', '3453456793', 'Brittney le Buick', '8', 'Buck', '123 Buick Bahn', 'Detroit', 'MI');
INSERT INTO staging.cars VALUES (43, 'Fiat', 'Spid3r', 'Turin, Italy', '8887775438', 'Giovanni Agnelli', '6', 'Fiat Parts, Ltd.', '15 Lingoto', 'Turin', 'iT');
INSERT INTO staging.cars VALUES (44, 'GMC', 'Yukon', 'Detroit USA', '876.587.6545', 'B. Durrant', 'ten', 'GMC Manufacturing LLC.', '323 Southside', 'N. Detroit', 'MI');
INSERT INTO staging.cars VALUES (45, 'Aura', 'SLX', 'Minato, Tokyo', '123-123-1238', 'Bob de Acura', '5', 'Acura', '1919 Torance Blvd.', 'Torrance', 'CA');
INSERT INTO staging.cars VALUES (46, 'Buick', 'LaCrosse', 'Kansas, USA', '345.345.6791', 'Brittney le Buick', '8', 'Buck', '123 Buick Bahn', 'Detroit', 'Michigan');
INSERT INTO staging.cars VALUES (47, 'Fiat', 'Dino Coup', 'Turin, Italy', '8887775434', 'A Giordano', '7', 'Fiat Parts, Ltd.', '11 Lingotto', 'Torin', 'IT');
INSERT INTO staging.cars VALUES (48, 'Buick', 'Opl', 'MI, USA', '234-234-3456', 'Buick, Brittney le ', '8', 'Buck', '123 Buick Bahn', 'Detroit', 'MI');
INSERT INTO staging.cars VALUES (49, 'Fiat', '500', 'Turin, Italy', '8887775432', 'Alberto Giordano', '7', 'Fiat Parts, Ltd.', '09 Lingotto', 'Turin', 'IT');
INSERT INTO staging.cars VALUES (50, 'Fiat', 'Croma', 'Turin, Italy', '8887775436', 'A Giordano', '7', 'Fiat Parts, Ltd.', '13 Lingotto', 'Torin', 'IT');


-- Completed on 2024-09-18 21:53:50 UTC

--
-- PostgreSQL database dump complete
--

