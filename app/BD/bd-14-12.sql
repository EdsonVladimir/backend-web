PGDMP          &                 y            pagina    13.5 (Debian 13.5-1.pgdg110+1)    13.5 (Debian 13.5-1.pgdg110+1) v    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    pagina    DATABASE     [   CREATE DATABASE pagina WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es_BO.UTF-8';
    DROP DATABASE pagina;
                postgres    false                        2615    24797 
   pagina_web    SCHEMA        CREATE SCHEMA pagina_web;
    DROP SCHEMA pagina_web;
                postgres    false            �            1259    24798    carousel    TABLE     �   CREATE TABLE pagina_web.carousel (
    id_componente text,
    id_imagen text,
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_carousel text
);
     DROP TABLE pagina_web.carousel;
    
   pagina_web         heap    postgres    false    4            �            1259    24805 
   componente    TABLE     *  CREATE TABLE pagina_web.componente (
    id_tipo_comp_fk text,
    nombre character varying(100),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    descripcion character varying(500),
    titulo character varying(100),
    id_pagina text,
    id_componente text
);
 "   DROP TABLE pagina_web.componente;
    
   pagina_web         heap    postgres    false    4            �            1259    24939    componente_generico    TABLE     �  CREATE TABLE pagina_web.componente_generico (
    id_mivi text,
    descripcion text,
    id_imagen text,
    url_dir text,
    url_dir_uno text,
    url_dir_dos text,
    titulo text,
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    id_componente text,
    descripcion_corta text,
    titulo_aux text,
    imagen_aux text,
    imagen_aux_uno text,
    imagen_aux_dos text,
    imagen_aux_tres text,
    imagen_aux_cuatro text
);
 +   DROP TABLE pagina_web.componente_generico;
    
   pagina_web         heap    postgres    false    4            �            1259    24928    estado_plurinacional    TABLE     N  CREATE TABLE pagina_web.estado_plurinacional (
    id_imagen text,
    id_componente text,
    titulo character varying(500),
    descripcion character varying(30000),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    link_01 character varying(500),
    link_02 character varying(500),
    id text
);
 ,   DROP TABLE pagina_web.estado_plurinacional;
    
   pagina_web         heap    postgres    false    4            �            1259    24912    eventos_promocionales    TABLE     )  CREATE TABLE pagina_web.eventos_promocionales (
    id_evento text,
    titulo character varying(500),
    descripcion character varying(2000),
    id_imagen text,
    id_componente text,
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    url_dir character varying(2000)
);
 -   DROP TABLE pagina_web.eventos_promocionales;
    
   pagina_web         heap    postgres    false    4            �            1259    24812 
   header_pag    TABLE     �  CREATE TABLE pagina_web.header_pag (
    titulo character varying(100),
    descripcion character varying(500),
    id_imagen_uno text,
    id_imagen_dos text,
    id_imagen_tres text,
    id_imagen_fondo text,
    id_imagen_aux text,
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    link_aux character varying(100),
    id_header_pag text,
    id_componente text
);
 "   DROP TABLE pagina_web.header_pag;
    
   pagina_web         heap    postgres    false    4            �            1259    24819    imagen    TABLE     �   CREATE TABLE pagina_web.imagen (
    url character varying(200),
    nombre character varying(50),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_imagen text,
    id_tipo_comp text
);
    DROP TABLE pagina_web.imagen;
    
   pagina_web         heap    postgres    false    4            �            1259    24826    libros    TABLE     �   CREATE TABLE pagina_web.libros (
    titulo character varying(100),
    id_imagen text,
    descripcion character varying(200),
    id_componente text,
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_libros text
);
    DROP TABLE pagina_web.libros;
    
   pagina_web         heap    postgres    false    4            �            1259    24870    menu    TABLE       CREATE TABLE pagina_web.menu (
    nombre character varying(100),
    urldir character varying(200),
    descripcion character varying(200),
    id_componente text,
    id_pagina text,
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_menu text
);
    DROP TABLE pagina_web.menu;
    
   pagina_web         heap    postgres    false    4            �            1259    24833    noticia    TABLE     e  CREATE TABLE pagina_web.noticia (
    id_imagen text,
    id_componente text,
    titulo character varying(500),
    descripcion character varying(2000),
    url character varying(500),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_noticia text,
    noti_ipm integer DEFAULT 0,
    resumen character varying(5000)
);
    DROP TABLE pagina_web.noticia;
    
   pagina_web         heap    postgres    false    4            �            1259    24877    nuestros_sitios    TABLE     �   CREATE TABLE pagina_web.nuestros_sitios (
    id_sitio text,
    titulo character varying(2000),
    url_dir character varying(2000),
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    id_componente text,
    id_imagen text
);
 '   DROP TABLE pagina_web.nuestros_sitios;
    
   pagina_web         heap    postgres    false    4            �            1259    24919    otros_enlaces    TABLE     %  CREATE TABLE pagina_web.otros_enlaces (
    id_otr_enlace text,
    titulo character varying(500),
    descripcion character varying(2000),
    id_imagen text,
    id_componente text,
    url_dir character varying(2000),
    estado character varying(10) DEFAULT 'CREADO'::character varying
);
 %   DROP TABLE pagina_web.otros_enlaces;
    
   pagina_web         heap    postgres    false    4            �            1259    24841    pagina    TABLE     �   CREATE TABLE pagina_web.pagina (
    nombre character varying(100),
    descripcion character varying(200),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_pagina text
);
    DROP TABLE pagina_web.pagina;
    
   pagina_web         heap    postgres    false    4            �            1259    24891 
   postulados    TABLE     �   CREATE TABLE pagina_web.postulados (
    id_postulados text,
    titulo character varying(500),
    id_componente text,
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    id_imagen text,
    url_dir character varying(500)
);
 "   DROP TABLE pagina_web.postulados;
    
   pagina_web         heap    postgres    false    4            �            1259    24898    redes    TABLE     �   CREATE TABLE pagina_web.redes (
    id_red text,
    titulo character varying(200),
    id_componente text,
    id_imagen text,
    url_dir character varying(2000),
    estado character varying(10) DEFAULT 'CREADO'::character varying
);
    DROP TABLE pagina_web.redes;
    
   pagina_web         heap    postgres    false    4            �            1259    24848    seccion_propia    TABLE     ;  CREATE TABLE pagina_web.seccion_propia (
    titulo character varying(100),
    descripcion character varying(5000),
    url_imagen character varying(100),
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    link_discurso character varying(100),
    id_componente text,
    id_sec_pro text
);
 &   DROP TABLE pagina_web.seccion_propia;
    
   pagina_web         heap    postgres    false    4            �            1259    24855    slider    TABLE     �   CREATE TABLE pagina_web.slider (
    id_imagen text,
    id_componente text,
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_slider text,
    titulo character varying(50),
    descripcion character varying(200)
);
    DROP TABLE pagina_web.slider;
    
   pagina_web         heap    postgres    false    4            �            1259    24862    tipo_componente    TABLE     �   CREATE TABLE pagina_web.tipo_componente (
    nombre character varying(100),
    descripcion character varying(200),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_tipo_comp text
);
 '   DROP TABLE pagina_web.tipo_componente;
    
   pagina_web         heap    postgres    false    4            �            1259    16534    carousel    TABLE     �   CREATE TABLE public.carousel (
    id_componente text,
    id_imagen text,
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_carousel text
);
    DROP TABLE public.carousel;
       public         heap    postgres    false            �            1259    16391 
   componente    TABLE     &  CREATE TABLE public.componente (
    id_tipo_comp_fk text,
    nombre character varying(100),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    descripcion character varying(500),
    titulo character varying(100),
    id_pagina text,
    id_componente text
);
    DROP TABLE public.componente;
       public         heap    postgres    false            �            1259    24905    eventos_promocionales    TABLE        CREATE TABLE public.eventos_promocionales (
    id_evento text,
    titulo character varying(500),
    descripcion character varying(2000),
    id_imagen text,
    id_componente text,
    estado character varying(10) DEFAULT 'CREADO'::character varying
);
 )   DROP TABLE public.eventos_promocionales;
       public         heap    postgres    false            �            1259    16424    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    16422    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    210            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    209            �            1259    24763 
   header_pag    TABLE     �  CREATE TABLE public.header_pag (
    titulo character varying(100),
    descripcion character varying(500),
    id_imagen_uno text,
    id_imagen_dos text,
    id_imagen_tres text,
    id_imagen_fondo text,
    id_imagen_aux text,
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    link_aux character varying(100),
    id_header_pag text,
    id_componente text
);
    DROP TABLE public.header_pag;
       public         heap    postgres    false            �            1259    16450    imagen    TABLE     �   CREATE TABLE public.imagen (
    url character varying(200),
    nombre character varying(50),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_imagen text,
    id_tipo_comp text
);
    DROP TABLE public.imagen;
       public         heap    postgres    false            �            1259    16522    libros    TABLE     �   CREATE TABLE public.libros (
    titulo character varying(100),
    id_imagen text,
    descripcion character varying(200),
    id_componente text,
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_libros text
);
    DROP TABLE public.libros;
       public         heap    postgres    false            �            1259    16510    menu    TABLE       CREATE TABLE public.menu (
    nombre character varying(100),
    urldir character varying(200),
    descripcion character varying(200),
    id_componente text,
    id_pagina text,
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_menu text
);
    DROP TABLE public.menu;
       public         heap    postgres    false            �            1259    16396 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16394    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    205            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    204            �            1259    16463    noticia    TABLE     j  CREATE TABLE public.noticia (
    id_imagen character varying(100),
    id_componente character varying(200),
    titulo character varying(50),
    descripcion character varying(200),
    url character varying(200),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_noticia integer NOT NULL,
    noti_ipm integer DEFAULT 0
);
    DROP TABLE public.noticia;
       public         heap    postgres    false            �            1259    16577    noticia_id_noticia_seq    SEQUENCE     �   CREATE SEQUENCE public.noticia_id_noticia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.noticia_id_noticia_seq;
       public          postgres    false    215            �           0    0    noticia_id_noticia_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.noticia_id_noticia_seq OWNED BY public.noticia.id_noticia;
          public          postgres    false    219            �            1259    16385    pagina    TABLE     �   CREATE TABLE public.pagina (
    nombre character varying(100),
    descripcion character varying(200),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_pagina text
);
    DROP TABLE public.pagina;
       public         heap    postgres    false            �            1259    16415    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    16438    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            �            1259    16436    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    212            �           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    211            �            1259    24884 
   postulados    TABLE     �   CREATE TABLE public.postulados (
    id_postulados text,
    titulo character varying(500),
    id_componente text,
    estado character varying(10) DEFAULT 'CREADO'::character varying
);
    DROP TABLE public.postulados;
       public         heap    postgres    false            �            1259    24756    seccion_propia    TABLE     F  CREATE TABLE public.seccion_propia (
    titulo character varying(100),
    descripcion character varying(5000),
    url_imagen character varying(100),
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    link_discurso character varying(100),
    id_componente integer,
    id_sec_pro integer NOT NULL
);
 "   DROP TABLE public.seccion_propia;
       public         heap    postgres    false            �            1259    24770    seccion_propia_id_sec_pro_seq    SEQUENCE     �   CREATE SEQUENCE public.seccion_propia_id_sec_pro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.seccion_propia_id_sec_pro_seq;
       public          postgres    false    222            �           0    0    seccion_propia_id_sec_pro_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.seccion_propia_id_sec_pro_seq OWNED BY public.seccion_propia.id_sec_pro;
          public          postgres    false    224            �            1259    16458    slider    TABLE     (  CREATE TABLE public.slider (
    id_imagen character varying(100),
    id_componente character varying(200),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_slider integer NOT NULL,
    titulo character varying(50),
    descripcion character varying(200)
);
    DROP TABLE public.slider;
       public         heap    postgres    false            �            1259    16592    slider_id_slider_seq    SEQUENCE     �   CREATE SEQUENCE public.slider_id_slider_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.slider_id_slider_seq;
       public          postgres    false    214            �           0    0    slider_id_slider_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.slider_id_slider_seq OWNED BY public.slider.id_slider;
          public          postgres    false    220            �            1259    16388    tipo_componente    TABLE     �   CREATE TABLE public.tipo_componente (
    nombre character varying(100),
    descripcion character varying(200),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_tipo_comp integer NOT NULL
);
 #   DROP TABLE public.tipo_componente;
       public         heap    postgres    false            �            1259    16599     tipo_componente_id_tipo_comp_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_componente_id_tipo_comp_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tipo_componente_id_tipo_comp_seq;
       public          postgres    false    202            �           0    0     tipo_componente_id_tipo_comp_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.tipo_componente_id_tipo_comp_seq OWNED BY public.tipo_componente.id_tipo_comp;
          public          postgres    false    221            �            1259    16404    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16402    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    207            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    206            �           2604    16427    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    16399    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �           2604    16579    noticia id_noticia    DEFAULT     x   ALTER TABLE ONLY public.noticia ALTER COLUMN id_noticia SET DEFAULT nextval('public.noticia_id_noticia_seq'::regclass);
 A   ALTER TABLE public.noticia ALTER COLUMN id_noticia DROP DEFAULT;
       public          postgres    false    219    215            �           2604    16441    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    24772    seccion_propia id_sec_pro    DEFAULT     �   ALTER TABLE ONLY public.seccion_propia ALTER COLUMN id_sec_pro SET DEFAULT nextval('public.seccion_propia_id_sec_pro_seq'::regclass);
 H   ALTER TABLE public.seccion_propia ALTER COLUMN id_sec_pro DROP DEFAULT;
       public          postgres    false    224    222            �           2604    16594    slider id_slider    DEFAULT     t   ALTER TABLE ONLY public.slider ALTER COLUMN id_slider SET DEFAULT nextval('public.slider_id_slider_seq'::regclass);
 ?   ALTER TABLE public.slider ALTER COLUMN id_slider DROP DEFAULT;
       public          postgres    false    220    214            �           2604    16601    tipo_componente id_tipo_comp    DEFAULT     �   ALTER TABLE ONLY public.tipo_componente ALTER COLUMN id_tipo_comp SET DEFAULT nextval('public.tipo_componente_id_tipo_comp_seq'::regclass);
 K   ALTER TABLE public.tipo_componente ALTER COLUMN id_tipo_comp DROP DEFAULT;
       public          postgres    false    221    202            �           2604    16407    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �          0    24798    carousel 
   TABLE DATA           U   COPY pagina_web.carousel (id_componente, id_imagen, estado, id_carousel) FROM stdin;
 
   pagina_web          postgres    false    225   �       �          0    24805 
   componente 
   TABLE DATA           x   COPY pagina_web.componente (id_tipo_comp_fk, nombre, estado, descripcion, titulo, id_pagina, id_componente) FROM stdin;
 
   pagina_web          postgres    false    226   2�       �          0    24939    componente_generico 
   TABLE DATA             COPY pagina_web.componente_generico (id_mivi, descripcion, id_imagen, url_dir, url_dir_uno, url_dir_dos, titulo, estado, id_componente, descripcion_corta, titulo_aux, imagen_aux, imagen_aux_uno, imagen_aux_dos, imagen_aux_tres, imagen_aux_cuatro) FROM stdin;
 
   pagina_web          postgres    false    244   K�       �          0    24928    estado_plurinacional 
   TABLE DATA              COPY pagina_web.estado_plurinacional (id_imagen, id_componente, titulo, descripcion, estado, link_01, link_02, id) FROM stdin;
 
   pagina_web          postgres    false    243   ��       �          0    24912    eventos_promocionales 
   TABLE DATA           ~   COPY pagina_web.eventos_promocionales (id_evento, titulo, descripcion, id_imagen, id_componente, estado, url_dir) FROM stdin;
 
   pagina_web          postgres    false    241   ��       �          0    24812 
   header_pag 
   TABLE DATA           �   COPY pagina_web.header_pag (titulo, descripcion, id_imagen_uno, id_imagen_dos, id_imagen_tres, id_imagen_fondo, id_imagen_aux, estado, link_aux, id_header_pag, id_componente) FROM stdin;
 
   pagina_web          postgres    false    227   "�       �          0    24819    imagen 
   TABLE DATA           R   COPY pagina_web.imagen (url, nombre, estado, id_imagen, id_tipo_comp) FROM stdin;
 
   pagina_web          postgres    false    228   �       �          0    24826    libros 
   TABLE DATA           f   COPY pagina_web.libros (titulo, id_imagen, descripcion, id_componente, estado, id_libros) FROM stdin;
 
   pagina_web          postgres    false    229   ��       �          0    24870    menu 
   TABLE DATA           j   COPY pagina_web.menu (nombre, urldir, descripcion, id_componente, id_pagina, estado, id_menu) FROM stdin;
 
   pagina_web          postgres    false    235   �       �          0    24833    noticia 
   TABLE DATA           �   COPY pagina_web.noticia (id_imagen, id_componente, titulo, descripcion, url, estado, id_noticia, noti_ipm, resumen) FROM stdin;
 
   pagina_web          postgres    false    230   ��       �          0    24877    nuestros_sitios 
   TABLE DATA           j   COPY pagina_web.nuestros_sitios (id_sitio, titulo, url_dir, estado, id_componente, id_imagen) FROM stdin;
 
   pagina_web          postgres    false    236   2�       �          0    24919    otros_enlaces 
   TABLE DATA           z   COPY pagina_web.otros_enlaces (id_otr_enlace, titulo, descripcion, id_imagen, id_componente, url_dir, estado) FROM stdin;
 
   pagina_web          postgres    false    242   ��       �          0    24841    pagina 
   TABLE DATA           L   COPY pagina_web.pagina (nombre, descripcion, estado, id_pagina) FROM stdin;
 
   pagina_web          postgres    false    231   `�       �          0    24891 
   postulados 
   TABLE DATA           j   COPY pagina_web.postulados (id_postulados, titulo, id_componente, estado, id_imagen, url_dir) FROM stdin;
 
   pagina_web          postgres    false    238   ��       �          0    24898    redes 
   TABLE DATA           ^   COPY pagina_web.redes (id_red, titulo, id_componente, id_imagen, url_dir, estado) FROM stdin;
 
   pagina_web          postgres    false    239   ��       �          0    24848    seccion_propia 
   TABLE DATA              COPY pagina_web.seccion_propia (titulo, descripcion, url_imagen, estado, link_discurso, id_componente, id_sec_pro) FROM stdin;
 
   pagina_web          postgres    false    232   ��       �          0    24855    slider 
   TABLE DATA           f   COPY pagina_web.slider (id_imagen, id_componente, estado, id_slider, titulo, descripcion) FROM stdin;
 
   pagina_web          postgres    false    233   N�       �          0    24862    tipo_componente 
   TABLE DATA           X   COPY pagina_web.tipo_componente (nombre, descripcion, estado, id_tipo_comp) FROM stdin;
 
   pagina_web          postgres    false    234   0�       �          0    16534    carousel 
   TABLE DATA           Q   COPY public.carousel (id_componente, id_imagen, estado, id_carousel) FROM stdin;
    public          postgres    false    218   u�       �          0    16391 
   componente 
   TABLE DATA           t   COPY public.componente (id_tipo_comp_fk, nombre, estado, descripcion, titulo, id_pagina, id_componente) FROM stdin;
    public          postgres    false    203   ��       �          0    24905    eventos_promocionales 
   TABLE DATA           q   COPY public.eventos_promocionales (id_evento, titulo, descripcion, id_imagen, id_componente, estado) FROM stdin;
    public          postgres    false    240   J�       �          0    16424    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    210   g�       �          0    24763 
   header_pag 
   TABLE DATA           �   COPY public.header_pag (titulo, descripcion, id_imagen_uno, id_imagen_dos, id_imagen_tres, id_imagen_fondo, id_imagen_aux, estado, link_aux, id_header_pag, id_componente) FROM stdin;
    public          postgres    false    223   ��       �          0    16450    imagen 
   TABLE DATA           N   COPY public.imagen (url, nombre, estado, id_imagen, id_tipo_comp) FROM stdin;
    public          postgres    false    213   m�       �          0    16522    libros 
   TABLE DATA           b   COPY public.libros (titulo, id_imagen, descripcion, id_componente, estado, id_libros) FROM stdin;
    public          postgres    false    217   m�       �          0    16510    menu 
   TABLE DATA           f   COPY public.menu (nombre, urldir, descripcion, id_componente, id_pagina, estado, id_menu) FROM stdin;
    public          postgres    false    216   ��       �          0    16396 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    205   |�       �          0    16463    noticia 
   TABLE DATA           s   COPY public.noticia (id_imagen, id_componente, titulo, descripcion, url, estado, id_noticia, noti_ipm) FROM stdin;
    public          postgres    false    215   �       �          0    16385    pagina 
   TABLE DATA           H   COPY public.pagina (nombre, descripcion, estado, id_pagina) FROM stdin;
    public          postgres    false    201   ��       �          0    16415    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    208   ��       �          0    16438    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
    public          postgres    false    212   ��       �          0    24884 
   postulados 
   TABLE DATA           R   COPY public.postulados (id_postulados, titulo, id_componente, estado) FROM stdin;
    public          postgres    false    237   ��       �          0    24756    seccion_propia 
   TABLE DATA           {   COPY public.seccion_propia (titulo, descripcion, url_imagen, estado, link_discurso, id_componente, id_sec_pro) FROM stdin;
    public          postgres    false    222   
�       �          0    16458    slider 
   TABLE DATA           b   COPY public.slider (id_imagen, id_componente, estado, id_slider, titulo, descripcion) FROM stdin;
    public          postgres    false    214   �       �          0    16388    tipo_componente 
   TABLE DATA           T   COPY public.tipo_componente (nombre, descripcion, estado, id_tipo_comp) FROM stdin;
    public          postgres    false    202         �          0    16404    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    207   �      �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    209            �           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 4, true);
          public          postgres    false    204            �           0    0    noticia_id_noticia_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.noticia_id_noticia_seq', 6, true);
          public          postgres    false    219            �           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    211            �           0    0    seccion_propia_id_sec_pro_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.seccion_propia_id_sec_pro_seq', 1, true);
          public          postgres    false    224            �           0    0    slider_id_slider_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.slider_id_slider_seq', 11, true);
          public          postgres    false    220            �           0    0     tipo_componente_id_tipo_comp_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tipo_componente_id_tipo_comp_seq', 6, true);
          public          postgres    false    221            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    206                       2606    16433    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    210                       2606    16435 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    210                       2606    16401    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    205                       2606    16446 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    212                       2606    16449 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    212                       2606    16414    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    207                       2606    16412    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    207                       1259    16421    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    208                       1259    16447 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    212    212            �      x������ � �      �   	  x��VKo#7>��
�J�^�b`{�d�zڋD�������r�Ia�L�8CQ�'��GQ/�TH,�U������J�i�0OӻO7��p7}���i���Ka 	s�A����!29߇)C�Z�jd�Z�)d;;u�f�%P:F�ؠ�� �����8�M����6�s�l(4,�6!�0�(�)&�;ɰ�`g�J"v�����r�ŰF�Lݮ�,B)]��YR(Ţ:ͳf���n'5�l�zHZ����n�煗v��ղ�6'�[ћ��X����v��(W�>�^J�X�y6�I�c�[t9�ѧ����	y�l�ق�� x&��=��b�%�>�{Q��ޜ�Y}�:�@�
���i�Ώ�����23�+�_W6q��Ps5Z�R���M�XD�Y5�k�ru`yK�}W�P$�&�)L���Ӿ���&8C0Y�z`�<P��ʰ�j��i����.�:�s
�2&��T��v�N��K��ze?.!�Y�K����]�*b��A����J�\qnF� M��I�d^��>i��͗q8_��ղ	�qC�iE
��	��B�7N�
�.�*�Z��Z�jP:Zͬ�"btu�{n�q�7�Jϵ}[ѬU�X��R rF�G�4��+c�j���ym8r�ۨֵF*kh��=�I)w�7��y�׏oߠ��MAla1?��)i�X+3;��T�mk�	�iُ�����?����s1Uh��+Y��`1qs���#�?�Q�O�w�_�#�Xͬ�(U�r5�0M�~bSmJ�B_G�sw��aRu���w1}�ٴ"�&�g1oNgӬ�����rh�̷�F��X���<㝭�j�JJ��}�m�>,'�������Qre�*�����d�'ڡ�@J�6r�SWg��/�MZ|JV�Չ�0� �@T�2��_�y�r��x8����Kj.X��\9l�i� _R��m���"��p����)7��Em�"$���n�!i��F򑓍�����||�z7�n�V�`�D6{Q{\�t�xaխ�R+s"�?7��o����      �      x��}KsI��Y�+r#�� @�$��.3�B�XF�R�Z���Zdf LV"�J੯{���a�{�����ҿd�s��| �R?���*�2�����=fG��V#�ף�?9�g��?V�a0�g� T�q������?��gߝ)�}�M��(�I)/Ա����e\fQ��(MT왇�Xy�\��X+�L��<VEt�ZOi���'=�{���s�{:)2j#ͽO�V*�_�:(���Wk/���*�#��U��#I�iޣ�U�-�TB#�㹬�_�'a�� ��%O��I�O,�@y�u�3!&���У�Q�w�F��xP�E��j����=CMӟk�)�J�Д�hѯ[���K���z�E��������7}M��*���*�8��T�:M>�Q�ټQ!-�[X�h`*�aG��Ln�f�+ZM/O}����"Sŧ���dۓ�M�f� ���K)�O��Cc���h�4����r���[�F��'�8
݌��>=�.��P4��W�D��>�M����AA{�gmM#�����M����'�Yj?�v@Zz����g�����u�x��.��˫����S��������w'����5�Π�]Sk�R�&���,z�%:�F���sS�UB��Tj�fc�i�j���Ā��i��0%��.Q �X�+!U�Z�h���l�i�3�����7Q�����t�_���<��h��8������ei�zI$��D�4an�D5�{z�-�rꩵ":�gD���F%�$
�����uPӛO���Dk������KޭD�÷��e,sU5D�%�V������hx'�;$8"C�<e����a�!+n	r[�Sb]L4��s��'���+fi���+�Amk�s���O��z���*�T?���f0e!FbՂ� S�{W�`��	\�<����PA�B��(� dd��h{JR�C/�J�ے���+>/TlǅM�Q̓�Tَ���#j%��Y���.Z���p�����S^1�]�	�+-E�m��y��R�?�2!qAp�#b��3�e�^�<J���է�L�"��4� �6Y���)NAZ5�т�gC!G ��W�(q�-�I�]�W��j�2O��'�Iz�̦9]f��O�����5ѷ)-]�YAGS+������2�=U㳊�����_�o���C�o+��:�h���F���!�^c=���0]�t�N��hN �݀.�O=�!�%�'5*vC�l$I��Ԯb��t5�M��_���v������ɰt"�Ǣd���U|�c�d��W�X[�1KVShA��r��c��#R��ЅݼA^��RK܀#u��e�� 
�)��i��h*�P�5���L��IY ��X,7QK�Co̅�XF8Ae�5��z,כ�>x��A�xb>
�Idq�B�%�@V�3�4�� ���nWp�h7%C�ǁJ�I���9�u���UF�
~��щ|qG�g^D�.���Ϝ�K[�RI*^<�6�z#�YL8�l%��F�S{��}�̵q�8J�^�w�]�Hs��w{�fY0�����Uh���䈺�����̸9���+����#7��\Go48�~1��+��@V�� ^�����K��N����_�Z?��R�&VI�4[��^���:�0�c;��d�ԑ4;�pv؟��������8�2-��ɿ�������-i��ۓ�����œ���x���i��O¥ߟ���tv|8=<-G�������8�,���,�O�j�Wz:����?::O�'ߖ�w���w�l��9��e�?��Y���J)�U�6AK���I[��!e ��f�R��4��[�BA�q��m	���ƍ���7e�CY`2PY��1o+�8�*����$�Fcz���P�����y���OU��L�:I�M����0�H�[���F��C�6-���1g�Dִ�Vf�t	-���xDv�^�!R/X�$�x"�i;E�\e��m�/��f�6~���yd��F`s�F���LB�՜��z70zy���q�j�g��5���`�<:<<��?�O����m4�ly���ナ5.���Թe��ax0����;���S���0�ꃣc�DC��o�k���{�xu:?��.�濻�x������]K�y�K���ix8:&�>8�O�Q�a<��C?���|Fw^@2'���,���ˋm���O?�����:�nQ���ھ��������Lm^x����U���huS�`��}�e�#?-�t��;n�� %�兗�����7>�y��sꄘ���M��_"Ļ�qF��k:L�:V�}��;�D|�K����T$[9�֔�}:���i���_x�C�,`�/��c��,m�7�V�7u����ڴ���e&��7�:����/����4����h��
�V�t���|���vx��>E�6��D�}��
͍����ί��4���!��cDm�A��Gݧ7�󽯂WYZ&a��-���g<7�!&$�� :�7Q�#�9(��@����Y��7���}W�O�ҋG�4J:�NDS4|�ph�{�!5/�7�����Ϯ�7fzm��z��
=�Kj�<E���Z��v�F����TvI��o-��b;���N��g��gӣ����/t���xCVe�y�����V}5�y��h�'|`���{��Cc�������2�Ci����j�����<���l6�.=�3:Ő���w=���L�Q	V��Ӛ�[+�7��}GN�����!�wI=���|6���h���`�i4��㱥�����H&T?'�k�Q�h7΃���v�6�3���h��}wqu�zq���7��}����5N�e�2��#�Hu����������r�yJ3+V��)-Z1�S;*M��#��vR44�i����#Ͼk/�V�i:��*(���y$�&��Jo���q��P�钧��-�b�*SWF�H�ȺO�4)��2�\T��Fel"�kg��3hљw���_���H� �c3����>�v2���B�,���$�z�kϸw�!@��kFIh+Z��_�ZN\8Ř�#R�"1ئ��:`�
/��Fx'�/^s���A����{؇)�	4�Y5lCB�.Sb�z�;g�&�)6|Z���uo;���y�y��*���|����Z����_��Yd֏�gd=�m�v��*_#�%t�(�0�����Kt��%������/�3y�cZ8B���-��~YF�aR�:�صt��si,E����C̙�V۽x��5�O��8$r�Al:���l���ӂ8��ۙu�C/����x���!��#m�'Ծ٬%��eD��'��{��CZg���&ҙ�UZ�Tudwzֵ�3��p�&��*+J���6� ��5���)�51NWc[��!�o��Mʾ�$΋1�%$�H���%
, ^���!K/�=�ͷ�m�p�/���6�a�@�*�Gp��6�y�o�:j���Ӝw�枵�ݰ���k�(����&��H��G��i��%,�)\���}0*�mXd3+�q�ٙi���9���A��3H�g�v(_�)�'�~x���-u�G�?ꌟ4�:W��Ŷ�9�7��w~��H_�����w�3���,����'�˫�������Bgs�jq����˳ӓ��P��s�?���r�P���b�=YqٕQB�k-�]D
qƮ�M���c�țb�9����J�|��m%ľ6"K��D��g%K^��x0�li+�I�"�CD����v�[�kF���xe7Fw�P��L���H!��u�х�YˉMT�A���G�5�L��+h�q&G,De=4zo��2�֩{�� �㡶
�M�p����&�BQTE��j�Z#V9���r>|��tZ��XtD��(s=����L��p���K4Cv��n��%Ț&��k�ǖ��Y�f���0�Peyf�b�0R 㓬�����T_
݊���
���hdž��}�R�1w���=�B��N��R�����U��a�Qt���7G�.��7㺦M�#�\Vl@o[x�|U�5y�h�33��WT��lŖ�30m̅�    � ȇLe{V�s$�ť^Ys�Cf/��DQ�.#F�0�붌Œ��fy�;(�����0��ਹF��n�7�O�.����P�X%�����h�aݙ�ȅ���Vb�t6�2x�sf]R�g<"�(3e�{��}�3KR�l�E�2	8��3��� � I�m�]M�)�)'@_��"�"��թ�=96��d�t^�����r����1�*3�<�/��������Kk�G�p��B�
X�޻��b�*��@��Fa2��N�0�F$Qڦ�DPB�v��7֪�֤1>�_\)���B��Ϊ�S���&qj��D��� .s�����[7{���mݐ�8;}sz>?9}z!�zN�͙w2�z}ѰyNN�g�W$�f���x��Q�:��3��ui���2�(w�1bR�]����EFQ������˧�nX#����Ԁ� �qM�X���� �+0WO �VN�h�(���Оg9t�M·�X!Ƈ���C�#��W���c���c�.oz�� ��f��:�vu2�wy�� y��g�l$_���̮j��l���x2��`;��� m{�B{p8����?Uf��>X�Rt��y� ���`�Ҹ�R��ty	-�^����=��/۹��]�{C�]<IqF]���k�
�A&��:��Fv"����gNF�{��Ԁ
��=o�x�c�".�s�'ʇ�]�P�Tr�1��e[��|�zl��7U�th�����:����؝���+;r��N��is@�B�]�a�m��#	�:w �~WWadG�����6i ��>*��e�(��JZ]h��=g�0�=��.ڔ��5�g�c[n� *i�9W-IY��/Hϯ�Gt4=�rT�h�Zc��S�5mY(
���ƾ���'��¾�V�[T(#>��3Y`�|Q?�kF�ٝ`�����V_x�.'�-�ZºKk�'f[z�l�w�CT�s^H�� 8ɨVx
�Kb�-g.H�57�#wN ]��yZA!` i{�t")6b,�ɍ�t.Z��5�bX��Y5�(D��t��)m���6eÒ��j������)< { ƭu���{ƻ�X����Z�&`�զ��~�� ��T×��枉Q�D_����[�-2MC�c2���_�.tR	[xo������5�]�z�=�ß���]SUR2����I��:1�xg[rbk�A,,Mn�V�ӡ�oƎ�.�����g�
�l��W�SO��(^��Μ����[��z����JR�����5���G����񹨘�8��]��jص@3"VB��\�]&3�l�EW?s6�giҙ�I�	i�L�u%n�YW�������3tF���V������{����8��4V��c�絒��A�.���u���y�]X�Ҧ�oӳ3ʈf�7%��6�"^�I�ФbmL�\|���~��K�g�#�9T�m�Y�U��$ȵU
o�"����}ӦV=�R�"�4�ZdP�S�b؝B��P��G��m���뢹R���R��5�×�F���n����O��.�̽W��g��r��g7�G������܎!�VG�CTMH3z�2YF+����HS8��w�T&c���Ԯp�f)i��N�4���cP�A�v��Q=o�B1I�KƧu��͋5tU�����M�~WO��VT�*L�9+�F9�9|H�v.	2M�j���c3ǺCG+$,EK���]B��npSz���I���FV і��!��i:�ؼ�ir��.��\1�
/Q�������x<I��@rO�ݱ������hkl@kN"��G%<��IX�z���<`ý$�)gO�5m@��n��9�1Dn'j�RϜ3���ye��������Cl����&��VE'���u�?F��ȶ�Ϭ�!u%�Ʒ�fӓ��+(`���䅆Xw��B���Ez���}���^�J�o��`&�^�6Z|Qdc�G�����~�XJ��IZ��-��}=%+kb���xO�ױ:��_KF����\�5Y��,��^�RŪ5��ei`WY҂7%{�I��佂�wW������k<s�\���O.H��F�:=�p���Z�-���2�|9�xWq0`.u�ҫl�T$ ߯���!$@^��q�\�޷��,+\i780IR=S�g�Ǌ+:tf��'�[UOK�zZ�"����V�}�S��P?�(q�6"�^=)�3͋=	E�%� L�Z����)#��1r��(���V��U��z�ڏ��}��8����Q�G@�*��P��}q��QP�z٤��*�\��g�M�xfl@m�}p��N�� ͌� ��q�Y�y��zDʖgj8���@�ezU�9k �a�r��\WE�}�$\��dxMk�{5Ȗ���%+H_����B������+�Xg�����vGn ��ihʎ��ډ01
�e?U����Vnv �(#�3ї2�P(��X��F��'&�� cV�+-�a��+*�F�š������+�5a�yV��R�߂.	^�0��� M��3f�@�qf�S�'�#���Q����X`���/ �Υ�`�9Hp'�8���<B��z׶��(��w�lO�k��-G�^!�+��qڳ�i|yqEߜ\-�^xg��B�s69|��Ļ�2��D�c솔��}k�[K��T3o!
$tu�2���U"�r�]����q�=���{+��e�7=�YqIѬK�t�b�!�N�Jo9(�7QNga�Ӳ}f�(3º��(º�J:	�GցϪěj�68��ꤷƃ���Z�ι�R���
tZ�|&��3Sy�$����U���9g�ye&}�
%L�w�gQl�ӑ��C��6q@Wx����h.��8�Ks���L
D3�Xӣb ��
qm���,El�G��T���ܞNR�Ε�����h(�0���օC��o~3��F�-��/��I�0s��}�.��(��E͌BL�_nr�@��"c�r���Y5�n0w��:���e�z�aϊ�Ã��NB�\��.%�����_D���m�����c @ Qsz��و�K�G����+�8u��ɐQ������� �&R��Yܰg\�6d'rڊ����� �}�}�*0���b�6���;I���uꬕ]��ӹ��7�;M-�L�=U͙ʜ�s�۪�����;.�:�FbcG�:��h���54r��J�8�Y�G8�P�1XD�Ҽ0G����A���b$>8$��8V����*1r63�*b7(A\����s'yi�/ٕ�6gL��>!p@���:;�%�-y�:B&CA���*ZF��t�Z���.\ ;j��&�Qw�����aM��:��>��Lq҆b�s�tg�� �2f��>��k:���h�h�h�?i%������������TH�U4�����%!���>M�m�,�U��T�~�2�E����p����>�-)׉̲�>-����>ذ�Yq�i���+��5?=�wW˔e����:�o����Gy��%��}R�5�S���<�7�(�%�C;��;�!���Q��Vo�?O|���^yy���MQl^|�u+v@���O��q�I�5=��8S����`x�<\��&Y��݈�q�a�y�8����9ˤ�NC0��f7^�,"��QV�'��x�>�s�k�k�k�k�0�(���tr�梎L:���h����������Μ���1�햆~ؕqܓ:\r7�g�8*�m����@mW���������8��8U�`���m����y�m��-�qy����Դ�_��A��Sv�I���"�m4��;��Ϩ�2�a���Y��� ]�׈}X�6pnl�l�@5��g�/TF��*��m�X�e�/\�z�^�I��ک�VZNӓ�xlrI3BU�룈���R��n���q5���Oܙ8��K�e��׋�(ݖ���2��V��P�Z{�����Z�����N��Ԋ.��6�k0n�"��ܢ�M�{�.d�xߗ��� e9�I�{���\�м�������u���)q�<�S��F�gj�x_�^X��H7C�5�Zܥ�����A�eU*��۸�M��h 1  س��M0����.@53m�����(�묶��i��3��l�,�y_���6��WCou�q7�������ta��&q_���3�=Ze&�e�D�\��
�e��Ld��#�	�_u�
�,�k7�&&b�|�vU o�4��vo�fm���WU9p�Oϫ�zS&\ZH��BLo���ZN�����������t��8c���<?
uw�l�d4�;��9D��7&���h_�2�5�I�*�Ҥn,�@��#���$��!Q\.�OL�JoTv�L5��[���%�h�9t"-	�Xq����sM�r	�5j�۪1g����WM7���(�r%!���SsEcA���*?��t� X���.����hv.}b��+7=$����Z�uy�B�r�	w;'ãP��1���j�&�s���U\�xg3�"Ek+)S`�LU�]�j]
a�����*��74YrQQ���6�D|�7'����S���>�Y,�~[&+��0|�Q^����,4���Vc��0�*RD1	\Eϋ&Wg�ye�h�'C3;�O^436���%�آ����i�&�%ȼ���=�+U��	�P�h٦M���ДQ=��� �{�)d�o*���/��=:<i�痙j�GTW�`��QAZ��ϡ�tg��a���D�rRj��^�"�욤��^G�0�3#uzndh{/����턔TW(���������)%��ɍ�Ljv�Z�9{���z����7���mMZ@��.y\]�ig�TL7��c��Ā�7UA�����,��qWv�U����6ryuz�����;�d����bQf뉭��w�k�ĭ�q׬�`�.��l3+G�O�	"�L�F�Bض�� n��]S�N�����( )��� �:����L?�؜��XX��p��%CT�(�qT�2�\~)K�~j�vge�#�ʂ���\H� \�Q�c*m�`]��?&�O�Q�;L�Sćj�J��-c�`^�W��B��or�V+��Td�Y��%7H����-H��,�I�����7u�	I��c�C���W�{a#�2+.�N�KQ��i�Si�>[�JMϸ��~�
�Br:��\J"�1���df�{�7MK8��P�(\�-�.��yi�[ʩu�z|GtQ��3o�UJB�u�ED���ڪ�NӦ:Ci҆SZ�i�Ղ�!Gb��ԀiA��r#�QW��:6Q`���͞g�DnopA��7�(���H��<;b�m�� �D�}��l�0�S&�V��"%��pU@�0H���-us�fd|����:)o\�jkҢj��C;�ڞ�?�بGj�nMjr����v�s��{7�`	JT�M����T���	8�M}��L�}���D�6�[Ц����7{��nZ����O�a�n7}��^��3f1Ŝ�����!v��];h�G�@�Ym5��.�VoAt6�J�(��BZ�D
���n�f���R�_����`�\5?+�z�5�|Aڵ�b��/�u��+�Ю�aސLqw�=_|/I$˪W^o.�R�sM�W���N�vԷ<����;��̋� @S��$�)p���R�_+��	i|+�W61������1���N����GS=�O�Ӿ������P���L�յ����;��ڶ�����b����r<N��p��'�����e2��,�&C44?Apsq���ū����wy6�݅����oO�_\{���oO߾�0���y5��W�t�}���c��?9>X��X���r|4����t�d�܃5�`�=Xs�܃5�`�=Xs��e��>��=���{����k���{����k���{��^cރ5�`�=Xs�܃5�`�=Xs�܃5�`�_ԉ�k���{����k���{���5��xt�N�����O֟L���T��C5����gkN�j�N����pLc�a�'����H�M���哿���oV���ݞݥb��Ͽuq��Rʵ����r�Z�|B���|w6�z>��Rŉ����+S8>���ϟ�8Rq�vfñ�F!�,ո�FHJ�r���ϙ,[�
"uB��f2�:���J�"�`�P"g)�5�T�̹�E��Zʯ�V��2W�[�1�D��+�;���]�!�8�P�A܁IO7q)�>�8ށ鸵���C�'ZE|`�&0�0|����*m�9��X����n��$%��G���g�!�ݷ���q��v��\ob{y-��@�h�!̀�D��%	e}pd��ZV�%��T�Q�_�mPߐY�;ڍ�K��Nq���Y�1h]!�e��eݙP�����d/��+	��S����m��+�q�p�b�iSZ!�	Ȝ\��A����2sK�U�*�c8 �(8�f*����tbר�@�r���%т]�;�ٖ6��������(��XF��x��M�Tu������ezݢ�A>���oZ���ڜTR{W�C�����0(M�����LמE$;+���������|���������~�J�= ���A��y���WpӼ�:����u�W�~QRi���>�.���jEg�������[D*߷,��E�VR >36�W���������qa�zS�p0�v�:j\��7Xnu�b�C�eo�]+�X��07._ +G����qHU��я�	�(�x��5��m=�}�VAV삖�oC��$C�	�e�a�a�o�#-QT�0Č�Èo�d_l�mqvQ�w�9:�Y��4:s��NG����N/T`@��iS
�<|��ă�V&8��*H{���J	��ߒ�!���)��E[;��d�k��Au7	|��ZK8���������3n����=�|�-"[�4㎰���*a��d߄�a���:?IށΨش���6h�z���tPfP�ϕ�Y�-�{�*s����A��:֕�2>v<�b��v�&1$�D֙�2MR���]Ft`��.�H�`�z�G�"��,,�=k>���d���R�t�5�%	�^����޸��<٩�uw��+mr}8��箦�݂G�{˧5��R!�����7��6��D'+ܜ�s�py���W5�ؔ�t�ʔ�����_�Nv�����T6�5��ap��]�5�9��I�h]�;������� v�cE�/9YcH˵��W�"��E���&����n�FF��!���~i��6;�qmj��&
�xx�oB�S��[�n!��K��!UC�M4��N9��6Z�jMM%����uA<��	7L�Q�s����G�DAf {��2�T0�h���lŘ/�f�;.��ܣ��Y&Vߺh����I�+ͯ�$$��VNZ�	�,�����qK?��ឫ��{ğ�����?Z.���pv���z�Cu<;�up4�gE8���W������Y�      �   N  x��Z�r������UR�H� N.W�@��2%є����8����.Ndd�9��\]�r_��zfP��ρ�v��$
fgz�_�~�830�^zb��G&��ң��i:��,;��z�������>����Ϧ�V3�Ҫԩ���L��Uf�)M���?��ʵJm��o�s5�k�Q��M&ϕ|4u�YZ����ܯl�su�Qu����)V��Օ��7j�W�|0�kSyYє֕ƫ�I���x�T�-qD�J_ۺ��ܕ��Q5�V��cf*��ml�+���3�7�ty�װ�gVniJ[���w�ej�� ���ZT����-�����2����W�{V&����h�����j]���.���;W�b?w�p��)7������xL]�I]�x��SiS-p�
���yc+1 �?@W���L������V:��N��;���*���IU���3��0�ˬ�5�O+s#��駖VEɋTX����֙ �������7�f�SW8������?t�:��.�ߡz� F`�g6w�B�����n��lA[d�� ux[�h*\�Y����.�X�f<H̝���/3Ղ�+di�5[�y�ۉ7Ւ��H��7 ��)���ՙK���7�gO���s&���S�3��lR�/���'�7�w�`���1y ��i���Al�հu	���~�%���+l��S�k�6�]����k��5<�������'�<ڠ�$7�R�q�R��ו$)c<,nY�Qb4�/bd�?ܩ�Ӹ�:��k��MeK������nm�-=��'U8��1��1���`����k�;�,hv9
�p4���kb$�F�,D�7��
|��U��8����
�r���w�Cuj|&���呃�]���(��5���$�!�6����� P�6b���0���+��H�7���!W:E~�H��q��p�y$��{��#�bLyQ|�� 2���bS�����7�|�;�� G�p7~�k�R��Ko��&f ��� 8�TFkp4��u�!kJ�^,�%p�i{
|~�Zt��a+����.�������_l� �R�ߧf�zC���((xHXD�s�<]"	n��g�=�9�,`�%��E:�Њ&�+l�5�����me��ǿi�d ��U�"���hԻdg��23A���ⴭf�)@��c�d����K��}�LW��.�f��zD�}��t��x����a�P���-{Y�g\Z7�������b�A�-៲�T�jn�.�ż6��������bD��Q��m�MJ�6�����b>=}}������dp��,���%��h��&�d���G��t1�Ar������nj̰;觺;�,]�,#��sp:}��T͞����������m��7������W[�6��
}��I�j�@) ��̏���f�f�����Z��ǿ35 ID���s�]Y��y�Ij�$H������|]h�ܸ�9���j�e�3V����&��N�%��2��$�V�|��3��%H(�(|1s���6&����N@j�*8��l6F�lY/�nߧ�(�V$%�g[��~m����8���eC~��I� T���=-6w�����kTq�=/�IO��5%��V�8�;��9��(nԔ�^qK�2
��D�{���xKHx��|q�Ꭷv�����Aq�{)S���E�m>�1��ˁ��2��p���i�,�Y�>)9k�isW��b��!s�Ҩ�����QȺ��W�Ld�WR�\K&"��T�u/MFv��^�U+�^W\.'��j���Q�	�'OCyz�4W������2R8�Ӊ���|�#�ޓmF��`�V��_��|>j�dx��Ã�'�!��<J���h<I�:�aQ�,��4w�}�GI�e��_G_����~N���۵ttȗ�����Li���������,^��w���.(�/��Û���c=�FG�;�Qw�f���0;�l�%I��q:�z���n���d�3�=�F�P'�T�����������5 {1���V����/Su����bzp.�R��R5��.]������g���p��T���zC�Ջ{=|�s�m���p�ղ��O$(6ئ?�Nh�����7� ���^7k�d��$�T�j-�U�9p=�b�#i�0E���\��,�A�Q��v�+�[�^�d2�oVl!^^��=�u�
�C=c�B��|+���pJ�XFCf���p�o5�����W�!�v
	��bg|�:�%<~� LQx�m���VM�V�m酋�Dn��eV)ٴ�m���J2��L��r�2�h%Vf;"��eW�.�����~7ȐJ��Y�cE���e$�misA������Λq'l�V��[j�u�M֡V��2���z��ү�w�95���S 9�d��]�t�3v�,A�Vf���DA��PDu�d����SBxzA;���LNj6fb9����-WWXQ��1k�֑Qq��a(�k�(U4�}mZ>޻��*��h��{6�_�z]6���&ׂ�wevŮ*&څ��>$�?�� p}�d�zZ��ܡa�gH�J�N�mV�)HI�ϟ����e���k#��Q�����A�m�H��n-͍�
�Cݹ�rh���g�m'D35:>���@* �+nӟL��k2NN��joQ���y�w��N?;����+�H���K�X`��iq�V�p�����X�l\E/s�Kic�A)\��^�U���}�j�v�ޱ���=�4	���9_��C��'�}[h�Q�ǃ�aF��ֵ,ᐎTְ����3Vw���v)Y�[�.�*�7��BCl���¢kɻ ;Q-༕�z�=�p{S��P�2�T�+8�ʥ����"}cM��է�&�f-��(V��d��q�"7���g�+{am3�g��3M��W6k3J'P�+I�PQ0���w:�(%�2k��R�H��	E��G��M8�Jk�d�_�q$��rjég� ���:�y'�ʼ�����=M�?җr&�jf���Wq�U�[I�(;�Dɘmȃ��/T�7����f��S�BB���1m�2�����H����c���q2"��;�r���֢�oXf�U��Ԗ"�kS�$wR�B�ߘ�I�x����;)�{x�.���`�!X�c_[�qA�l۾N�4��»q�K��|����u;΍�~8�Er憌7w>�&����;�����Ñ�4�{B?��P�l���P���D�Tq��J���2u��H��� B�ZK	��hO��n��BtP�`sb�{����Aw`��Db�L�e[q�]66PL��A�B��,N���K@����E�Y yT�!]�2���[揖�:���E{T=�h�K�.���oFry ����Rt���	H 96L�^�fK���VQ�"h\�o%�!L��u�˶ۖ�ї�1����0�!� ߰H�eVZB�B��E���^eَ.v�q/X�5�LP�Xj��4����X��}�a�P���-o���ߴ�{�j�~es�~s���3˽	�|�.S4l˛�h����}��q��c��!5[�!�S��괵D���!9J9@��*�s��ys��k��m���{��z|���Y��c�u':K��������b8x���G��t�@�      �     x���1N�1���)��K�q̆�$�.�� Ej��If*e���v�5�5� �0͙���rڞ����x����E�0��T��JV=�G����T�螁�]Vj"��Z�+j����t������_���[��G߿��wA�ݠ)!P�ݩ'�U�T�e��X�s�}�������GǦ-0���n� �XP�\y�,BZ업V큾�L�5y�!l�Zvl�FU��&�X���u��e�U�)8�����CQ�h E�z�r�92�V���W8�a���~ ���      �   �   x�%��JDAD�_q��{���.���k0�]�u�~/�*(N�K��u��C%�n?��m��/���}��_���=~/)8:Z(98[���lP]��7J��qBo���L
��Ϧ�bi��aN$�ln�e,��Q����L���R ���17\Aj(85�2c*w�����42�e�饓�������[�|M2�g9�7&9Rn��ʙ�l�D#�.��W`�����8P������m�	GU�      �   �  x����n#I���5O�/P3��%}ъ�X��,�荞�?TO��_i��F����'##��_�c�7o�l�:�
Fj���xU��������\V���T��a��\�s�y{Z����xS<U�R��)� �!�$��G�)K�S�G%��	iE�>�!��ynM%N8�RG��p菿�X)w�|d~�9������./�����w��Ȇ����O�jq�&�E�#�H�P¢���&J0���1D�X햶�t����˥7���ׂٴ��q���w�r�?��?�F��I���c�ew��*��e��D?FV,�����ٺ�^�q�<���{���!�M�����F|�� d��p��q�o��qy�(�U��1PL��O��/1.j�J2 w���{D��|��N���A>��۩ܑ���j~xy�eۛ�<O�{��ʇ�L !:Є)���m��Y�����n{�aZv[N����ۍեS���M�Z���0�J:�
p�
(�.�!�#'^G��ڿm�a_�JΫ�˶}�\��[ȇ��}0B��j�}@��c�2�
f#�U4�Q80��a�61�Fi�dA)���%� �$Q��S�����Q���Nmn�Dd�4�/�[���iݭ^����V�~�*8��_Tq<BB(�*Z�3�^���
%H��~	��(��Xr�*���z���޾W�@��mP�� ��Qef_'EX�%�����)7��;h#�
���:J8U���
K�O1r)�}\R�b��	��sk���~{�g��;u^��륺(��L+{��8g��y^����3aI"L�9�0Gi���?�kun&�J�s����H��Z(�\>���}�藟�.��LP������
�I��)f�&�1��a���-,�,/�x5�=uњ��*=��m���<}�Ս�(V�����z%�ݷ�'�4q{�YTظ'I 1���q\9�kx���H��B�b�M��(��j�����9������/�b�f�/eQymV>����Ѽ���Z.I1X;� 0���9�3$�"��x�B���ْ�+�K=��;�kexj�z�nz-}p͊��d�/���=ျw�S��%aCaTQ�����V��$�����*~�[�ׁ����w=�����jtɎ�ߎJ`VV��(!��B>���
dap�Q�ŦWW�]}�޴i=]��Vz��es��~k��jP|PM��p0��D���H]"�*��&J�pAҖ"��7�Л�|>��e�����h����kS��җI�@��as��[�y�����6O ���������'IC��3\� �@��� ჈�ꫡ�gh�w��sn��l��n�|4å�츍f0<E���U�9s1�m���K�����yH=�<E�AUo����νt}y���ݫg�|si�i^!��-�6�I	멃?	�Ƚ�q�+	�vT�6�A����k����И��j��k���!�L��o����험�B��ϥ� *Kt��T	&&bτ&B=�
��[O�zv��#��6�.u���y��s��1�j��~
]I��G��!1� { �Q
I����D�rVaL��� �����_+|Z�S�Г��.���b�_;���:��t�2��v����x-�k�T��(�;gXC��-&.xD5�1�����*����k��s�6춅Y�.;����l_�\n�U��i>�j�ҧ��t&�ω(�]����	��ŕ�!>�5{9�T�!���p:������V�uRe�MY��WZ����cJ�+DJT�m�$A��\Z�}��7;i�|���7�ܡAy33�Pu��Ѝ����w�~^c���Q)���w5���}�^"��e1:
(P��	S�=&���׊��� ��O@�A��Fڢ�P�ʹ]ej-j�紺Y��լ��e��x��_�?+M#?�E���F����3��{��'^��>�?x���
�A�뼳l�����.��1�v�'yX���gi���;Z��	�	���Ak�	�S��}��ǘ���eZ�fAwn��;JŴ�U��-)ll��F�?�	�����,�z�����!i+h��Bȹ�Ńoq�d�]O�EAO�.��u��uyn�3W���z���������	F���bHB��L�Ib��	�(�H?�䧸v�g��z,⪬�[��oJnoE��¾���s���ǒ���&~~}�:��d�9��4�V�]�i�s	{�{��B�k�ר��־tF/#��˽��V�}wz~[/�����%2'Zd$�� �LH(��IԐ�RX+�},}.��.Xz�o����J���Ϡ��\5f�mKS���y�;*f��x/}�T0�8��	�A����1�w��R�ch(��is���8��G�/�T1/>��jΙ����'�q��࢖BH�m1	a��``P\��0�d��2@w�^�{��߱�NJ肰=�oT��Mky+�ɪ�&�^��^uϛ�B,߻�;��4VN˿���Q)��X�æ�44@���C�'�J8FZ+4�b�a��e,���`^�T+�tq��9L���R��W��LKZ̭a�p�?�l~{>u�C@����D���/A�V9��cl�T��U������y3��6Z/lq얦%^v6{����Y������o�ӑP�4� ,��w��F�����]W�� �����'�p��c:G�,���?d~D��y?؞�2�s��;f������?�"�Qpdp*�'�~>V.�H����	�<zf�1���GX�f*��i�����������Q,=��o��x�T�0�N�[��[���5#����o� �u2�>W*1�� AjQ��`a�< "���@_�(�&� ]��$Xm[��`�n6��
z�r�5����j��`�O���"2"��<NX�QBU��F=C�au0j����.�ީ=eo���m��t�]y��7z�tnr.�����k�h⽑�c8������?��e�      �      x������ � �      �   �   x�eα�0й�
��
�P��t�`!��8��$.N��$��{�j{��6"��B���H-u���/���N+��w�0m-e��DV�Ӻ#�*�n���j�rw??���@��'��e�c�3�y��4ObΆ���4x�,��(�qʰun=���]F�G %�
��{��sA8      �   ]  x��T͎�6>{�b�	�t-Y�GE�Ѯh��P$mI\�� �>Q�F�/֡����k�زg��/5�F<�3GŒy3�27�r�Fq8q:���|�y�g\1S\�"O�������N�R��(A(�/�EE��;	B�Fr�aQ�!�i|�(�lDٴ��s_G �Q~%|\�ǲ(�P��c��E�����W{j�;Y�����v�S�)�Uj��k?��>����y�,�������1�w|��tY�ҍ�|'3
��A$]O:,՜y܍Y�s\T�������B�i�ɳ��"[�e��_�f��*M`C �f�n�9��ɻ�d�X�f��M���:͓t���g���:_����f�����n�'��M���a�Nd���Nf�ntߕ�04�װ�/��t�~��Ǧ@H����\ۉ�I��.��eߔ�o$M�zț����0��Q���#|��F3�?�Z��{��{b���ޤk�c����X�iK^HD㞮�=�ݑJ֓:�~����v�ɢ�uj��`�i7D2�R�ͱ��;k�}�G �]����0�N��}�7�2F^0_3��U��	B:c�C5s�#[�#��0d�/�[������0�<$"
="�C����%���{37�a��-�+���׈>���;L�t�U�6+E�-IPH���%�ZU�&UU���'{���I�O�:��uD�'�tm�֚��A��ԣ71�>�lbZR���V@�.��R�u�g��Rћ�hz�ݍ��*��=w�j�E����z�C[*SWC��T��il�R�	���Wb�t��Ι��`t�C���"w���izuu���-      �   �  x���Mo7�ϻ���G"9~�fق#������p/�xic7��T �pNI��b�Y,����1Z��"`1�C"�@c�L����/we9�~_����W2�V�*�z�|��������2�#��2$�j&H�-�<�CBM��f+�	1ZR�N�BȮ(�*xSJ��B��Ą�u������Uc�2��d�����*2���7|�k}�#�j���<��Z&�~����i:�f�G�w���=N�����G2Ƒ����ݢ�1�Zo���7�j0�l�w��ы1=kn]��������Oؘ���?��n��^^|M��?�G=΋
��&��QOS�G����d����BC�{)�g�@�B�$p�Z���U:�KH@BH�4�b6����?���T��W�/|���i�_�}���k�"$����l��ڢf��B����Ɂp��9nv���{ժ:>/\�әI���g]������kRS���ŁrF-�j;	�Z�����B���b��C�2�؞�s�����R	�
�P����mnov��o����|\x�M�x-1I_���Ejo����Z�&��9�r�z��w����%Gm�ͣ�������J�lYmn�xx���޽P�흦����A��J�,�j;T�m�ŧV����8���sN�      �   f  x����n�0���~��)rx�΍��@oh���C��-�Z�~��i�tg��Ǉ9�(���Pb��@ �c��9�y��v���}�����S�J(�"�!+V8�䝍���/�i~��P�k��S����}��0��$�1��P�6�%[����tL��G���@K�I� .�K����By�bC�0^�����h��P| b�ע���twt�3���w/��{A�S��BLDYC9�L*�+ģ��p�����w���et:c�y�F�J{��R.�}�c�9��Yr����YF�7�u���Ǥ��(Q@�Ȣ�1(��-�ߘ�T�<N�j�u�_o5O�j���8�      �   s   x�%�A
�0F�ur��@��X�u�"�s�33��C��+�⃷�m�,���q�d�j��V�RE����֦�D��%���~�����1pJ�p��4&�4F��~ J'*      �   �   x��K�  �5���
�;��5��0|�I#�֞��卩:S���e� h���.�k�DQ�ڲ��[���m�6};��[��0f;B�T��3@i�&8[�zT�t��W�h��}�n�`59��=DJdمы׺~��0ļL�?��䣗R�t4-�      �     x���Mo1�ϛ���f���
�R' P�{ܮ��F�����M�H��(H{�����酋ւL��xS@`��Q���M���k���xpAz0�	�����b�Qt��<�R�b��R�9JS���]պڼX.w�]_01��>���/C�՚7C�)�j������������c��'F4�Ȭ��T(%���_�����TPd(`$��F�B��zk��o��e�BpR؋�H�����r�.�m�?���A�F��D%��A;���]�=mzʛy<oi��ø]�a�p�|�����e+�=E0��ɱ�ؐ
���E�y7����i��:y個���0�K�:��FpШw��
�Ty�툹�����<Q:ޮǓۛG��H�i����r����?�_���~[ч�߿s��+���l�>����<���m��0�����V��ml�	|�F���E�������}�}��叔�_:��n�_�eQg#�qsx���{�X,~pB|      �   �  x�U��n�0D��W�H�,Yvrl� 	��@
�ˊ\I�)�@Ri���lAn�`��<��� ��:oF��9�.}5�k>�Zqѓ_���̋%����>Ëx��<�e�	p�4����	����#x�`�aŐ�RF�����&���xF�����6�D���`��,K�L>@�.�j�H^�j�qQ�%K!7��K�!�E<�4����U;^ъ�<���f�`��V���qW�82�����݌���!�XEN�ٍ���2��4pr�l5��eƫ�J�����r��\�s����Op�xI/]��2�,^q�%Xɔ��D�I�8����+���S��T6w���ϫ�U~<S�w}���QS�;:7�]���������S����R�$���k�757���U�e��ߋ�~��$�i      �   �   x��ϱN1E�z�_��ĉ�-H�nǶ�D��ݶ[?�=ʠ=�B,���Ma7��N�Yd{������=@bv�EJ%������ǁ���kl��
6c0��\����w��q{?#�W��iٯ�`K���-f��C>k!Z8J!p�uN�fV�r�#S�2�?�Wz���i5ZX�~��Աo����oT�jOS��oO�y��d7      �   5  x�u��n�0���O�0����JE��nٌ=c
I������MP+��=�/��g����~Y����[��~��������p�Ow��?=�\Iѵ�%���\e	�$����T� i�麪P��;T�d��(��=�l��^a̭���?��V݀�QW烴��t��Ŧ*!;DC�Z3�qZ���q/o�+�Ԛt�T��b��Z���&�8�����R����I���2��EW#Sm
���P�Z�yZ�s���r`��n��^�o�/�If��l�)l�j]ɨ��6-�e�g>¿i��h>�v�#f-]�AS�T6�/�X�τ�:O,h�#��iٛ6~4��E��9g�Z�f֝4�U�,�_i\E�V݈��(+(~@�PF#gB��RO��q�z(�}���6g�lqƫ)99��bS�%�^)����~�L#���K_f:���G����vj�9Gb�s�jΜ���ه`�x*�h�_'F,k�^�:a8����n{9t�ḡ��n�c��CP[�2O�x�u�yn�ܗ�� |�h8|���9�@�b�pg/�B�T�W�      �      x������ � �      �   �   x���M
�0����@��M�,�
]U�m71�J�&�?�_� E������0ެ������a�?Bۼ�l��}�݄���j�b.�����0�7b�գ�c(��R)��u��V�R�����a}=��jTϨխ��.�Rh�i�0�s�2�I&U�,1���E'��B�[o�      �      x������ � �      �      x������ � �      �   �   x�%ͱN1�:��Fq��I��$*@��؉#
t+ݲ|?�hFS<ͼ������M�e������m���k���p;�g\%�R�y�00�^�Y�rB��z��On�rK�Ym�.�*R$2V9�	�
�<K�褡�8��X���ؠ�4@�2�����5<}\����bΠHhf%5H1%t��݃IwL��Hc6hJqT�Q�����aY�_nK[      �   �  x���ْ�FE����?@7K�� �KD��"��b���ǌ;챧;"#�ɼ�}��!9��U����������4L(6⬫�����X����V-���۹;��u��Ë�++�y�f?����=���xcӖ��p�a�=@8a�g��V}�i���y����g����5�IU�����I~0�ZG�.W�I����YL;�̶�yɴ�E��T�3�~��Z�U����%Sꚳ.� "\�4�}���m4�H���Hu��x�b�n�7S�/"ƍ_X�]KPѠ��j����7�mG̯0-����V���{��W��e�2��i�UOlVy�Of��i󹠻�bN�4�yЍ#1�ks%�}���A�v��9�o]�7�wg���W�T�Pno�:k\6'f��ArÛs�ٗ�e8�l�	���rᑻ�.\O\ �5U��y�/�W���>���k�J� �n���(���F���	��z��K�dB�*�,Q�
=c���;O�n��������~�'���Z�(^@,�H�ϕa
�4O��|"����u�>�q��3����V��sZ�b98p���q~|��d�a�X��4�Q)[d��~��4ŉ,��	�`�~a}Ȏ�[��]7B�����xZh�ɝ�����G�u�j��  L!>AO-F��҈� rL&�/��m�M����8�'�ތfmt(��ba}P�N�l0�?j�f?C8��r�R���I�H	 ��,���0�>���^__���      �      x������ � �      �   �   x������0����s�Eh��-�mQO�b%4�⮧������"��2�����.O��0�U�x�z������9��	�ͥm���*�1�VD���]
%���v�u+|�!#+e�'����������Y��2�E�ų���b����	�$C�o�(ۏ�IQ2����ͺI�bw;�����o�E���u3�׺V�t�S�4�j��^�����������      �   x   x�U�A�0��1U��P���2��(��T�~I�����]S�,y�9��!d�"��dE�1JGƝA��oV��<!�Jiʽ*=�5/ʓ�(^il���Z�w���퓴r� �)i������(6>}      �   �   x�͎�
�0���S�	�?u��z��y�jڴ0���&Ło��6��5������gr��v�>������p�(�V�S�/I�%�!"����#gdc�@�
��wp�_��M<���~%6��4����\K׼���*�֬؈b�1�| ���{      �   �   x���=k�0�g�W�uI���nB� Hd㏩�p��E`c�P(��M�RZ�@�S�����ն�&�Π� �A�r���5�+���H�Vi�U�W�j���\��������ڸ�.2(Κ?h����3~�;<��v��'*��2���kT���<V7�̙*2��%���tSyEV2|�����qK}W�Q<�����u�ѓ�spO"}�k�K�G:It�����D���<Fc��}��?      �      x������ � �      �      x������ � �      �      x������ � �      �   z  x���Mo�0��ɯ�-�I?=�Y�h7�-zꅖ���,��6�~��~��(���y_���@<fo�{v�'R���4��q������^�!`��Ӷ�+I��e�C�%�rׇ$�^:���k��ТB�
�gr�P���lW�3%�C"�&89��u�9�3�#%8Z.�p L
|7�ZL��:p������$[R�����~�=�HXK���t�iǑ�� �'CG��t��QW�&�'I^+p�\&c�&f��KoqG=���m�a׎���K�"Y`�Ryˣ��}�+�Kxh26�@eH����t�<@6NXիe}|4�L��R{a��n�A�\�$��2\c(�|��z��l��?�l9|�Ƣ�JR�S�)c�j�km4����X|ji�ц�Ħ�D)��,Q�xx5?�)2���f,Nі�f�hj�;�,�<&��|�df��r]/����`�bzI�.54��2[����:0�5CوF���r��f�e?8��]�'�@nEK�(�
�����/#��:�<�&���y���3:۝�6�6UFc��z�\(����ږ�u�F[g��F8d�/l���[���j5[�l�~�5{�9;����|>�����      �   m   x�3�4�trut�2<s�S�9c���F(�	c	S��	��B��(S��L� 1=3/Q����96yC��vys��%���|���6�H
�)����� ��PQ      �   �   x����
�0�s�y���p=�@��۠�.)���n�.�]I���Q�}�h� ��B^Q�o�ь1��E��:m�
K�f�EY�%����
�K]����⩶�j�7 �h{���4,����2��� .$�Sn��*�JS 66c$���y�D� 4��� �7Ҫ��      �      x������ � �     