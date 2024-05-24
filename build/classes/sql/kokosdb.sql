PGDMP                      |            Kokos_Pizza    16.2    16.2 >    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            C           1262    40960    Kokos_Pizza    DATABASE     �   CREATE DATABASE "Kokos_Pizza" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "Kokos_Pizza";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            D           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    41104    alitas    TABLE     �   CREATE TABLE public.alitas (
    alitas_id integer NOT NULL,
    alitas_nombre text NOT NULL,
    "alitas_tamaño" text NOT NULL,
    alitas_precio double precision NOT NULL,
    alitas_ingredientes text NOT NULL
);
    DROP TABLE public.alitas;
       public         heap    postgres    false    4            �            1259    49267    boneless    TABLE     �   CREATE TABLE public.boneless (
    boneless_id integer NOT NULL,
    boneless_nombre text NOT NULL,
    "boneless_tamaño" text NOT NULL,
    boneless_precio double precision NOT NULL,
    boneless_ingredientes text NOT NULL
);
    DROP TABLE public.boneless;
       public         heap    postgres    false    4            �            1259    49467    clientes    TABLE     �   CREATE TABLE public.clientes (
    cliente_id integer NOT NULL,
    cliente_nombre text,
    cliente_telefono text,
    cliente_direccion text
);
    DROP TABLE public.clientes;
       public         heap    postgres    false    4            �            1259    49466    clientes_cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_cliente_id_seq;
       public          postgres    false    4    229            E           0    0    clientes_cliente_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_cliente_id_seq OWNED BY public.clientes.cliente_id;
          public          postgres    false    228            �            1259    41118    extras    TABLE     �   CREATE TABLE public.extras (
    extra_id integer NOT NULL,
    extra_nombre text NOT NULL,
    extra_precio double precision NOT NULL,
    extra_ingredientes text NOT NULL
);
    DROP TABLE public.extras;
       public         heap    postgres    false    4            �            1259    41033    ingredientes    TABLE     p   CREATE TABLE public.ingredientes (
    ingredietes_id integer NOT NULL,
    ingrediente_nombre text NOT NULL
);
     DROP TABLE public.ingredientes;
       public         heap    postgres    false    4            �            1259    41025 
   inventario    TABLE     �   CREATE TABLE public.inventario (
    inventario_id integer NOT NULL,
    inventario_nombre text NOT NULL,
    inventario_precio_unitario double precision NOT NULL,
    inventario_cantidad double precision NOT NULL
);
    DROP TABLE public.inventario;
       public         heap    postgres    false    4            �            1259    41024    inventario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.inventario_id_seq;
       public          postgres    false    4    218            F           0    0    inventario_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.inventario_id_seq OWNED BY public.inventario.inventario_id;
          public          postgres    false    217            �            1259    41125    papas    TABLE     �   CREATE TABLE public.papas (
    papas_id integer NOT NULL,
    papas_nombre text NOT NULL,
    papas_precio double precision NOT NULL,
    papas_ingredientes text NOT NULL
);
    DROP TABLE public.papas;
       public         heap    postgres    false    4            �            1259    49457    pedidos    TABLE       CREATE TABLE public.pedidos (
    id integer NOT NULL,
    pedido_id integer,
    cliente_id integer,
    pedido_descripcion text,
    pedido_precio double precision,
    pedido_precio_total double precision,
    fecha timestamp without time zone DEFAULT now()
);
    DROP TABLE public.pedidos;
       public         heap    postgres    false    4            �            1259    49456    pedidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pedidos_id_seq;
       public          postgres    false    4    227            G           0    0    pedidos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pedidos_id_seq OWNED BY public.pedidos.id;
          public          postgres    false    226            �            1259    41111    pizzas    TABLE     �   CREATE TABLE public.pizzas (
    pizza_id integer NOT NULL,
    pizza_nombre text NOT NULL,
    "pizza_tamaño" text NOT NULL,
    pizza_precio integer NOT NULL,
    pizza_ingredientes text NOT NULL,
    pizza_orilla text NOT NULL
);
    DROP TABLE public.pizzas;
       public         heap    postgres    false    4            �            1259    49274 	   refrescos    TABLE     �   CREATE TABLE public.refrescos (
    refresco_id integer NOT NULL,
    refresco_nombre text NOT NULL,
    "refresco_tamaño" text NOT NULL,
    refresco_precio double precision NOT NULL
);
    DROP TABLE public.refrescos;
       public         heap    postgres    false    4            �            1259    49476 	   secuencia    TABLE     U   CREATE TABLE public.secuencia (
    id integer NOT NULL,
    secuencia_id integer
);
    DROP TABLE public.secuencia;
       public         heap    postgres    false    4            �            1259    49475    secuencia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.secuencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.secuencia_id_seq;
       public          postgres    false    4    231            H           0    0    secuencia_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.secuencia_id_seq OWNED BY public.secuencia.id;
          public          postgres    false    230            �            1259    41009    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    usuario_id integer NOT NULL,
    usuario_nombre text NOT NULL,
    usuario_apellidos text NOT NULL,
    admin boolean NOT NULL,
    "contraseña" text NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false    4            �            1259    41008    usuarios_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_usuario_id_seq;
       public          postgres    false    4    216            I           0    0    usuarios_usuario_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_usuario_id_seq OWNED BY public.usuarios.usuario_id;
          public          postgres    false    215            �           2604    49470    clientes cliente_id    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN cliente_id SET DEFAULT nextval('public.clientes_cliente_id_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN cliente_id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    41028    inventario inventario_id    DEFAULT     y   ALTER TABLE ONLY public.inventario ALTER COLUMN inventario_id SET DEFAULT nextval('public.inventario_id_seq'::regclass);
 G   ALTER TABLE public.inventario ALTER COLUMN inventario_id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    49460 
   pedidos id    DEFAULT     h   ALTER TABLE ONLY public.pedidos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_id_seq'::regclass);
 9   ALTER TABLE public.pedidos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    49479    secuencia id    DEFAULT     l   ALTER TABLE ONLY public.secuencia ALTER COLUMN id SET DEFAULT nextval('public.secuencia_id_seq'::regclass);
 ;   ALTER TABLE public.secuencia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    41012    usuarios usuario_id    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN usuario_id SET DEFAULT nextval('public.usuarios_usuario_id_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN usuario_id DROP DEFAULT;
       public          postgres    false    216    215    216            2          0    41104    alitas 
   TABLE DATA           p   COPY public.alitas (alitas_id, alitas_nombre, "alitas_tamaño", alitas_precio, alitas_ingredientes) FROM stdin;
    public          postgres    false    220   )E       6          0    49267    boneless 
   TABLE DATA           |   COPY public.boneless (boneless_id, boneless_nombre, "boneless_tamaño", boneless_precio, boneless_ingredientes) FROM stdin;
    public          postgres    false    224   �E       ;          0    49467    clientes 
   TABLE DATA           c   COPY public.clientes (cliente_id, cliente_nombre, cliente_telefono, cliente_direccion) FROM stdin;
    public          postgres    false    229   LF       4          0    41118    extras 
   TABLE DATA           Z   COPY public.extras (extra_id, extra_nombre, extra_precio, extra_ingredientes) FROM stdin;
    public          postgres    false    222   H       1          0    41033    ingredientes 
   TABLE DATA           J   COPY public.ingredientes (ingredietes_id, ingrediente_nombre) FROM stdin;
    public          postgres    false    219    H       0          0    41025 
   inventario 
   TABLE DATA           w   COPY public.inventario (inventario_id, inventario_nombre, inventario_precio_unitario, inventario_cantidad) FROM stdin;
    public          postgres    false    218   =H       5          0    41125    papas 
   TABLE DATA           Y   COPY public.papas (papas_id, papas_nombre, papas_precio, papas_ingredientes) FROM stdin;
    public          postgres    false    223   �H       9          0    49457    pedidos 
   TABLE DATA           {   COPY public.pedidos (id, pedido_id, cliente_id, pedido_descripcion, pedido_precio, pedido_precio_total, fecha) FROM stdin;
    public          postgres    false    227   �H       3          0    41111    pizzas 
   TABLE DATA           y   COPY public.pizzas (pizza_id, pizza_nombre, "pizza_tamaño", pizza_precio, pizza_ingredientes, pizza_orilla) FROM stdin;
    public          postgres    false    221   9M       7          0    49274 	   refrescos 
   TABLE DATA           f   COPY public.refrescos (refresco_id, refresco_nombre, "refresco_tamaño", refresco_precio) FROM stdin;
    public          postgres    false    225   GS       =          0    49476 	   secuencia 
   TABLE DATA           5   COPY public.secuencia (id, secuencia_id) FROM stdin;
    public          postgres    false    231   DT       .          0    41009    usuarios 
   TABLE DATA           g   COPY public.usuarios (usuario_id, usuario_nombre, usuario_apellidos, admin, "contraseña") FROM stdin;
    public          postgres    false    216   �T       J           0    0    clientes_cliente_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.clientes_cliente_id_seq', 23, true);
          public          postgres    false    228            K           0    0    inventario_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.inventario_id_seq', 14, true);
          public          postgres    false    217            L           0    0    pedidos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pedidos_id_seq', 74, true);
          public          postgres    false    226            M           0    0    secuencia_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.secuencia_id_seq', 1, true);
          public          postgres    false    230            N           0    0    usuarios_usuario_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_usuario_id_seq', 1, true);
          public          postgres    false    215            �           2606    41110    alitas alitas_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.alitas
    ADD CONSTRAINT alitas_pkey PRIMARY KEY (alitas_id);
 <   ALTER TABLE ONLY public.alitas DROP CONSTRAINT alitas_pkey;
       public            postgres    false    220            �           2606    49273    boneless boneless_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.boneless
    ADD CONSTRAINT boneless_pkey PRIMARY KEY (boneless_id);
 @   ALTER TABLE ONLY public.boneless DROP CONSTRAINT boneless_pkey;
       public            postgres    false    224            �           2606    49474    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (cliente_id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    229            �           2606    41124    extras extras_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.extras
    ADD CONSTRAINT extras_pkey PRIMARY KEY (extra_id);
 <   ALTER TABLE ONLY public.extras DROP CONSTRAINT extras_pkey;
       public            postgres    false    222            �           2606    41039    ingredientes ingredientes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ingredientes
    ADD CONSTRAINT ingredientes_pkey PRIMARY KEY (ingredietes_id);
 H   ALTER TABLE ONLY public.ingredientes DROP CONSTRAINT ingredientes_pkey;
       public            postgres    false    219            �           2606    41032    inventario inventario_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (inventario_id);
 D   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_pkey;
       public            postgres    false    218            �           2606    41131    papas papas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.papas
    ADD CONSTRAINT papas_pkey PRIMARY KEY (papas_id);
 :   ALTER TABLE ONLY public.papas DROP CONSTRAINT papas_pkey;
       public            postgres    false    223            �           2606    49465    pedidos pedidos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_pkey;
       public            postgres    false    227            �           2606    41117    pizzas pizzas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pizzas
    ADD CONSTRAINT pizzas_pkey PRIMARY KEY (pizza_id);
 <   ALTER TABLE ONLY public.pizzas DROP CONSTRAINT pizzas_pkey;
       public            postgres    false    221            �           2606    49280    refrescos refrescos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.refrescos
    ADD CONSTRAINT refrescos_pkey PRIMARY KEY (refresco_id);
 B   ALTER TABLE ONLY public.refrescos DROP CONSTRAINT refrescos_pkey;
       public            postgres    false    225            �           2606    49481    secuencia secuencia_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.secuencia
    ADD CONSTRAINT secuencia_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.secuencia DROP CONSTRAINT secuencia_pkey;
       public            postgres    false    231            �           2606    41016    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (usuario_id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    216            2   �   x���[� D���`ƴ*V����%��Z���	$�����9g�e�섁K�d�xe�#։�P>Pv<��.�aNhR�#kE�g ���UK���b7�"�Ӊ;/��dº�����(ћ�ʳ�}�lxJ7�k�L��h����7m�CX�����0�<      6   e   x�u�K� E�q�
V`��n�$J����HQ����rVƜ�[���=<MW�����ʎc�_����H�����$�nN�uQ��y�{�;."�|O�      ;   �  x�MRAn�0</_��r�%�F�C�(�^
��XL�@&[Y2�����Ǻ�e��ؙ���������� �� ����1���`#���ӏ��e�K��-yv�pW�ZƤ�uːʒ�Z�s.�R�ۚ��[<�Rjo�ط�F�r���>�y���XG1F�KӔ����t�q}���(���؟9�(C��DŰ{�����g��&��@��c��U6���[���MD����F	ıݴ��T�u?��BJ��I�,a�S'��:�F���6g�	v� �T����Ge�!�\Ғ$��9|R����_�Fk���CK�ӻ�ie<�ϝ���_��I�_N�A���d�2NCD$�#^���7�p�1Z� �����8��q�A��_�j��$	ȯ�Ǳ*� �o9�=�v���%�vJ��L�G      4      x������ � �      1      x������ � �      0   :   x�3�L�ONL��I4��42�44�2��,@B���E�%��>��F�F&\1z\\\ ���      5   9   x�3�,H,H,VH+J�KN-N�41��pAe�����P����ҜĔ�b�T�  �f      9   Y  x���]r�(����@T4ͯ��#�kd{���ػ{�mY�4c�S�*�+�4M�����t����~J������tJ�X�Zi�C��W����(/u��s��a�^�c�q�C��I�U�����{�Tc׾����1
�,j
ڦ��.��x���S߾t�Cվ[���"9t��o�
��+���������A ����5�O#ͷ����x����uup�9#Â��i� .����7,-���>��c��
�� ����y-������6x������K���G�է�l��}��"64�k��%؂�"�c:U���нU�������rg���bI���9��c�pԮ��s��)�Nh���l�ظZ���J�
�x:x��9���w��RV��(X�̩tQ��$'���&9�O���1�Ἅ��!t>�q�F7����X'�-��x�a����8��+��@m^�GBP>�]�4�X[\�R�B��(��m����[��|h�Ja�:�I�D�w��)�(v��"��^��Qo���M��-�9�OW���6?ː�띋�v�c��D79�X��~��arlB�a��"�y��l:�s<��� �r�߂:0=�����œ�G�;)c��`U��^�����m���כ�ѶAWkJ9i�$��&`h���&��~~��	ݻE%�ɝ)�����b�͂��4n��C���*|ȃs���E�V%��)�l�tT��ZE�X�A�o,�&�i��1_M�j���J�E�7/㡤s��l0�ec~���Q�ki���>zN�9 N��I�3ǐ�a>w>q���P��H��ճwv�n2�k���u}z-2f�\+��m�Vۘ�*�jｊ�Q'xg�����U1W�k�r�Z�}�^�M���4 U^��ӓd�+�Q�(a�f���[�@�E�������^?x6�L�H�ZHB;	�R���s֦��ؾ�`�/���>|u�Tx����.��G6�B�WPݎ��@mu��N�FE9Y���q9~^K��2L�巜A^�)�,�f	����1�P����2`���S��Jk:��T4�Q�q���k�=ܬp��w?k)��a�p�      3   �  x��[[��6�ƫ�|r��^�q�nzx�=�ɮ��l,��MT%�i��ͽ��zH%Yx�OU�JyE�V�,޾���U�c�.�:���[]�[~:�����t�Te]��������չ�\�A�^��U��p����	鏦��/y{:��ou�ҽ������������xn�ý�=�a���n���8b�[��T��#���C2 ��[�*2;��)T ܌2s��;<�n�ٷE�!���ި�-�i'�S�؍�"p�� ��U~���5a�r�M~�����/dE����k^���#ggeeU��J�'1���p���hsR$d<�'�4��0ٲ^M�~��̹q�ؖ�=��4�x/��X/o�������/�kQyu�Uy�}�ȯ׼��P�z*c4Q��"ۉ:HW�^��p�d��)k5`�?f�0	�pe �Й�l�8�P��-]�"�#�H_�l�5H�I�:q���N&yѪ3;� ו���-
`�P��f	ÄWOt�<�y&Xu)��\�t���� &��8��@q�8pN�\����4��e \%���{�2�/z3���4��U��B�#܊�J",�%	M�Ú=�N�x$O� ��,�%АlhJ��r:���4؂Y�j���l�^9$�Gw��k�^s����?t%���/q�'��y��~��/A��C`6����&��v�3�*�����ٝ{kݳ`�J�ĻS>�H{9�s�����SRj�ޅ� �0��&��b���f������j���G��aeorn�}��q� Rj��AUC�yo�RP�9+�2B|��S�X�Ch ��3ف+�"Fz[�)h��1����)��i��grË���)��cru+um�T_�̭@��*��.��sQոvL����'�|K.�ȏ��lq2����4���a���+���E=�x`$�6�!V�Li�]��z&ɨ	ChO�6���%���V��n����	D8����@�E��R@Z��V<u\�xp#�܉�CV^9��8���9U>�j7:ü�=���?�h�$`Q(�F�g�	+$lG���&fh�=k��D�Xؚ��BLИd��1�mI���)OO�-��Uɧkr�>/��jou�<�SM�=����@��z
�� Fɍھ�[�'*�t��tj�[�t��*ήf��ugjE%C�~�d��	O>^�h�g>CcE���c%�'2c��E:F$��xjdN��#<��;�E9"14��XjD�K,�+
����Z�y༌����Ϛ^]�.5�v�:����7!��4&�P�	M!	� aN�L�J�"�}�,H�X@|���u�@��h�S�	7��
I��o��	�`�v�>�{,�`v�~N����������ޯq*���٦�<�����'[�N1��5@�Lm���k�V��tI��oV�a�/?=���&s���$�!C�IL������kn���oŅ�E���/@�Q�;���|��|�Q�y=�>�J�	��K����� ��lI      7   �   x�]�K��0��s�9A�	�;����VT��(�����S[Y��됆uI�GѡB��u����8�7%zBt����]���lvwjywo@v�W����v$5y�qZ�_�&bP�E�FJ�Q�dk�$;5I�p������9��,1�"9E��%D�H�P��<ni��>n㴛ZS�H������@���,7a_�1�)�v�a�D��2J��@r,���ȁ�py�W��}p���=��      =   C   x�˹�0 ��*�A�|MP�����%�����>e��\�.Oy�w4��2�<�4��p�7�p�&���      .   ;   x�3��,K������,�LL���3�2�t�-�IML���K-��L�����/6����� ���     