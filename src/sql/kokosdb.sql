toc.dat                                                                                             0000600 0004000 0002000 00000042221 14750053441 0014443 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   3    )                }            Kokos_Pizza    16.2    16.2 >    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         C           1262    40960    Kokos_Pizza    DATABASE     �   CREATE DATABASE "Kokos_Pizza" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "Kokos_Pizza";
                postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false         D           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4         �            1259    41104    alitas    TABLE     �   CREATE TABLE public.alitas (
    alitas_id integer NOT NULL,
    alitas_nombre text NOT NULL,
    "alitas_tamaño" text NOT NULL,
    alitas_precio double precision NOT NULL,
    alitas_ingredientes text NOT NULL
);
    DROP TABLE public.alitas;
       public         heap    postgres    false    4         �            1259    49267    boneless    TABLE     �   CREATE TABLE public.boneless (
    boneless_id integer NOT NULL,
    boneless_nombre text NOT NULL,
    "boneless_tamaño" text NOT NULL,
    boneless_precio double precision NOT NULL,
    boneless_ingredientes text NOT NULL
);
    DROP TABLE public.boneless;
       public         heap    postgres    false    4         �            1259    49467    clientes    TABLE     �   CREATE TABLE public.clientes (
    cliente_id integer NOT NULL,
    cliente_nombre text,
    cliente_telefono text,
    cliente_direccion text
);
    DROP TABLE public.clientes;
       public         heap    postgres    false    4         �            1259    49466    clientes_cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_cliente_id_seq;
       public          postgres    false    4    229         E           0    0    clientes_cliente_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_cliente_id_seq OWNED BY public.clientes.cliente_id;
          public          postgres    false    228         �            1259    41118    extras    TABLE     �   CREATE TABLE public.extras (
    extra_id integer NOT NULL,
    extra_nombre text NOT NULL,
    extra_precio double precision NOT NULL,
    extra_ingredientes text NOT NULL
);
    DROP TABLE public.extras;
       public         heap    postgres    false    4         �            1259    41033    ingredientes    TABLE     p   CREATE TABLE public.ingredientes (
    ingredietes_id integer NOT NULL,
    ingrediente_nombre text NOT NULL
);
     DROP TABLE public.ingredientes;
       public         heap    postgres    false    4         �            1259    41025 
   inventario    TABLE     �   CREATE TABLE public.inventario (
    inventario_id integer NOT NULL,
    inventario_nombre text NOT NULL,
    inventario_precio_unitario double precision NOT NULL,
    inventario_cantidad double precision NOT NULL
);
    DROP TABLE public.inventario;
       public         heap    postgres    false    4         �            1259    41024    inventario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.inventario_id_seq;
       public          postgres    false    4    218         F           0    0    inventario_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.inventario_id_seq OWNED BY public.inventario.inventario_id;
          public          postgres    false    217         �            1259    41125    papas    TABLE     �   CREATE TABLE public.papas (
    papas_id integer NOT NULL,
    papas_nombre text NOT NULL,
    papas_precio double precision NOT NULL,
    papas_ingredientes text NOT NULL
);
    DROP TABLE public.papas;
       public         heap    postgres    false    4         �            1259    49457    pedidos    TABLE       CREATE TABLE public.pedidos (
    id integer NOT NULL,
    pedido_id integer,
    cliente_id integer,
    pedido_descripcion text,
    pedido_precio double precision,
    pedido_precio_total double precision,
    fecha timestamp without time zone DEFAULT now()
);
    DROP TABLE public.pedidos;
       public         heap    postgres    false    4         �            1259    49456    pedidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pedidos_id_seq;
       public          postgres    false    4    227         G           0    0    pedidos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pedidos_id_seq OWNED BY public.pedidos.id;
          public          postgres    false    226         �            1259    41111    pizzas    TABLE     �   CREATE TABLE public.pizzas (
    pizza_id integer NOT NULL,
    pizza_nombre text NOT NULL,
    "pizza_tamaño" text NOT NULL,
    pizza_precio integer NOT NULL,
    pizza_ingredientes text NOT NULL,
    pizza_orilla text NOT NULL
);
    DROP TABLE public.pizzas;
       public         heap    postgres    false    4         �            1259    49274 	   refrescos    TABLE     �   CREATE TABLE public.refrescos (
    refresco_id integer NOT NULL,
    refresco_nombre text NOT NULL,
    "refresco_tamaño" text NOT NULL,
    refresco_precio double precision NOT NULL
);
    DROP TABLE public.refrescos;
       public         heap    postgres    false    4         �            1259    49476 	   secuencia    TABLE     U   CREATE TABLE public.secuencia (
    id integer NOT NULL,
    secuencia_id integer
);
    DROP TABLE public.secuencia;
       public         heap    postgres    false    4         �            1259    49475    secuencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.secuencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.secuencia_id_seq;
       public          postgres    false    4    231         H           0    0    secuencia_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.secuencia_id_seq OWNED BY public.secuencia.id;
          public          postgres    false    230         �            1259    41009    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    usuario_id integer NOT NULL,
    usuario_nombre text NOT NULL,
    usuario_apellidos text NOT NULL,
    admin boolean NOT NULL,
    "contraseña" text NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false    4         �            1259    41008    usuarios_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_usuario_id_seq;
       public          postgres    false    4    216         I           0    0    usuarios_usuario_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_usuario_id_seq OWNED BY public.usuarios.usuario_id;
          public          postgres    false    215         �           2604    49470    clientes cliente_id    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN cliente_id SET DEFAULT nextval('public.clientes_cliente_id_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN cliente_id DROP DEFAULT;
       public          postgres    false    228    229    229         �           2604    41028    inventario inventario_id    DEFAULT     y   ALTER TABLE ONLY public.inventario ALTER COLUMN inventario_id SET DEFAULT nextval('public.inventario_id_seq'::regclass);
 G   ALTER TABLE public.inventario ALTER COLUMN inventario_id DROP DEFAULT;
       public          postgres    false    218    217    218         �           2604    49460 
   pedidos id    DEFAULT     h   ALTER TABLE ONLY public.pedidos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_id_seq'::regclass);
 9   ALTER TABLE public.pedidos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227         �           2604    49479    secuencia id    DEFAULT     l   ALTER TABLE ONLY public.secuencia ALTER COLUMN id SET DEFAULT nextval('public.secuencia_id_seq'::regclass);
 ;   ALTER TABLE public.secuencia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231         �           2604    41012    usuarios usuario_id    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN usuario_id SET DEFAULT nextval('public.usuarios_usuario_id_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN usuario_id DROP DEFAULT;
       public          postgres    false    216    215    216         2          0    41104    alitas 
   TABLE DATA           p   COPY public.alitas (alitas_id, alitas_nombre, "alitas_tamaño", alitas_precio, alitas_ingredientes) FROM stdin;
    public          postgres    false    220       4914.dat 6          0    49267    boneless 
   TABLE DATA           |   COPY public.boneless (boneless_id, boneless_nombre, "boneless_tamaño", boneless_precio, boneless_ingredientes) FROM stdin;
    public          postgres    false    224       4918.dat ;          0    49467    clientes 
   TABLE DATA           c   COPY public.clientes (cliente_id, cliente_nombre, cliente_telefono, cliente_direccion) FROM stdin;
    public          postgres    false    229       4923.dat 4          0    41118    extras 
   TABLE DATA           Z   COPY public.extras (extra_id, extra_nombre, extra_precio, extra_ingredientes) FROM stdin;
    public          postgres    false    222       4916.dat 1          0    41033    ingredientes 
   TABLE DATA           J   COPY public.ingredientes (ingredietes_id, ingrediente_nombre) FROM stdin;
    public          postgres    false    219       4913.dat 0          0    41025 
   inventario 
   TABLE DATA           w   COPY public.inventario (inventario_id, inventario_nombre, inventario_precio_unitario, inventario_cantidad) FROM stdin;
    public          postgres    false    218       4912.dat 5          0    41125    papas 
   TABLE DATA           Y   COPY public.papas (papas_id, papas_nombre, papas_precio, papas_ingredientes) FROM stdin;
    public          postgres    false    223       4917.dat 9          0    49457    pedidos 
   TABLE DATA           {   COPY public.pedidos (id, pedido_id, cliente_id, pedido_descripcion, pedido_precio, pedido_precio_total, fecha) FROM stdin;
    public          postgres    false    227       4921.dat 3          0    41111    pizzas 
   TABLE DATA           y   COPY public.pizzas (pizza_id, pizza_nombre, "pizza_tamaño", pizza_precio, pizza_ingredientes, pizza_orilla) FROM stdin;
    public          postgres    false    221       4915.dat 7          0    49274 	   refrescos 
   TABLE DATA           f   COPY public.refrescos (refresco_id, refresco_nombre, "refresco_tamaño", refresco_precio) FROM stdin;
    public          postgres    false    225       4919.dat =          0    49476 	   secuencia 
   TABLE DATA           5   COPY public.secuencia (id, secuencia_id) FROM stdin;
    public          postgres    false    231       4925.dat .          0    41009    usuarios 
   TABLE DATA           g   COPY public.usuarios (usuario_id, usuario_nombre, usuario_apellidos, admin, "contraseña") FROM stdin;
    public          postgres    false    216       4910.dat J           0    0    clientes_cliente_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.clientes_cliente_id_seq', 23, true);
          public          postgres    false    228         K           0    0    inventario_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.inventario_id_seq', 14, true);
          public          postgres    false    217         L           0    0    pedidos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pedidos_id_seq', 74, true);
          public          postgres    false    226         M           0    0    secuencia_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.secuencia_id_seq', 1, true);
          public          postgres    false    230         N           0    0    usuarios_usuario_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_usuario_id_seq', 1, true);
          public          postgres    false    215         �           2606    41110    alitas alitas_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.alitas
    ADD CONSTRAINT alitas_pkey PRIMARY KEY (alitas_id);
 <   ALTER TABLE ONLY public.alitas DROP CONSTRAINT alitas_pkey;
       public            postgres    false    220         �           2606    49273    boneless boneless_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.boneless
    ADD CONSTRAINT boneless_pkey PRIMARY KEY (boneless_id);
 @   ALTER TABLE ONLY public.boneless DROP CONSTRAINT boneless_pkey;
       public            postgres    false    224         �           2606    49474    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (cliente_id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    229         �           2606    41124    extras extras_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.extras
    ADD CONSTRAINT extras_pkey PRIMARY KEY (extra_id);
 <   ALTER TABLE ONLY public.extras DROP CONSTRAINT extras_pkey;
       public            postgres    false    222         �           2606    41039    ingredientes ingredientes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ingredientes
    ADD CONSTRAINT ingredientes_pkey PRIMARY KEY (ingredietes_id);
 H   ALTER TABLE ONLY public.ingredientes DROP CONSTRAINT ingredientes_pkey;
       public            postgres    false    219         �           2606    41032    inventario inventario_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (inventario_id);
 D   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_pkey;
       public            postgres    false    218         �           2606    41131    papas papas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.papas
    ADD CONSTRAINT papas_pkey PRIMARY KEY (papas_id);
 :   ALTER TABLE ONLY public.papas DROP CONSTRAINT papas_pkey;
       public            postgres    false    223         �           2606    49465    pedidos pedidos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_pkey;
       public            postgres    false    227         �           2606    41117    pizzas pizzas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pizzas
    ADD CONSTRAINT pizzas_pkey PRIMARY KEY (pizza_id);
 <   ALTER TABLE ONLY public.pizzas DROP CONSTRAINT pizzas_pkey;
       public            postgres    false    221         �           2606    49280    refrescos refrescos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.refrescos
    ADD CONSTRAINT refrescos_pkey PRIMARY KEY (refresco_id);
 B   ALTER TABLE ONLY public.refrescos DROP CONSTRAINT refrescos_pkey;
       public            postgres    false    225         �           2606    49481    secuencia secuencia_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.secuencia
    ADD CONSTRAINT secuencia_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.secuencia DROP CONSTRAINT secuencia_pkey;
       public            postgres    false    231         �           2606    41016    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (usuario_id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    216                                                                                                                                                                                                                                                                                                                                                                                       4914.dat                                                                                            0000600 0004000 0002000 00000001205 14750053441 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	alitas bbq	sencillo	75	alas de pollo, salsa bbq
2	alitas bbq	docena	150	alas de pollo, salsa bbq
3	alitas bbq picosa	sencillo	75	alas de pollo, salsa bbq picosa
4	alitas bbq picosa	docena	150	alas de pollo, salsa bbq picosa
5	alitas picosa	sencillo	75	alas de pollo, salsa picosa
6	alitas picosa	docena	150	alas de pollo, salsa picosa
7	alitas mango habanero	sencillo	75	alas de pollo, salsa mango habanero
8	alitas mango habanero	docena	150	alas de pollo, salsa mango habanero
9	alitas tamarindo habanero	sencillo	75	alas de pollo, salsa tamarindo habanero
10	alitas tamarindo habanero	docena	150	alas de pollo, salsa tamarindo habanero
\.


                                                                                                                                                                                                                                                                                                                                                                                           4918.dat                                                                                            0000600 0004000 0002000 00000000355 14750053441 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	boneless bbq	sencillo	110	bbq
2	boneless bbq picosa	sencillo	110	bbq picosa
3	boneless picosa	sencillo	110	picosa
5	boneless mango habanero	sencillo	110	mango habanero
4	boneless tamarindo habanero	sencillo	110	tamarindo habanero
\.


                                                                                                                                                                                                                                                                                   4923.dat                                                                                            0000600 0004000 0002000 00000001260 14750053441 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Ismael	7751241012	na
2	jose	775678394	comer aquí
3	Yael	6673467527	Colonia colindante con benito juarez
4	Ruben	4567899876	Col condinante con juarez
5	Mario	771354999	Calle prof. Lugo
6	Mario	7751025548	calle allende 319
7	Abdiel	7751450142	allende 719
8	Ruben	7821840309	na
9	Ruben	7712584686	na
10	Mario	7751246584	na
11	Ruben	772346573	Calle revolucion n4
12	Abdiel	774563420	Av. reforma 24
13	Ismael	563728674	Auditorio ESTL
14	Maria Renata	4588713545	ESTl
15	Diego	7731704968	Col. Allende
16	Dr. Paty	757411	ESTl
17	Ivan	784125486	ESTl
18	Matilde	222454568	ESTl
19	Johan	5524729348	ESTl
20			
21	Axel	3123154	ESTl
22	Mar	7713549396	av. colosio
23	juan	773896703	calle juarez
\.


                                                                                                                                                                                                                                                                                                                                                4916.dat                                                                                            0000600 0004000 0002000 00000000005 14750053441 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4913.dat                                                                                            0000600 0004000 0002000 00000000005 14750053441 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4912.dat                                                                                            0000600 0004000 0002000 00000000075 14750053441 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	cocacola1L	23	17
6	cocacola2L	28	17
10	sprite3L	32	24
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                   4917.dat                                                                                            0000600 0004000 0002000 00000000120 14750053441 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	papas francesa	45	papas
2	papas gajo	45	papas
3	papas onduladas	45	papas
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                4921.dat                                                                                            0000600 0004000 0002000 00000011210 14750053441 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	papas onduladas sencilla	45	875	2024-05-07 10:08:52.876107
2	1	1	tamarindo habanero docena	150	875	2024-05-07 10:08:52.876107
3	1	1	kokos rectangular	370	875	2024-05-07 10:08:52.876107
4	1	1	carnes frias manchego chica	170	875	2024-05-07 10:08:52.876107
5	1	1	delaware 1L	30	875	2024-05-07 10:08:52.876107
6	1	1	bbq picosa sencillo	110	875	2024-05-07 10:08:52.876107
7	2	2	papas francesa sencilla	45	135	2024-05-07 23:05:56.860664
8	2	2	papas onduladas sencilla	45	135	2024-05-07 23:05:56.860664
9	2	2	papas gajo sencilla	45	135	2024-05-07 23:05:56.860664
10	3	3	papas francesa sencilla	45	90	2024-05-07 23:29:37.80145
11	3	3	papas onduladas sencilla	45	90	2024-05-07 23:29:37.80145
12	4	4	papas onduladas sencilla	45	90	2024-05-07 23:31:19.495873
13	4	4	papas gajo sencilla	45	90	2024-05-07 23:31:19.495873
14	5	5	mexicana rectangular	370	775	2024-05-09 01:18:12.123137
15	5	5	papas francesa sencilla	45	775	2024-05-09 01:18:12.123137
16	5	5	sidral mundet 2.5L	40	775	2024-05-09 01:18:12.123137
17	5	5	carnes frias manchego chica	170	775	2024-05-09 01:18:12.123137
18	5	5	alitas bbq docena	150	775	2024-05-09 01:18:12.123137
19	6	6	kokos crema grande	260	610	2024-05-09 01:40:06.017765
20	6	6	alitas bbq picosa docena	150	610	2024-05-09 01:40:06.017765
21	6	6	boneless mango habanero sencillo	110	610	2024-05-09 01:40:06.017765
22	6	6	papas francesa sencilla	45	610	2024-05-09 01:40:06.017765
23	6	6	papas gajo sencilla	45	610	2024-05-09 01:40:06.017765
24	7	7	hawaiana manchego mediana	210	395	2024-05-09 01:42:54.163456
25	7	7	alitas bbq picosa sencillo	75	395	2024-05-09 01:42:54.163456
26	7	7	boneless picosa sencillo	110	395	2024-05-09 01:42:54.163456
27	8	8	hawaiana grande	240	350	2024-05-09 04:01:09.558699
28	8	8	boneless picosa sencillo	110	350	2024-05-09 04:01:09.558699
29	9	9	alitas picosa sencillo	75	565	2024-05-09 08:35:59.878168
30	9	9	boneless picosa sencillo	110	565	2024-05-09 08:35:59.878168
31	9	9	papas francesa sencilla	45	565	2024-05-09 08:35:59.878168
32	9	9	delaware 1L	30	565	2024-05-09 08:35:59.878168
33	9	9	papas gajo sencilla	45	565	2024-05-09 08:35:59.878168
34	9	9	hawaiana crema grande	260	565	2024-05-09 08:35:59.878168
35	10	10	hawaiana manchego chica	170	290	2024-05-09 09:26:19.387932
36	10	10	papas gajo sencilla	45	290	2024-05-09 09:26:19.387932
37	10	10	papas onduladas sencilla	45	290	2024-05-09 09:26:19.387932
38	10	10	delaware 1L	30	290	2024-05-09 09:26:19.387932
39	11	11	hawaiana individual	120	120	2024-05-09 11:45:51.727327
40	12	12	papas francesa sencilla	45	45	2024-05-09 11:50:17.572328
41	13	13	hawaiana manchego grande	260	765	2024-05-09 14:25:36.201006
42	13	13	alitas bbq docena	150	765	2024-05-09 14:25:36.201006
43	13	13	mexicana jumbo	310	765	2024-05-09 14:25:36.201006
44	13	13	papas francesa sencilla	45	765	2024-05-09 14:25:36.201006
45	14	14	hawaiana manchego mediana	210	330	2024-05-10 14:19:12.852374
46	14	14	cocacola 3L	45	330	2024-05-10 14:19:12.852374
47	14	14	alitas bbq sencillo	75	330	2024-05-10 14:19:12.852374
48	15	15	chingona jumbo	310	455	2024-05-10 14:27:53.48351
49	15	15	cocacola 2L	35	455	2024-05-10 14:27:53.48351
50	15	15	boneless bbq picosa sencillo	110	455	2024-05-10 14:27:53.48351
51	16	16	alitas bbq sencillo	75	140	2024-05-10 14:33:29.067322
52	16	16	papas onduladas sencilla	45	140	2024-05-10 14:33:29.067322
53	16	16	cocacola 600ml	20	140	2024-05-10 14:33:29.067322
54	17	17	boneless bbq picosa sencillo	110	495	2024-05-10 14:40:34.87944
55	17	17	papas francesa sencilla	45	495	2024-05-10 14:40:34.87944
56	17	17	cocacola 1L	30	495	2024-05-10 14:40:34.87944
57	17	17	kokos jumbo	310	495	2024-05-10 14:40:34.87944
58	18	18	kokos individual	120	200	2024-05-10 14:50:16.777097
59	18	18	papas francesa sencilla	45	200	2024-05-10 14:50:16.777097
60	18	18	delaware 2L	35	200	2024-05-10 14:50:16.777097
61	19	19	boneless picosa sencillo	110	155	2024-05-10 15:01:10.495838
62	19	19	papas francesa sencilla	45	155	2024-05-10 15:01:10.495838
63	20	20	papas francesa sencilla	45	45	2024-05-10 15:05:15.682023
64	21	21	boneless tamarindo habanero sencillo	110	340	2024-05-10 15:09:42.084133
65	21	21	fanta 600ml	20	340	2024-05-10 15:09:42.084133
66	21	21	caprichosa manchego mediana	210	340	2024-05-10 15:09:42.084133
67	22	22	haw cf esp  jumbo	350	1620	2024-05-19 19:07:11.529152
68	22	22	mex kok mexi  jumbo	350	1620	2024-05-19 19:07:11.529152
69	22	22	haw capri qso mexi  rectangular	430	1620	2024-05-19 19:07:11.529152
70	22	22	haw kok  mediana	210	1620	2024-05-19 19:07:11.529152
71	22	22	esp cf  manchego grande	280	1620	2024-05-19 19:07:11.529152
72	23	23	papas onduladas sencilla	45	135	2024-05-23 22:34:30.109437
73	23	23	papas gajo sencilla	45	135	2024-05-23 22:34:30.109437
74	23	23	papas francesa sencilla	45	135	2024-05-23 22:34:30.109437
\.


                                                                                                                                                                                                                                                                                                                                                                                        4915.dat                                                                                            0000600 0004000 0002000 00000040315 14750053441 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	hawaiana	individual	120	masa, salsa de tomate, queso, jamon, piña	sencilla
48	mexicana	chica	170	masa, salsa de tomate, queso, frijoles, cebolla, chorizo, chiles, queso crema	crema
4	hawaiana	chica	150	masa, salsa de tomate, queso, jamon, piña	sencilla
6	hawaiana	chica	170	masa, salsa de tomate, queso, jamon, piña, queso crema	crema
5	hawaiana	chica	170	masa, salsa de tomate, queso, jamon, piña, queso manchego	manchego
7	hawaiana	mediana	190	masa, salsa de tomate, queso, jamon, piña	sencilla
8	hawaiana	mediana	210	masa, salsa de tomate, queso, jamon, piña, queso manchego	manchego
9	hawaiana	mediana	210	masa, salsa de tomate, queso, jamon, piña, queso crema	crema
49	mexicana	mediana	190	masa, salsa de tomate, queso, frijoles, cebolla, chorizo, chiles	sencilla
10	hawaiana	grande	240	masa, salsa de tomate, queso, jamon, piña	sencilla
11	hawaiana	grande	260	masa, salsa de tomate, queso, jamon, piña, queso manchego	manchego
12	hawaiana	grande	260	masa, salsa de tomate, queso, jamon, piña, queso crema	crema
13	hawaiana	jumbo	310	masa, salsa de tomate, queso, jamon, piña	sencilla
14	hawaiana	rectangular	370	masa, salsa de tomate, queso, jamon, piña	sencilla
2	hawaiana	individual	140	masa, salsa de tomate, queso, jamon, piña, queso manchego	manchego
3	hawaiana	individual	140	masa, salsa de tomate, queso, jamon, piña, queso crema	crema
43	mexicana	individual	120	masa, salsa de tomate, queso, frijoles, cebolla, chorizo, chiles	sencilla
44	mexicana	individual	140	masa, salsa de tomate, queso, frijoles, cebolla, chorizo, chiles, queso manchego	manchego
45	mexicana	individual	140	masa, salsa de tomate, queso, frijoles, cebolla, chorizo, chiles, queso crema	crema
46	mexicana	chica	150	masa, salsa de tomate, queso, frijoles, cebolla, chorizo, chiles	sencilla
47	mexicana	chica	170	masa, salsa de tomate, queso, frijoles, cebolla, chorizo, chiles, queso manchego	manchego
50	mexicana	mediana	210	masa, salsa de tomate, queso, frijoles, cebolla, chorizo, chiles, queso manchego	manchego
51	mexicana	mediana	210	masa, salsa de tomate, queso, frijoles, cebolla, chorizo, chiles, queso crema	crema
55	mexicana	jumbo	310	masa, salsa de tomate, queso, frijoles, cebolla, chorizo, chiles	sencilla
56	mexicana	rectangular	370	masa, salsa de tomate, queso, frijoles, cebolla, chorizo, chiles	sencilla
57	especial	individual	120	masa, salsa de tomate, queso, cebolla, pimiento, champiñon, pepperoni	sencilla
58	especial	individual	140	masa, salsa de tomate, queso, cebolla, pimiento, champiñon, pepperoni, queso manchego	manchego
59	especial	individual	140	masa, salsa de tomate, queso, cebolla, pimiento, champiñon, pepperoni, queso crema	crema
60	especial	chica	150	masa, salsa de tomate, queso, cebolla, pimiento, champiñon, pepperoni	sencilla
29	pepperoni	individual	120	masa, salsa de tomate, queso, pepperoni	sencilla
30	pepperoni	individual	140	masa, salsa de tomate, queso, pepperoni, queso manchego	manchego
31	pepperoni	individual	140	masa, salsa de tomate, queso, pepperoni, queso crema	crema
32	pepperoni	chica	140	masa, salsa de tomate, queso, pepperoni	sencilla
33	pepperoni	chica	170	masa, salsa de tomate, queso, pepperoni, queso manchego	manchego
34	pepperoni	chica	170	masa, salsa de tomate, queso, pepperoni, queso crema	crema
35	pepperoni	mediana	190	masa, salsa de tomate, queso, pepperoni	sencilla
36	pepperoni	mediana	210	masa, salsa de tomate, queso, pepperoni, queso manchego	manchego
37	pepperoni	mediana	210	masa, salsa de tomate, queso, pepperoni, queso crema	crema
38	pepperoni	grande	240	masa, salsa de tomate, queso, pepperoni	sencilla
39	pepperoni	grande	260	masa, salsa de tomate, queso, pepperoni, queso manchego	manchego
40	pepperoni	grande	260	masa, salsa de tomate, queso, pepperoni, queso crema	crema
41	pepperoni	jumbo	310	masa, salsa de tomate, queso, pepperoni	sencilla
42	pepperoni	rectangular	370	masa, salsa de tomate, queso, pepperoni	sencilla
52	mexicana	grande	240	masa, salsa de tomate, queso, frijoles, cebolla, chorizo, chiles	sencilla
53	mexicana	grande	260	masa, salsa de tomate, queso, frijoles, cebolla, chorizo, chiles, queso manchego	manchego
54	mexicana	grande	260	masa, salsa de tomate, queso, frijoles, cebolla, chorizo, chiles, queso crema	crema
61	especial	chica	170	masa, salsa de tomate, queso, cebolla, pimiento, champiñon,  pepperoni, queso manchego	manchego
62	especial	chica	170	masa, salsa de tomate, queso, cebolla, pimiento, champiñon, pepperoni, queso crema	crema
63	especial	mediana	190	masa, salsa de tomate, queso, cebolla, pimiento, pepperoni, champiñon	sencilla
71	kokos	individual	120	masa, salsa de tomate, queso, champiñon, pepperoni, jamon	sencilla
72	kokos	individual	140	masa, salsa de tomate, queso, champiñon, pepperoni, jamon, queso manchego	manchego
73	kokos	individual	140	masa, salsa de tomate, queso, champiñon, pepperoni, jamon, queso crema	crema
74	kokos	chica	150	masa, salsa de tomate, queso, champiñon, pepperoni, jamon	sencilla
75	kokos	chica	170	masa, salsa de tomate, queso, champiñon, pepperoni, jamon, queso manchego	manchego
76	kokos	chica	170	masa, salsa de tomate, queso, champiñon, pepperoni, jamon, queso crema	crema
78	kokos	mediana	210	masa, salsa de tomate, queso, champiñon, pepperoni, jamon, queso mancheo	manchego
79	kokos	mediana	210	masa, salsa de tomate, queso, champiñon, pepperoni, jamon, queso crema	crema
81	kokos	grande	260	masa, salsa de tomate, queso, champiñon, pepperoni, jamon, queso manchego	manchego
82	kokos	grande	260	masa, salsa de tomate, queso, champiñon, pepperoni, jamon, queso crema	crema
83	kokos	jumbo	310	masa, salsa de tomate, queso, champiñon, pepperoni, jamon	sencilla
84	kokos	rectangular	370	masa, salsa de tomate, queso, champiñon, pepperoni, jamon	sencilla
85	chingona	individual	120	masa, salsa de tomate, queso, jamon, salchicha, chorizo, chiles, champiñon, cebolla	sencilla
86	chingona	individual	140	masa, salsa de tomate, queso, jamon, salchicha, chorizo, chiles, champiñon, cebolla, queso manchego	manchego
87	chingona	individual	140	masa, salsa de tomate, queso, jamon, salchicha, chorizo, chiles, champiñon, cebolla, queso crema	crema
88	chingona	chica	150	masa, salsa de tomate, queso, jamon, salchicha, chorizo, chiles, champiñon, cebolla	sencilla
89	chingona	chica	170	masa, salsa de tomate, queso, jamon, salchicha, chorizo, chiles, champiñon, cebolla, queso manchego	manchego
90	chingona	chica	170	masa, salsa de tomate, queso, jamon, salchicha, chorizo, chiles, champiñon, cebolla, queso crema	crema
91	chingona	mediana	190	masa, salsa de tomate, queso, jamon, salchicha, chorizo, chiles, champiñon, cebolla	sencilla
92	chingona	mediana	210	masa, salsa de tomate, queso, jamon, salchicha, chorizo, chiles, champiñon, cebolla, queso manchego	manchego
93	chingona	mediana	210	masa, salsa de tomate, queso, jamon, salchicha, chorizo, chiles, champiñon, cebolla, queso crema	crema
94	chingona	grande	240	masa, salsa de tomate, queso, jamon, salchicha, chorizo, chiles, champiñon, cebolla	sencilla
96	chingona	grande	260	masa, salsa de tomate, queso, jamon, salchicha, chorizo, chiles, champiñon, cebolla, queso crema	crema
97	chingona	jumbo	310	masa, salsa de tomate, queso, jamon, salchicha, chorizo, chiles, champiñon, cebolla	sencilla
98	chingona	rectangular	370	masa, salsa de tomate, queso, jamon, salchicha, chorizo, chiles, champiñon, cebolla	sencilla
100	vegetariana	individual	140	masa, salsa de tomate, queso, piña, champiñon, pimiento, cebolla, queso manchego	manchego
101	vegetariana	individual	140	masa, salsa de tomate, queso, piña, champiñon, pimiento, cebolla, queso crema	crema
102	vegetariana	chica	150	masa, salsa de tomate, queso, piña, champiñon, pimiento, cebolla	sencilla
103	vegetariana	chica	170	masa, salsa de tomate, queso, piña, champiñon, pimiento, cebolla, queso manchego	manchego
104	vegetariana	chica	170	masa, salsa de tomate, queso, piña, champiñon, pimiento, cebolla, queso crema	crema
105	vegetariana	mediana	190	masa, salsa de tomate, queso, piña, champiñon, pimiento, cebolla	sencilla
106	vegetariana	mediana	210	masa, salsa de tomate, queso, piña, champiñon, pimiento, cebolla, queso manchego	manchego
107	vegetariana	mediana	210	masa, salsa de tomate, queso, piña, champiñon, pimiento, cebolla, queso crema	crema
108	vegetariana	grande	240	masa, salsa de tomate, queso, piña, champiñon, pimiento, cebolla	sencilla
109	vegetariana	grande	260	masa, salsa de tomate, queso, piña, champiñon, pimiento, cebolla, queso manchego	manchego
110	vegetariana	grande	260	masa, salsa de tomate, queso, piña, champiñon, pimiento, cebolla, queso crema	crema
111	vegetariana	jumbo	310	masa, salsa de tomate, queso, piña, champiñon, pimiento, cebolla	sencilla
112	vegetariana	rectangular	370	masa, salsa de tomate, queso, piña, champiñon, pimiento, cebolla	sencilla
113	caprichosa	individual	120	masa, salsa de tomate, queso, salami, chiles, tocino, salchicha, cebolla	sencilla
114	caprichosa	individual	140	masa, salsa de tomate, queso, salami, chiles, tocino, salchicha, cebolla, queso manchego	manchego
115	caprichosa	individual	140	masa, salsa de tomate, queso, salami, chiles, tocino, salchicha, cebolla, queso crema	crema
99	vegetariana	individual	120	masa, salsa de tomate, queso, piña, champiñon, pimiento, cebolla	sencilla
64	especial	mediana	210	masa, salsa de tomate, queso, cebolla, pimiento, champiñon, pepperoni, queso manchego	manchego
65	especial	mediana	210	masa, salsa de tomate, queso, cebolla, pimiento, champiñon, pepperoni, queso crema	crema
66	especial	grande	240	masa, salsa de tomate, queso, cebolla, pimiento, champiñon, pepperoni	sencilla
67	especial	grande	260	masa, salsa de tomate, queso, cebolla, pimiento, champiñon, pepperoni, queso manchego	manchego
77	kokos	mediana	190	masa, salsa de tomate, queso, champiñon, pepperoni, jamon	sencilla
80	kokos	grande	240	masa, salsa de tomate, queso, champiñon, pepperoni, jamon	sencilla
95	chingona	grande	240	masa, salsa de tomate, queso, jamon, salchicha, chorizo, chiles, champiñon, cebolla, queso manchego	manchego
120	caprichosa	mediana	210	masa, salsa de tomate, queso, salami, chiles, tocino, salchicha, cebolla, queso manchego	manchego
121	caprichosa	mediana	210	masa, salsa de tomate, queso, salami, chiles, tocino, salchicha, cebolla, queso crema	crema
122	caprichosa	grande	240	masa, salsa de tomate, queso, salami, chiles, tocino, salchicha, cebolla	sencilla
123	caprichosa	grande	260	masa, salsa de tomate, queso, salami, chiles, tocino, salchicha, cebolla, queso manchego	manchego
124	caprichosa	grande	260	masa, salsa de tomate, queso, salami, chiles, tocino, salchicha, cebolla, queso crema	crema
126	caprichosa	rectangular	370	masa, salsa de tomate, queso, salami, chiles, tocino, salchicha, cebolla	sencilla
127	queso	individual	120	masa, salsa de tomate, queso	sencilla
128	queso	individual	140	masa, salsa de tomate, queso, queso manchego	manchego
129	queso	individual	140	masa, salsa de tomate, queso, queso crema	crema
130	queso	chica	150	masa, salsa de tomate, queso	sencilla
131	queso	chica	170	masa, salsa de tomate, queso, queso manchego	manchego
132	queso	chica	170	masa, salsa de tomate, queso, queso crema	crema
133	queso	mediana	190	masa, salsa de tomate, queso	sencilla
134	queso	mediana	210	masa, salsa de tomate, queso, queso manchego	manchego
135	queso	mediana	210	masa, salsa de tomate, queso, queso crema	crema
136	queso	grande	240	masa, salsa de tomate, queso	sencilla
137	queso	grande	260	masa, salsa de tomate, queso, queso manchego	manchego
138	queso	grande	260	masa, salsa de tomate, queso, queso crema	crema
139	queso	jumbo	310	masa, salsa de tomate, queso	sencilla
140	queso	rectangular	370	masa, salsa de tomate, queso	sencilla
141	pastor	individual	120	masa, salsa de tomate, queso, carne pastor, piña	sencilla
142	pastor	individual	140	masa, salsa de tomate, queso, carne pastor, piña, queso manchego	manchego
116	caprichosa	chica	150	masa, salsa de tomate, queso, salami, chiles, tocino, salchicha, cebolla	sencilla
117	caprichosa	chica	170	masa, salsa de tomate, queso, salami, chiles, tocino, salchicha, cebolla, queso manchego	manchego
118	caprichosa	chica	170	masa, salsa de tomate, queso, salami, chiles, tocino, salchicha, cebolla, queso crema	crema
119	caprichosa	mediana	190	masa, salsa de tomate, queso, salami, chiles, tocino, salchicha, cebolla	sencilla
125	caprichosa	jumbo	310	masa, salsa de tomate, queso, salami, chiles, tocino, salchicha, cebolla	sencilla
143	pastor	individual	140	masa, salsa de tomate, queso, carne pastor, piña, queso crema	crema
144	pastor	chica	150	masa, salsa de tomate, queso, carne pastor, piña	sencilla
145	pastor	chica	170	masa, salsa de tomate, queso, carne pastor, piña, queso manchego	manchego
146	pastor	chica	170	masa, salsa de tomate, queso, carne pastor, piña, queso crema	crema
147	pastor	mediana	190	masa, salsa de tomate, queso, carne pastor, piña	sencilla
148	pastor	mediana	210	masa, salsa de tomate, queso, carne pastor, piña, queso manchego	manchego
149	pastor	mediana	210	masa, salsa de tomate, queso, carne pastor, piña, queso crema	crema
150	pastor	grande	240	masa, salsa de tomate, queso, carne pastor, piña	sencilla
151	pastor	grande	260	masa, salsa de tomate, queso, carne pastor, piña, queso manchego	manchego
152	pastor	grande	260	masa, salsa de tomate, queso, carne pastor, piña, queso crema	crema
153	pastor	jumbo	310	masa, salsa de tomate, queso, carne pastor, piña	sencilla
154	pastor	rectangular	370	masa, salsa de tomate, queso, carne pastor, piña	sencilla
155	mexiwaiana	individual	120	masa, salsa de tomate, queso, piña, chile, chorizo	sencilla
156	mexiwaiana	individual	140	masa, salsa de tomate, queso, piña, chile, chorizo, queso manchego	manchego
157	mexiwaiana	individual	140	masa, salsa de tomate, queso, piña, chile, chorizo, queso crema	crema
158	mexiwaiana	chica	150	masa, salsa de tomate, queso, piña, chile, chorizo	sencilla
159	mexiwaiana	chica	170	masa, salsa de tomate, queso, piña, chile, chorizo, queso manchego	manchego
160	mexiwaiana	chica	170	masa, salsa de tomate, queso, piña, chile, chorizo, queso crema	crema
161	mexiwaiana	mediana	190	masa, salsa de tomate, queso, piña, chile, chorizo	sencilla
162	mexiwaiana	mediana	210	masa, salsa de tomate, queso, piña, chile, chorizo, queso manchego	manchego
163	mexiwaiana	mediana	210	masa, salsa de tomate, queso, piña, chile, chorizo, queso crema	crema
164	mexiwaiana	grande	240	masa, salsa de tomate, queso, piña, chile, chorizo	sencilla
165	mexiwaiana	grande	260	masa, salsa de tomate, queso, piña, chile, chorizo, queso manchego	manchego
166	mexiwaiana	grande	260	masa, salsa de tomate, queso, piña, chile, chorizo, queso crema	crema
167	mexiwaiana	jumbo	310	masa, salsa de tomate, queso, piña, chile, chorizo	sencilla
168	mexiwaiana	rectangular	370	masa, salsa de tomate, queso, piña, chile, chorizo	sencilla
15	carnes frias	individual	120	masa, salsa de tomate, queso, jamon, salchicha, chorizo	sencilla
16	carnes frias	individual	140	masa, salsa de tomate, queso, jamon, salchicha, chorizo, queso manchego	manchego
17	carnes frias	individual	140	masa, salsa de tomate, queso, jamon, salchicha, chorizo, queso crema	crema
18	carnes frias	chica	150	masa, salsa de tomate, queso, jamon, salchicha, chorizo	sencilla
19	carnes frias	chica	170	masa, salsa de tomate, queso, jamon, salchicha, chorizo queso machego	manchego
20	carnes frias	chica	170	masa, salsa de tomate, queso, jamon, salchicha, chorizo, queso crema	crema
21	carnes frias	mediana	190	masa, salsa de tomate, queso, jamon, salchicha, chorizo	sencilla
22	carnes frias	mediana	210	masa, salsa de tomate, queso, jamon, salchicha, chorizo, queso manchego	manchego
23	carnes frias	mediana	210	masa, salsa de tomate, queso, jamon, salchicha, chorizo, queso crema	crema
24	carnes frias	grande	240	masa, salsa de tomate, queso, jamon, salchicha, chorizo	sencilla
25	carnes frias	grande	260	masa, salsa de tomate, queso, jamon, salchicha, chorizo, queso manchego	manchego
26	carnes frias	grande	260	masa, salsa de tomate, queso, jamon, salchicha, chorizo, queso crema	crema
27	carnes frias	jumbo	310	masa, salsa de tomate, queso, jamon, salchicha, chorizo	sencilla
28	carnes frias	rectangular	370	masa, salsa de tomate, queso, jamon, salchicha, chorizo	sencilla
68	especial	grande	260	masa, salsa de tomate, queso, cebolla, pimiento, champiñon, pepperoni, queso crema	crema
69	especial	jumbo	310	masa, salsa de tomate, queso, cebolla, pimiento, champiñon, pepperoni	sencilla
70	especial	jumbo	370	masa, salsa de tomate, queso, cebolla, pimiento, champiñon, pepperoni	sencilla
\.


                                                                                                                                                                                                                                                                                                                   4919.dat                                                                                            0000600 0004000 0002000 00000001277 14750053441 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        6	cocacola	3L	45
1	cocacola	600ml	20
2	cocacola	1L	30
3	cocacola	1.5L	30
4	cocacola	2L	35
5	cocacola	2.5L	40
7	victoria	600ml	20
8	victoria	1L	30
9	victoria	1.5L	30
10	victoria	2L	35
11	victoria	2.5L	40
12	victoria	3L	45
13	delaware	600ml	20
14	delaware	1L	30
15	delaware	1.5L	30
16	delaware	2L	35
17	delaware	2.5L	40
18	delaware	3L	45
19	sprite	600ml	20
20	sprite	1L	30
21	sprite	1.5L	30
22	sprite	2L	35
23	sprite	2.5L	40
24	sprite	3L	45
25	sidral mundet	600ml	20
26	sidral mundet	1L	30
27	sidral mundet	1.5L	30
28	sidral mundet	2L	35
29	sidral mundet	2.5L	40
30	sidral mundet	3L	45
31	fanta	600ml	20
32	fanta	1L	30
33	fanta	1.5L	30
34	fanta	2L	35
35	fanta	2.5L	40
40	fanta	3L	45
41	jugo	600ml	20
\.


                                                                                                                                                                                                                                                                                                                                 4925.dat                                                                                            0000600 0004000 0002000 00000000213 14750053441 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1
2	\N
3	\N
4	\N
5	\N
6	\N
7	\N
8	\N
9	\N
10	\N
11	\N
12	\N
13	\N
14	\N
15	\N
16	\N
17	\N
18	\N
19	\N
20	\N
21	\N
22	\N
23	\N
24	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                     4910.dat                                                                                            0000600 0004000 0002000 00000000063 14750053441 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Ivan	Rojo	t	admin1
2	Empleado	neri	f	kokos1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                             restore.sql                                                                                         0000600 0004000 0002000 00000035611 14750053441 0015375 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

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

DROP DATABASE "Kokos_Pizza";
--
-- Name: Kokos_Pizza; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Kokos_Pizza" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE "Kokos_Pizza" OWNER TO postgres;

\connect "Kokos_Pizza"

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
-- Name: alitas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alitas (
    alitas_id integer NOT NULL,
    alitas_nombre text NOT NULL,
    "alitas_tamaño" text NOT NULL,
    alitas_precio double precision NOT NULL,
    alitas_ingredientes text NOT NULL
);


ALTER TABLE public.alitas OWNER TO postgres;

--
-- Name: boneless; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boneless (
    boneless_id integer NOT NULL,
    boneless_nombre text NOT NULL,
    "boneless_tamaño" text NOT NULL,
    boneless_precio double precision NOT NULL,
    boneless_ingredientes text NOT NULL
);


ALTER TABLE public.boneless OWNER TO postgres;

--
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    cliente_id integer NOT NULL,
    cliente_nombre text,
    cliente_telefono text,
    cliente_direccion text
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- Name: clientes_cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientes_cliente_id_seq OWNER TO postgres;

--
-- Name: clientes_cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_cliente_id_seq OWNED BY public.clientes.cliente_id;


--
-- Name: extras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.extras (
    extra_id integer NOT NULL,
    extra_nombre text NOT NULL,
    extra_precio double precision NOT NULL,
    extra_ingredientes text NOT NULL
);


ALTER TABLE public.extras OWNER TO postgres;

--
-- Name: ingredientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ingredientes (
    ingredietes_id integer NOT NULL,
    ingrediente_nombre text NOT NULL
);


ALTER TABLE public.ingredientes OWNER TO postgres;

--
-- Name: inventario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventario (
    inventario_id integer NOT NULL,
    inventario_nombre text NOT NULL,
    inventario_precio_unitario double precision NOT NULL,
    inventario_cantidad double precision NOT NULL
);


ALTER TABLE public.inventario OWNER TO postgres;

--
-- Name: inventario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inventario_id_seq OWNER TO postgres;

--
-- Name: inventario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventario_id_seq OWNED BY public.inventario.inventario_id;


--
-- Name: papas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.papas (
    papas_id integer NOT NULL,
    papas_nombre text NOT NULL,
    papas_precio double precision NOT NULL,
    papas_ingredientes text NOT NULL
);


ALTER TABLE public.papas OWNER TO postgres;

--
-- Name: pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedidos (
    id integer NOT NULL,
    pedido_id integer,
    cliente_id integer,
    pedido_descripcion text,
    pedido_precio double precision,
    pedido_precio_total double precision,
    fecha timestamp without time zone DEFAULT now()
);


ALTER TABLE public.pedidos OWNER TO postgres;

--
-- Name: pedidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pedidos_id_seq OWNER TO postgres;

--
-- Name: pedidos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedidos_id_seq OWNED BY public.pedidos.id;


--
-- Name: pizzas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pizzas (
    pizza_id integer NOT NULL,
    pizza_nombre text NOT NULL,
    "pizza_tamaño" text NOT NULL,
    pizza_precio integer NOT NULL,
    pizza_ingredientes text NOT NULL,
    pizza_orilla text NOT NULL
);


ALTER TABLE public.pizzas OWNER TO postgres;

--
-- Name: refrescos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.refrescos (
    refresco_id integer NOT NULL,
    refresco_nombre text NOT NULL,
    "refresco_tamaño" text NOT NULL,
    refresco_precio double precision NOT NULL
);


ALTER TABLE public.refrescos OWNER TO postgres;

--
-- Name: secuencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.secuencia (
    id integer NOT NULL,
    secuencia_id integer
);


ALTER TABLE public.secuencia OWNER TO postgres;

--
-- Name: secuencia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.secuencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.secuencia_id_seq OWNER TO postgres;

--
-- Name: secuencia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.secuencia_id_seq OWNED BY public.secuencia.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    usuario_id integer NOT NULL,
    usuario_nombre text NOT NULL,
    usuario_apellidos text NOT NULL,
    admin boolean NOT NULL,
    "contraseña" text NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_usuario_id_seq OWNER TO postgres;

--
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_usuario_id_seq OWNED BY public.usuarios.usuario_id;


--
-- Name: clientes cliente_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN cliente_id SET DEFAULT nextval('public.clientes_cliente_id_seq'::regclass);


--
-- Name: inventario inventario_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario ALTER COLUMN inventario_id SET DEFAULT nextval('public.inventario_id_seq'::regclass);


--
-- Name: pedidos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_id_seq'::regclass);


--
-- Name: secuencia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secuencia ALTER COLUMN id SET DEFAULT nextval('public.secuencia_id_seq'::regclass);


--
-- Name: usuarios usuario_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN usuario_id SET DEFAULT nextval('public.usuarios_usuario_id_seq'::regclass);


--
-- Data for Name: alitas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alitas (alitas_id, alitas_nombre, "alitas_tamaño", alitas_precio, alitas_ingredientes) FROM stdin;
\.
COPY public.alitas (alitas_id, alitas_nombre, "alitas_tamaño", alitas_precio, alitas_ingredientes) FROM '$$PATH$$/4914.dat';

--
-- Data for Name: boneless; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boneless (boneless_id, boneless_nombre, "boneless_tamaño", boneless_precio, boneless_ingredientes) FROM stdin;
\.
COPY public.boneless (boneless_id, boneless_nombre, "boneless_tamaño", boneless_precio, boneless_ingredientes) FROM '$$PATH$$/4918.dat';

--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (cliente_id, cliente_nombre, cliente_telefono, cliente_direccion) FROM stdin;
\.
COPY public.clientes (cliente_id, cliente_nombre, cliente_telefono, cliente_direccion) FROM '$$PATH$$/4923.dat';

--
-- Data for Name: extras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.extras (extra_id, extra_nombre, extra_precio, extra_ingredientes) FROM stdin;
\.
COPY public.extras (extra_id, extra_nombre, extra_precio, extra_ingredientes) FROM '$$PATH$$/4916.dat';

--
-- Data for Name: ingredientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ingredientes (ingredietes_id, ingrediente_nombre) FROM stdin;
\.
COPY public.ingredientes (ingredietes_id, ingrediente_nombre) FROM '$$PATH$$/4913.dat';

--
-- Data for Name: inventario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventario (inventario_id, inventario_nombre, inventario_precio_unitario, inventario_cantidad) FROM stdin;
\.
COPY public.inventario (inventario_id, inventario_nombre, inventario_precio_unitario, inventario_cantidad) FROM '$$PATH$$/4912.dat';

--
-- Data for Name: papas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.papas (papas_id, papas_nombre, papas_precio, papas_ingredientes) FROM stdin;
\.
COPY public.papas (papas_id, papas_nombre, papas_precio, papas_ingredientes) FROM '$$PATH$$/4917.dat';

--
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedidos (id, pedido_id, cliente_id, pedido_descripcion, pedido_precio, pedido_precio_total, fecha) FROM stdin;
\.
COPY public.pedidos (id, pedido_id, cliente_id, pedido_descripcion, pedido_precio, pedido_precio_total, fecha) FROM '$$PATH$$/4921.dat';

--
-- Data for Name: pizzas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pizzas (pizza_id, pizza_nombre, "pizza_tamaño", pizza_precio, pizza_ingredientes, pizza_orilla) FROM stdin;
\.
COPY public.pizzas (pizza_id, pizza_nombre, "pizza_tamaño", pizza_precio, pizza_ingredientes, pizza_orilla) FROM '$$PATH$$/4915.dat';

--
-- Data for Name: refrescos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.refrescos (refresco_id, refresco_nombre, "refresco_tamaño", refresco_precio) FROM stdin;
\.
COPY public.refrescos (refresco_id, refresco_nombre, "refresco_tamaño", refresco_precio) FROM '$$PATH$$/4919.dat';

--
-- Data for Name: secuencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.secuencia (id, secuencia_id) FROM stdin;
\.
COPY public.secuencia (id, secuencia_id) FROM '$$PATH$$/4925.dat';

--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (usuario_id, usuario_nombre, usuario_apellidos, admin, "contraseña") FROM stdin;
\.
COPY public.usuarios (usuario_id, usuario_nombre, usuario_apellidos, admin, "contraseña") FROM '$$PATH$$/4910.dat';

--
-- Name: clientes_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_cliente_id_seq', 23, true);


--
-- Name: inventario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventario_id_seq', 14, true);


--
-- Name: pedidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedidos_id_seq', 74, true);


--
-- Name: secuencia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.secuencia_id_seq', 1, true);


--
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_usuario_id_seq', 1, true);


--
-- Name: alitas alitas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alitas
    ADD CONSTRAINT alitas_pkey PRIMARY KEY (alitas_id);


--
-- Name: boneless boneless_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boneless
    ADD CONSTRAINT boneless_pkey PRIMARY KEY (boneless_id);


--
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (cliente_id);


--
-- Name: extras extras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.extras
    ADD CONSTRAINT extras_pkey PRIMARY KEY (extra_id);


--
-- Name: ingredientes ingredientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredientes
    ADD CONSTRAINT ingredientes_pkey PRIMARY KEY (ingredietes_id);


--
-- Name: inventario inventario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (inventario_id);


--
-- Name: papas papas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.papas
    ADD CONSTRAINT papas_pkey PRIMARY KEY (papas_id);


--
-- Name: pedidos pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id);


--
-- Name: pizzas pizzas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizzas
    ADD CONSTRAINT pizzas_pkey PRIMARY KEY (pizza_id);


--
-- Name: refrescos refrescos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refrescos
    ADD CONSTRAINT refrescos_pkey PRIMARY KEY (refresco_id);


--
-- Name: secuencia secuencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secuencia
    ADD CONSTRAINT secuencia_pkey PRIMARY KEY (id);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (usuario_id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       