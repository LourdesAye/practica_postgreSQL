toc.dat                                                                                             0000600 0004000 0002000 00000045453 15000042423 0014440 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       }         	   practica2    17.4    17.4 A    u           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false         v           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false         w           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false         x           1262    16410 	   practica2    DATABASE     o   CREATE DATABASE practica2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-AR';
    DROP DATABASE practica2;
                     postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false         y           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4         �            1259    16460    colores    TABLE     d   CREATE TABLE public.colores (
    color1 character varying(50),
    color2 character varying(50)
);
    DROP TABLE public.colores;
       public         heap r       postgres    false    4         �            1259    16451    departamentos    TABLE     �   CREATE TABLE public.departamentos (
    id_departamento integer NOT NULL,
    nombre_empleado character varying(50),
    nombre_departamento character varying(50)
);
 !   DROP TABLE public.departamentos;
       public         heap r       postgres    false    4         �            1259    16450 !   departamentos_id_departamento_seq    SEQUENCE     �   CREATE SEQUENCE public.departamentos_id_departamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.departamentos_id_departamento_seq;
       public               postgres    false    225    4         z           0    0 !   departamentos_id_departamento_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.departamentos_id_departamento_seq OWNED BY public.departamentos.id_departamento;
          public               postgres    false    224         �            1259    16421    ocupaciones    TABLE     �   CREATE TABLE public.ocupaciones (
    id_ocupacion integer NOT NULL,
    tipo_ocupacion character varying(100) NOT NULL,
    descripcion character varying(300) NOT NULL
);
    DROP TABLE public.ocupaciones;
       public         heap r       postgres    false    4         �            1259    16420    ocupaciones_id_ocupacion_seq    SEQUENCE     �   CREATE SEQUENCE public.ocupaciones_id_ocupacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.ocupaciones_id_ocupacion_seq;
       public               postgres    false    4    220         {           0    0    ocupaciones_id_ocupacion_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.ocupaciones_id_ocupacion_seq OWNED BY public.ocupaciones.id_ocupacion;
          public               postgres    false    219         �            1259    16476    pedidos    TABLE       CREATE TABLE public.pedidos (
    id_pedido integer NOT NULL,
    id_producto integer,
    cantidad integer,
    importe_total integer,
    CONSTRAINT pedidos_cantidad_check CHECK ((cantidad > 0)),
    CONSTRAINT pedidos_importe_total_check CHECK ((importe_total > 0))
);
    DROP TABLE public.pedidos;
       public         heap r       postgres    false    4         �            1259    16475    pedidos_id_pedido_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pedidos_id_pedido_seq;
       public               postgres    false    4    231         |           0    0    pedidos_id_pedido_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pedidos_id_pedido_seq OWNED BY public.pedidos.id_pedido;
          public               postgres    false    230         �            1259    16503    personas    TABLE     f   CREATE TABLE public.personas (
    id integer NOT NULL,
    nombre text NOT NULL,
    edad integer
);
    DROP TABLE public.personas;
       public         heap r       postgres    false    4         �            1259    16502    personas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.personas_id_seq;
       public               postgres    false    234    4         }           0    0    personas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.personas_id_seq OWNED BY public.personas.id;
          public               postgres    false    233         �            1259    16443    precios    TABLE     �   CREATE TABLE public.precios (
    id_precio integer NOT NULL,
    articulo character varying(300) NOT NULL,
    precio integer,
    descuento integer,
    CONSTRAINT precios_precio_check CHECK ((precio > 0))
);
    DROP TABLE public.precios;
       public         heap r       postgres    false    4         �            1259    16442    precios_id_precio_seq    SEQUENCE     �   CREATE SEQUENCE public.precios_id_precio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.precios_id_precio_seq;
       public               postgres    false    223    4         ~           0    0    precios_id_precio_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.precios_id_precio_seq OWNED BY public.precios.id_precio;
          public               postgres    false    222         �            1259    16468 	   productos    TABLE     �   CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre character varying(50),
    precio integer,
    CONSTRAINT productos_precio_check CHECK ((precio > 0))
);
    DROP TABLE public.productos;
       public         heap r       postgres    false    4         �            1259    16489    producto_cantidad_pedida    VIEW     �   CREATE VIEW public.producto_cantidad_pedida AS
 SELECT pr.nombre,
    pe.cantidad
   FROM (public.productos pr
     JOIN public.pedidos pe ON ((pr.id_producto = pe.id_producto)));
 +   DROP VIEW public.producto_cantidad_pedida;
       public       v       postgres    false    231    229    229    231    4         �            1259    16467    productos_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.productos_id_producto_seq;
       public               postgres    false    229    4                    0    0    productos_id_producto_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;
          public               postgres    false    228         �            1259    16457    tabla1    TABLE     �   CREATE TABLE public.tabla1 (
    columna1 character varying(50),
    columna2 character varying(50),
    columna3 character varying(50)
);
    DROP TABLE public.tabla1;
       public         heap r       postgres    false    4         �            1259    16412    usuarios    TABLE     b  CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido1 character varying(100) NOT NULL,
    apellido2 character varying(100) NOT NULL,
    "contraseña" character varying(100) NOT NULL,
    mail character varying(200) NOT NULL,
    fecha_creacion timestamp without time zone NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap r       postgres    false    4         �            1259    16411    usuarios_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_id_usuario_seq;
       public               postgres    false    218    4         �           0    0    usuarios_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;
          public               postgres    false    217         �            1259    16427    usuarios_ocupaciones    TABLE     _   CREATE TABLE public.usuarios_ocupaciones (
    id_usuario integer,
    id_ocupacion integer
);
 (   DROP TABLE public.usuarios_ocupaciones;
       public         heap r       postgres    false    4         �           2604    16454    departamentos id_departamento    DEFAULT     �   ALTER TABLE ONLY public.departamentos ALTER COLUMN id_departamento SET DEFAULT nextval('public.departamentos_id_departamento_seq'::regclass);
 L   ALTER TABLE public.departamentos ALTER COLUMN id_departamento DROP DEFAULT;
       public               postgres    false    225    224    225         �           2604    16424    ocupaciones id_ocupacion    DEFAULT     �   ALTER TABLE ONLY public.ocupaciones ALTER COLUMN id_ocupacion SET DEFAULT nextval('public.ocupaciones_id_ocupacion_seq'::regclass);
 G   ALTER TABLE public.ocupaciones ALTER COLUMN id_ocupacion DROP DEFAULT;
       public               postgres    false    219    220    220         �           2604    16479    pedidos id_pedido    DEFAULT     v   ALTER TABLE ONLY public.pedidos ALTER COLUMN id_pedido SET DEFAULT nextval('public.pedidos_id_pedido_seq'::regclass);
 @   ALTER TABLE public.pedidos ALTER COLUMN id_pedido DROP DEFAULT;
       public               postgres    false    230    231    231         �           2604    16506    personas id    DEFAULT     j   ALTER TABLE ONLY public.personas ALTER COLUMN id SET DEFAULT nextval('public.personas_id_seq'::regclass);
 :   ALTER TABLE public.personas ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    233    234    234         �           2604    16446    precios id_precio    DEFAULT     v   ALTER TABLE ONLY public.precios ALTER COLUMN id_precio SET DEFAULT nextval('public.precios_id_precio_seq'::regclass);
 @   ALTER TABLE public.precios ALTER COLUMN id_precio DROP DEFAULT;
       public               postgres    false    223    222    223         �           2604    16471    productos id_producto    DEFAULT     ~   ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);
 D   ALTER TABLE public.productos ALTER COLUMN id_producto DROP DEFAULT;
       public               postgres    false    228    229    229         �           2604    16415    usuarios id_usuario    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public               postgres    false    218    217    218         l          0    16460    colores 
   TABLE DATA           1   COPY public.colores (color1, color2) FROM stdin;
    public               postgres    false    227       4972.dat j          0    16451    departamentos 
   TABLE DATA           ^   COPY public.departamentos (id_departamento, nombre_empleado, nombre_departamento) FROM stdin;
    public               postgres    false    225       4970.dat e          0    16421    ocupaciones 
   TABLE DATA           P   COPY public.ocupaciones (id_ocupacion, tipo_ocupacion, descripcion) FROM stdin;
    public               postgres    false    220       4965.dat p          0    16476    pedidos 
   TABLE DATA           R   COPY public.pedidos (id_pedido, id_producto, cantidad, importe_total) FROM stdin;
    public               postgres    false    231       4976.dat r          0    16503    personas 
   TABLE DATA           4   COPY public.personas (id, nombre, edad) FROM stdin;
    public               postgres    false    234       4978.dat h          0    16443    precios 
   TABLE DATA           I   COPY public.precios (id_precio, articulo, precio, descuento) FROM stdin;
    public               postgres    false    223       4968.dat n          0    16468 	   productos 
   TABLE DATA           @   COPY public.productos (id_producto, nombre, precio) FROM stdin;
    public               postgres    false    229       4974.dat k          0    16457    tabla1 
   TABLE DATA           >   COPY public.tabla1 (columna1, columna2, columna3) FROM stdin;
    public               postgres    false    226       4971.dat c          0    16412    usuarios 
   TABLE DATA           q   COPY public.usuarios (id_usuario, nombre, apellido1, apellido2, "contraseña", mail, fecha_creacion) FROM stdin;
    public               postgres    false    218       4963.dat f          0    16427    usuarios_ocupaciones 
   TABLE DATA           H   COPY public.usuarios_ocupaciones (id_usuario, id_ocupacion) FROM stdin;
    public               postgres    false    221       4966.dat �           0    0 !   departamentos_id_departamento_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.departamentos_id_departamento_seq', 3, true);
          public               postgres    false    224         �           0    0    ocupaciones_id_ocupacion_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ocupaciones_id_ocupacion_seq', 3, true);
          public               postgres    false    219         �           0    0    pedidos_id_pedido_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.pedidos_id_pedido_seq', 2, true);
          public               postgres    false    230         �           0    0    personas_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.personas_id_seq', 2, true);
          public               postgres    false    233         �           0    0    precios_id_precio_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.precios_id_precio_seq', 3, true);
          public               postgres    false    222         �           0    0    productos_id_producto_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.productos_id_producto_seq', 3, true);
          public               postgres    false    228         �           0    0    usuarios_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 2, true);
          public               postgres    false    217         �           2606    16456     departamentos departamentos_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (id_departamento);
 J   ALTER TABLE ONLY public.departamentos DROP CONSTRAINT departamentos_pkey;
       public                 postgres    false    225         �           2606    16426    ocupaciones ocupaciones_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.ocupaciones
    ADD CONSTRAINT ocupaciones_pkey PRIMARY KEY (id_ocupacion);
 F   ALTER TABLE ONLY public.ocupaciones DROP CONSTRAINT ocupaciones_pkey;
       public                 postgres    false    220         �           2606    16483    pedidos pedidos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id_pedido);
 >   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_pkey;
       public                 postgres    false    231         �           2606    16510    personas personas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.personas DROP CONSTRAINT personas_pkey;
       public                 postgres    false    234         �           2606    16449    precios precios_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.precios
    ADD CONSTRAINT precios_pkey PRIMARY KEY (id_precio);
 >   ALTER TABLE ONLY public.precios DROP CONSTRAINT precios_pkey;
       public                 postgres    false    223         �           2606    16474    productos productos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public                 postgres    false    229         �           2606    16419    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public                 postgres    false    218         �           2606    16484     pedidos pedidos_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);
 J   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_id_producto_fkey;
       public               postgres    false    231    229    4808         �           2606    16435 ;   usuarios_ocupaciones usuarios_ocupaciones_id_ocupacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_ocupaciones
    ADD CONSTRAINT usuarios_ocupaciones_id_ocupacion_fkey FOREIGN KEY (id_ocupacion) REFERENCES public.ocupaciones(id_ocupacion);
 e   ALTER TABLE ONLY public.usuarios_ocupaciones DROP CONSTRAINT usuarios_ocupaciones_id_ocupacion_fkey;
       public               postgres    false    220    221    4802         �           2606    16430 9   usuarios_ocupaciones usuarios_ocupaciones_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_ocupaciones
    ADD CONSTRAINT usuarios_ocupaciones_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);
 c   ALTER TABLE ONLY public.usuarios_ocupaciones DROP CONSTRAINT usuarios_ocupaciones_id_usuario_fkey;
       public               postgres    false    221    4800    218                                                                                                                                                                                                                             4972.dat                                                                                            0000600 0004000 0002000 00000000053 15000042423 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        rojo	verde
amarillo	rosa
blanco	negro
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     4970.dat                                                                                            0000600 0004000 0002000 00000000033 15000042423 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Antonio	A
3	Maria	A
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     4965.dat                                                                                            0000600 0004000 0002000 00000000151 15000042423 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Administrativo	Realización de contabilidad
2	Programador	Realización de Programas Informáticos
\.


                                                                                                                                                                                                                                                                                                                                                                                                                       4976.dat                                                                                            0000600 0004000 0002000 00000000030 15000042423 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	2	100
2	2	3	90
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        4978.dat                                                                                            0000600 0004000 0002000 00000000036 15000042423 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Lourdes	32
2	Ayelen	32
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  4968.dat                                                                                            0000600 0004000 0002000 00000000070 15000042423 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	impresora	100	10
2	raton	30	5
3	ordenador	500	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                        4974.dat                                                                                            0000600 0004000 0002000 00000000054 15000042423 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Impresora	50
2	Raton	30
3	Teclado	70
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    4971.dat                                                                                            0000600 0004000 0002000 00000000027 15000042423 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2	3
4	5	6
7	8	9
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         4963.dat                                                                                            0000600 0004000 0002000 00000000252 15000042423 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Antonio	Perez	Gomez	password	antonioperez@mail.com	2025-04-14 20:56:06.529565
2	Juan	Gonzalez	Rodriguez	password2	juangonzalez@mail.com	2025-04-14 20:56:06.529565
\.


                                                                                                                                                                                                                                                                                                                                                      4966.dat                                                                                            0000600 0004000 0002000 00000000015 15000042423 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2
2	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   restore.sql                                                                                         0000600 0004000 0002000 00000036636 15000042423 0015370 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

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

DROP DATABASE practica2;
--
-- Name: practica2; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE practica2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-AR';


ALTER DATABASE practica2 OWNER TO postgres;

\connect practica2

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: colores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colores (
    color1 character varying(50),
    color2 character varying(50)
);


ALTER TABLE public.colores OWNER TO postgres;

--
-- Name: departamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamentos (
    id_departamento integer NOT NULL,
    nombre_empleado character varying(50),
    nombre_departamento character varying(50)
);


ALTER TABLE public.departamentos OWNER TO postgres;

--
-- Name: departamentos_id_departamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departamentos_id_departamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departamentos_id_departamento_seq OWNER TO postgres;

--
-- Name: departamentos_id_departamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departamentos_id_departamento_seq OWNED BY public.departamentos.id_departamento;


--
-- Name: ocupaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ocupaciones (
    id_ocupacion integer NOT NULL,
    tipo_ocupacion character varying(100) NOT NULL,
    descripcion character varying(300) NOT NULL
);


ALTER TABLE public.ocupaciones OWNER TO postgres;

--
-- Name: ocupaciones_id_ocupacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ocupaciones_id_ocupacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ocupaciones_id_ocupacion_seq OWNER TO postgres;

--
-- Name: ocupaciones_id_ocupacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ocupaciones_id_ocupacion_seq OWNED BY public.ocupaciones.id_ocupacion;


--
-- Name: pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedidos (
    id_pedido integer NOT NULL,
    id_producto integer,
    cantidad integer,
    importe_total integer,
    CONSTRAINT pedidos_cantidad_check CHECK ((cantidad > 0)),
    CONSTRAINT pedidos_importe_total_check CHECK ((importe_total > 0))
);


ALTER TABLE public.pedidos OWNER TO postgres;

--
-- Name: pedidos_id_pedido_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedidos_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pedidos_id_pedido_seq OWNER TO postgres;

--
-- Name: pedidos_id_pedido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedidos_id_pedido_seq OWNED BY public.pedidos.id_pedido;


--
-- Name: personas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personas (
    id integer NOT NULL,
    nombre text NOT NULL,
    edad integer
);


ALTER TABLE public.personas OWNER TO postgres;

--
-- Name: personas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personas_id_seq OWNER TO postgres;

--
-- Name: personas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personas_id_seq OWNED BY public.personas.id;


--
-- Name: precios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.precios (
    id_precio integer NOT NULL,
    articulo character varying(300) NOT NULL,
    precio integer,
    descuento integer,
    CONSTRAINT precios_precio_check CHECK ((precio > 0))
);


ALTER TABLE public.precios OWNER TO postgres;

--
-- Name: precios_id_precio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.precios_id_precio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.precios_id_precio_seq OWNER TO postgres;

--
-- Name: precios_id_precio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.precios_id_precio_seq OWNED BY public.precios.id_precio;


--
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre character varying(50),
    precio integer,
    CONSTRAINT productos_precio_check CHECK ((precio > 0))
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- Name: producto_cantidad_pedida; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.producto_cantidad_pedida AS
 SELECT pr.nombre,
    pe.cantidad
   FROM (public.productos pr
     JOIN public.pedidos pe ON ((pr.id_producto = pe.id_producto)));


ALTER VIEW public.producto_cantidad_pedida OWNER TO postgres;

--
-- Name: productos_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productos_id_producto_seq OWNER TO postgres;

--
-- Name: productos_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;


--
-- Name: tabla1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tabla1 (
    columna1 character varying(50),
    columna2 character varying(50),
    columna3 character varying(50)
);


ALTER TABLE public.tabla1 OWNER TO postgres;

--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido1 character varying(100) NOT NULL,
    apellido2 character varying(100) NOT NULL,
    "contraseña" character varying(100) NOT NULL,
    mail character varying(200) NOT NULL,
    fecha_creacion timestamp without time zone NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_usuario_seq OWNER TO postgres;

--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;


--
-- Name: usuarios_ocupaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios_ocupaciones (
    id_usuario integer,
    id_ocupacion integer
);


ALTER TABLE public.usuarios_ocupaciones OWNER TO postgres;

--
-- Name: departamentos id_departamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos ALTER COLUMN id_departamento SET DEFAULT nextval('public.departamentos_id_departamento_seq'::regclass);


--
-- Name: ocupaciones id_ocupacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ocupaciones ALTER COLUMN id_ocupacion SET DEFAULT nextval('public.ocupaciones_id_ocupacion_seq'::regclass);


--
-- Name: pedidos id_pedido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos ALTER COLUMN id_pedido SET DEFAULT nextval('public.pedidos_id_pedido_seq'::regclass);


--
-- Name: personas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personas ALTER COLUMN id SET DEFAULT nextval('public.personas_id_seq'::regclass);


--
-- Name: precios id_precio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precios ALTER COLUMN id_precio SET DEFAULT nextval('public.precios_id_precio_seq'::regclass);


--
-- Name: productos id_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);


--
-- Name: usuarios id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);


--
-- Data for Name: colores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.colores (color1, color2) FROM stdin;
\.
COPY public.colores (color1, color2) FROM '$$PATH$$/4972.dat';

--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departamentos (id_departamento, nombre_empleado, nombre_departamento) FROM stdin;
\.
COPY public.departamentos (id_departamento, nombre_empleado, nombre_departamento) FROM '$$PATH$$/4970.dat';

--
-- Data for Name: ocupaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ocupaciones (id_ocupacion, tipo_ocupacion, descripcion) FROM stdin;
\.
COPY public.ocupaciones (id_ocupacion, tipo_ocupacion, descripcion) FROM '$$PATH$$/4965.dat';

--
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedidos (id_pedido, id_producto, cantidad, importe_total) FROM stdin;
\.
COPY public.pedidos (id_pedido, id_producto, cantidad, importe_total) FROM '$$PATH$$/4976.dat';

--
-- Data for Name: personas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personas (id, nombre, edad) FROM stdin;
\.
COPY public.personas (id, nombre, edad) FROM '$$PATH$$/4978.dat';

--
-- Data for Name: precios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.precios (id_precio, articulo, precio, descuento) FROM stdin;
\.
COPY public.precios (id_precio, articulo, precio, descuento) FROM '$$PATH$$/4968.dat';

--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id_producto, nombre, precio) FROM stdin;
\.
COPY public.productos (id_producto, nombre, precio) FROM '$$PATH$$/4974.dat';

--
-- Data for Name: tabla1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tabla1 (columna1, columna2, columna3) FROM stdin;
\.
COPY public.tabla1 (columna1, columna2, columna3) FROM '$$PATH$$/4971.dat';

--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id_usuario, nombre, apellido1, apellido2, "contraseña", mail, fecha_creacion) FROM stdin;
\.
COPY public.usuarios (id_usuario, nombre, apellido1, apellido2, "contraseña", mail, fecha_creacion) FROM '$$PATH$$/4963.dat';

--
-- Data for Name: usuarios_ocupaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios_ocupaciones (id_usuario, id_ocupacion) FROM stdin;
\.
COPY public.usuarios_ocupaciones (id_usuario, id_ocupacion) FROM '$$PATH$$/4966.dat';

--
-- Name: departamentos_id_departamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departamentos_id_departamento_seq', 3, true);


--
-- Name: ocupaciones_id_ocupacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ocupaciones_id_ocupacion_seq', 3, true);


--
-- Name: pedidos_id_pedido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedidos_id_pedido_seq', 2, true);


--
-- Name: personas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personas_id_seq', 2, true);


--
-- Name: precios_id_precio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.precios_id_precio_seq', 3, true);


--
-- Name: productos_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_producto_seq', 3, true);


--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 2, true);


--
-- Name: departamentos departamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (id_departamento);


--
-- Name: ocupaciones ocupaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ocupaciones
    ADD CONSTRAINT ocupaciones_pkey PRIMARY KEY (id_ocupacion);


--
-- Name: pedidos pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id_pedido);


--
-- Name: personas personas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (id);


--
-- Name: precios precios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precios
    ADD CONSTRAINT precios_pkey PRIMARY KEY (id_precio);


--
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- Name: pedidos pedidos_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);


--
-- Name: usuarios_ocupaciones usuarios_ocupaciones_id_ocupacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_ocupaciones
    ADD CONSTRAINT usuarios_ocupaciones_id_ocupacion_fkey FOREIGN KEY (id_ocupacion) REFERENCES public.ocupaciones(id_ocupacion);


--
-- Name: usuarios_ocupaciones usuarios_ocupaciones_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_ocupaciones
    ADD CONSTRAINT usuarios_ocupaciones_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  