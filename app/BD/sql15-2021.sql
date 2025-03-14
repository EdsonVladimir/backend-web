PGDMP         +                 y            pagina    13.5 (Debian 13.5-1.pgdg110+1)    13.5 (Debian 13.5-1.pgdg110+1) x    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
   pagina_web         heap    postgres    false    4            �            1259    24967 	   documento    TABLE     �   CREATE TABLE pagina_web.documento (
    url character varying(200),
    nombre character varying(50),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_documento text,
    id_tipo_comp text
);
 !   DROP TABLE pagina_web.documento;
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
       public          postgres    false    209    210    210            �           2604    16399    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �           2604    16579    noticia id_noticia    DEFAULT     x   ALTER TABLE ONLY public.noticia ALTER COLUMN id_noticia SET DEFAULT nextval('public.noticia_id_noticia_seq'::regclass);
 A   ALTER TABLE public.noticia ALTER COLUMN id_noticia DROP DEFAULT;
       public          postgres    false    219    215            �           2604    16441    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    24772    seccion_propia id_sec_pro    DEFAULT     �   ALTER TABLE ONLY public.seccion_propia ALTER COLUMN id_sec_pro SET DEFAULT nextval('public.seccion_propia_id_sec_pro_seq'::regclass);
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
   pagina_web          postgres    false    225   ��       �          0    24805 
   componente 
   TABLE DATA           x   COPY pagina_web.componente (id_tipo_comp_fk, nombre, estado, descripcion, titulo, id_pagina, id_componente) FROM stdin;
 
   pagina_web          postgres    false    226   ��       �          0    24939    componente_generico 
   TABLE DATA             COPY pagina_web.componente_generico (id_mivi, descripcion, id_imagen, url_dir, url_dir_uno, url_dir_dos, titulo, estado, id_componente, descripcion_corta, titulo_aux, imagen_aux, imagen_aux_uno, imagen_aux_dos, imagen_aux_tres, imagen_aux_cuatro) FROM stdin;
 
   pagina_web          postgres    false    244   �       �          0    24967 	   documento 
   TABLE DATA           X   COPY pagina_web.documento (url, nombre, estado, id_documento, id_tipo_comp) FROM stdin;
 
   pagina_web          postgres    false    245   �       �          0    24928    estado_plurinacional 
   TABLE DATA              COPY pagina_web.estado_plurinacional (id_imagen, id_componente, titulo, descripcion, estado, link_01, link_02, id) FROM stdin;
 
   pagina_web          postgres    false    243   ��       �          0    24912    eventos_promocionales 
   TABLE DATA           ~   COPY pagina_web.eventos_promocionales (id_evento, titulo, descripcion, id_imagen, id_componente, estado, url_dir) FROM stdin;
 
   pagina_web          postgres    false    241   �       �          0    24812 
   header_pag 
   TABLE DATA           �   COPY pagina_web.header_pag (titulo, descripcion, id_imagen_uno, id_imagen_dos, id_imagen_tres, id_imagen_fondo, id_imagen_aux, estado, link_aux, id_header_pag, id_componente) FROM stdin;
 
   pagina_web          postgres    false    227   L�       �          0    24819    imagen 
   TABLE DATA           R   COPY pagina_web.imagen (url, nombre, estado, id_imagen, id_tipo_comp) FROM stdin;
 
   pagina_web          postgres    false    228   G�       �          0    24826    libros 
   TABLE DATA           f   COPY pagina_web.libros (titulo, id_imagen, descripcion, id_componente, estado, id_libros) FROM stdin;
 
   pagina_web          postgres    false    229         �          0    24870    menu 
   TABLE DATA           j   COPY pagina_web.menu (nombre, urldir, descripcion, id_componente, id_pagina, estado, id_menu) FROM stdin;
 
   pagina_web          postgres    false    235   *      �          0    24833    noticia 
   TABLE DATA           �   COPY pagina_web.noticia (id_imagen, id_componente, titulo, descripcion, url, estado, id_noticia, noti_ipm, resumen) FROM stdin;
 
   pagina_web          postgres    false    230   �      �          0    24877    nuestros_sitios 
   TABLE DATA           j   COPY pagina_web.nuestros_sitios (id_sitio, titulo, url_dir, estado, id_componente, id_imagen) FROM stdin;
 
   pagina_web          postgres    false    236   U
      �          0    24919    otros_enlaces 
   TABLE DATA           z   COPY pagina_web.otros_enlaces (id_otr_enlace, titulo, descripcion, id_imagen, id_componente, url_dir, estado) FROM stdin;
 
   pagina_web          postgres    false    242         �          0    24841    pagina 
   TABLE DATA           L   COPY pagina_web.pagina (nombre, descripcion, estado, id_pagina) FROM stdin;
 
   pagina_web          postgres    false    231   �      �          0    24891 
   postulados 
   TABLE DATA           j   COPY pagina_web.postulados (id_postulados, titulo, id_componente, estado, id_imagen, url_dir) FROM stdin;
 
   pagina_web          postgres    false    238         �          0    24898    redes 
   TABLE DATA           ^   COPY pagina_web.redes (id_red, titulo, id_componente, id_imagen, url_dir, estado) FROM stdin;
 
   pagina_web          postgres    false    239   �      �          0    24848    seccion_propia 
   TABLE DATA              COPY pagina_web.seccion_propia (titulo, descripcion, url_imagen, estado, link_discurso, id_componente, id_sec_pro) FROM stdin;
 
   pagina_web          postgres    false    232   �      �          0    24855    slider 
   TABLE DATA           f   COPY pagina_web.slider (id_imagen, id_componente, estado, id_slider, titulo, descripcion) FROM stdin;
 
   pagina_web          postgres    false    233   q      �          0    24862    tipo_componente 
   TABLE DATA           X   COPY pagina_web.tipo_componente (nombre, descripcion, estado, id_tipo_comp) FROM stdin;
 
   pagina_web          postgres    false    234   S      �          0    16534    carousel 
   TABLE DATA           Q   COPY public.carousel (id_componente, id_imagen, estado, id_carousel) FROM stdin;
    public          postgres    false    218   �      �          0    16391 
   componente 
   TABLE DATA           t   COPY public.componente (id_tipo_comp_fk, nombre, estado, descripcion, titulo, id_pagina, id_componente) FROM stdin;
    public          postgres    false    203   �      �          0    24905    eventos_promocionales 
   TABLE DATA           q   COPY public.eventos_promocionales (id_evento, titulo, descripcion, id_imagen, id_componente, estado) FROM stdin;
    public          postgres    false    240   �      �          0    16424    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    210   �      �          0    24763 
   header_pag 
   TABLE DATA           �   COPY public.header_pag (titulo, descripcion, id_imagen_uno, id_imagen_dos, id_imagen_tres, id_imagen_fondo, id_imagen_aux, estado, link_aux, id_header_pag, id_componente) FROM stdin;
    public          postgres    false    223   �      �          0    16450    imagen 
   TABLE DATA           N   COPY public.imagen (url, nombre, estado, id_imagen, id_tipo_comp) FROM stdin;
    public          postgres    false    213   �      �          0    16522    libros 
   TABLE DATA           b   COPY public.libros (titulo, id_imagen, descripcion, id_componente, estado, id_libros) FROM stdin;
    public          postgres    false    217   �      �          0    16510    menu 
   TABLE DATA           f   COPY public.menu (nombre, urldir, descripcion, id_componente, id_pagina, estado, id_menu) FROM stdin;
    public          postgres    false    216   �      �          0    16396 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    205   �      �          0    16463    noticia 
   TABLE DATA           s   COPY public.noticia (id_imagen, id_componente, titulo, descripcion, url, estado, id_noticia, noti_ipm) FROM stdin;
    public          postgres    false    215   Q      �          0    16385    pagina 
   TABLE DATA           H   COPY public.pagina (nombre, descripcion, estado, id_pagina) FROM stdin;
    public          postgres    false    201   �      �          0    16415    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    208          �          0    16438    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
    public          postgres    false    212         �          0    24884 
   postulados 
   TABLE DATA           R   COPY public.postulados (id_postulados, titulo, id_componente, estado) FROM stdin;
    public          postgres    false    237   :      �          0    24756    seccion_propia 
   TABLE DATA           {   COPY public.seccion_propia (titulo, descripcion, url_imagen, estado, link_discurso, id_componente, id_sec_pro) FROM stdin;
    public          postgres    false    222   W      �          0    16458    slider 
   TABLE DATA           b   COPY public.slider (id_imagen, id_componente, estado, id_slider, titulo, descripcion) FROM stdin;
    public          postgres    false    214   �!      �          0    16388    tipo_componente 
   TABLE DATA           T   COPY public.tipo_componente (nombre, descripcion, estado, id_tipo_comp) FROM stdin;
    public          postgres    false    202   ^"      �          0    16404    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    207   #      �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    209            �           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 4, true);
          public          postgres    false    204            �           0    0    noticia_id_noticia_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.noticia_id_noticia_seq', 6, true);
          public          postgres    false    219            �           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    211            �           0    0    seccion_propia_id_sec_pro_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.seccion_propia_id_sec_pro_seq', 1, true);
          public          postgres    false    224            �           0    0    slider_id_slider_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.slider_id_slider_seq', 11, true);
          public          postgres    false    220            �           0    0     tipo_componente_id_tipo_comp_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tipo_componente_id_tipo_comp_seq', 6, true);
          public          postgres    false    221            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    206                       2606    16433    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    210                       2606    16435 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    210                       2606    16401    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    205                       2606    16446 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    212                        2606    16449 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    212                       2606    16414    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    207                       2606    16412    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    207                       1259    16421    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    208            !           1259    16447 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    212    212            �      x������ � �      �   U  x��V�nG=w���ƪ:� �`ɰ��|�"�A�A3����H�����\4j��W$�#c/9�:�T2�V:���5�5"��a����n޼��>���i�Ss��0D��������Cdr�?(%�kb�ZmS�v7u�f�%�t�QR������v׉qz?���/�m0�.���<��a�����&1�0�$�c"��ɰ�`w�E�C�O���Ƌa�:�9v{^3� t�wg�P�yu�g�<JQ�����Т�ꁴ�!�&?��/�ǫemN���7]�>U��v��(W�>�^
�T�y6�$�ֱ�-������`^��ˀ�X6�l�Fh<G��{�EHa$G8�}J%��`�mBg���4�C�U0M�O�t~<�v��O��y]��me� 	��
5W�E.
�QBb-XgՔI�T����F�}W�P$�&�c�>O�}�+L�Mp� Y�z�hq�%K�Z�5E�Q(��.�:PN��B��I�8���;�ӧ!Ât�ZُKH_-l�%��55z���XicP`'c�R9W���(H��v�G�&ك�£'-}��2��Z61nh`6͈I ζ	���7�P�gj�`%Te�Y5(-g�D		1�:�=��8�_��ھ-iV*i�u[c��@%�2���_�ڵ��_{^�.��mT�Z#���P����!ʝ�M7}żo��Ƿ_���M��X7�b� �ڦ��b���zSqv��'��e?v?���ښK��T�9��dqP�b��Tk$�Gz����vo��<F���Y[�TM��D�4��M�#�}���՚�q0HՕ��|���=g�

M��|ޜΦY�������V�o���X����㝭�j�5���1����������ˡ�ʾ	T�����d�'ڡ�@J��r�SWg��/���x"KҺ��0� �c�1d��?������p:/秗�\��u�r�aL��|!J�����"�6�ؼ2<�slI��	H���ǭI���|d�V^��~9���Ws��mi&H�z/jO��n/��Pje��s�ꑼ]R���Z��ڪ5L}�.�]���q8]M2w?��߽��}�ts{�fc'�9��l�Tw+�l�����fR������+`��      �      x��}KsW����+�,ƒ"P4��� Kp�  5�1q�� ,�P��B�"W}����Do�]�e/�������/��<�� e��j�RF�	��<�|��t펒i��ӵ�{`�햴�N�4W�=���rr���7v��T�7�����=W�'��|1�w�Ņ�D^ /�/�Ebˍ�+)�j�ž�y7�r����屈�O��X�`�3�X��%Z� ~�UN�k���V�C�S^"����A�	�<Y��ɍ`�N�x.
�W��E�q<�I�!oC�����H�J*��D_�7�`v��O�S�r'�wI�W�����x4�����Sa`[���m=��V��u0��o��7ލ�Sx������5�n�X	x��S���y8Mm���'���\��D�0�H��d���4_=�Um\�|zqhä�)*�Erw��5N�:y�n�୑8���H�۟�RZ��Lf�]r����*-$^�����Zp�&	���)��Nz��S�4/Pr�`/~���pD�������ÍL�	�_$���9-�	������f~[|�@�*O�Kq���F��	�:�-/'�W��|6�����pN,����+i�����f�c(7B�0��d#��O�0[�(Wʁ!�E�;�8t<�>��*����՝�P�s�'�0�XE�+Øf6�H��k������O�ߗɏf3�>�������Ea��ӟ��z�0=w$�n�(�Bn$�I?`�>�H�j��r��9�>�f�����e����������v+��a���˘�2��e7�a5h|���	�7�����0�������q���+��S ]���ǆ�G���'n�&�Hp�"���0V�����PlU� R�ٜ~NY�Hu8��XbQ�aVO`��	,=-�tv�BHw�2�h�`{bR�C;Z@��	��7�/q�qRBq:.�t���%2�c����O�=#K|�����0|.x�V���I¼�VF~�I |%喚�m��i�u"�_X�����P��$��F� �`}�_��y[���D��@�]M��� ������a�E >n�yA���IP"W)v�+�P�� �1p��0����?����z��� .et0�x0H �1����u��������It�����r����p0>���G�)L� 9G'������qAt*�!���=(�8rM�F�*�U����p�%n`�w�[�;X���
��+Yy�G�ҿ���d���Ⱥq	z�z��$5DU�� �p���h.�P�t�*�4�o�=X���/+�$F!Q{
��a%ι���
��aL�I���������h襹�`�+%�k�-foL6[�8x�]��B���$v�`q']�%�"��#)�A��g��2Ee��z(Cߑ�p}{zN��ur��Q���|	�.�E���K���s*Z�Ln���&6�1�g��܈О+q�?�\K�'C*��u��E����fx,1&�)g"ڨ�zr�nxj�=�D�1�7z��Kci{���d�E�m����Ѝq��z�n!U����d�N�_ĽB�~;��~���~ �����J���>v@	Ku��~і�kw=K����n��֠��X-��q��X���kf�;���G߂N�}1Z��g�/z�^��X�,�ﮬ����~�ײ�����wz�Uc�?����Z��rګ�5��ݗ-K�~ߪw;=i7��V����������L-�"���;�yF��@
V��Ӫ,A ł}��#H�eU�2���"�R��4��;n���$�?���N��
ƍc�l����@0�Q�>m+2>�8�*�����8'�y��CI����<��}�4��gfB!U4�r���aԑ�X��IF��C�dZj釼Ŝ�Q�r[0[�+QK,-$^�޻lg��-�Pk�,$�4���:�:�+YU�<m��L��o=��5��o6h��aN%�M�H-�tBq�F/�>�;ٸJ�3��
����l���Nײ۶k��r�A~k�5X5���5sҘgt>)>P�)�u�n���ړ.<��X}�iե�;����>h8B�m�gcq>>�gsq1�q.��O�_N��[z/�Tڭ��n���nv��o�Πn��}�n;��߸ލp�����,
|&�ݭ�����b����:�n��k���})�����֏�ܾ��kT��^`E��z����3_����nn^�f}sB�X^�hm?o�j�ի�v����Z����^ ����²�r	�d�����o�x���&��T[�G�)�-�|��<��^�F߬?�i�����n�҆}o�����ޑ��W?*��z�kP�v��XD����a�����
|-v��Z ���K�ke>�м����'$EQm���k�㵷S�������~�a������<x>�.�AYp���|oK�u&�k���n�D��!h;������@(ƈ�q�k�2?��y]���o���/��h�(�@`:�`�h���^�gRт���Vg��K�C�Oz�Hm���{qe��M�%<�\��#����ҵk�����.�D`kֵ�B�x���I��������I��y�ӗ��-X���Y}x��G�|^�	��I���&�4���������CV��U�"����TX�f;�*��	������(�lR>\|hd>�u�ŵ?t���G��$��Pn�Dk~����#s}+�Si��>.q�}����Z�'����{7!ES�>h�Z)��'�NWO�('��#/P�8���z� }��!y�m��};_L^�g�|u����m�Y���$X���[)����XM�{���#ͬ�.ܚM�`��OAT�Ǌ�:5�����I@����(^��[m�yگ�D
�㗡t���:�y��~��_&��x����%mm���u¸"�Ey��d�@y&��E5F�2"n�z��P������o?�/=�(��h�~��
|N����v	.G��Q����{W;@��#uh�ۀޟ�ZFY8Ř�PO�80�6A��C�Z�08t���;>��������#��0�q���Y��,xp�QP�"�/����dڄn�b��V�Nε�3�N:�xN$��bTj��?Ζ�C2}m!�H������+�g�~�zz����.b-�5�\��e.��l�6q��{��L� �e��)��އ�@GH�$g���_)��)�:��Mq���X��ͣ�cδ�*������a�%\� '�@��[�Ҁ��(F��X�N���(u��^~�����A�: �h��|����ld$�O��< t���W��<�E�����D:����ٟ^�Zy�܀��p��)+�{��\C.��(0/����������XeB��|d����uH��N�1�����/U�`�	b�@[�`���G��.�M�����7^�6q+}�C�i#�'��[��>;7�|ܳʰK��!�Z�S+��ȇM�L#����{���N��zڏFeM�y3)��.Jg��ηbT�g�-��ڡ�&���q���*�[Qi�У��Jk Y���ɽ��j��x���?�?|���x�����B������rr6�]��/4�����+���d4�$T�s .�G�t��r��&"I͋��I��>���\�ň�N;c��2���)LA~S�m�Q��s���P[qq_K�8���](R��Hal�s��TʓA��BD����)��joi�(�(���+�5����$߻�$�o�:@�B���&�� �%���r�'b(v0pq�c,DF5|�]��%�؄�}�/�*�ȼ����ovU���CԪ"�+ߥʈe����ZN�G�i;�b���	/�� �o���3�&Y'{
�j�̐��B�������b�5!�%Q�,h�^�����ІL��Hn�!���D�������P/N�T�V-խ�)0i42'_؈Ҿ/�d�MCy{�J!�ރ�ŅrAg9�e���`��Qt���;�CܯQ�L�jؤ��*'�;M���@ �$,wd�    }-�E��l������4�Bڡ�I(�"�ˑ-R/����N�R��0	J+j�£���z��ڒũ��E��>��<�kCy�ny�n����Q�ҼR?��֤��¥����ug"̚/�e�G�9�$�O�x��c�ק�i5 I$s���oU�B*�[�f�2��=���%ldCM�j���h��b�r��x�.��;��H!�N�RɱE�J���E�N~)��b��"�����]��sQ�qk�/� s�‷P+����9t9��y ��F� �|�:Q�p����Җ�.���,!�Ae���ԪZ*Ё(?�n\K�ߝ:�UǬ�|L�6i��tL�Z�s�$���9غa��c[7`������l8�|9�P��i3���ռd�&éx�m`5��ƋO��y��h6>@U��mt�"O�%{և6|P��Gh',`]d�"ǋ��T`�H���ߒ�Q%k�975�^������l]��X�t�w��U�	�)�����&��Sy�I8h+���V������;���Rcf�vq�[UL0�2a��Y��cP"�
(�.N6|&���-�ٕ��:+c���H	x�d\������ٶ�L)LGfR��/�Y�LL0h-A�lh�0N��\�Я��vcf�*�u)��W� ���-��ݍ\�'�ͼ��e�2���HR�Mf���(����/LF���ⵤ�� �Mv}����Y9��7W}�$TӥuUA%�:�����b�����0>���Ah�)���"}��8q&�c����E�����=,��v��4�*}���sT�:0�~STa$���B�Moۆ�fM�:�@iٚ���
Z]�l�k�ECI���y�Dg��3޳-o��%��tV-I���?',]��4�F�ۧ���D�6���&��j��P+��|e�$�lca[V�+(�#�5*���^`���~y��KwF'��^�|�5ͤˉ��е��uN��m��g+��0FU���=�:xT%<���@
�trA]c�Jq�ڝ�@���<SF�O�a���G���6�ʭ�!�X3hi�K����G+�ǧS�I����L�>l�_��Iɒ}�jS{��0�]�;���6nSG썺�|w`t~�V�	��E��}E?ס ��dɗ� N��5�D��AwOoAm�0� ��(Ϟ����N9�E��*Qx�v�����R|�J¯�MU}T!�h�-h{:T�:12�޶��ĭ��4gkpj�;eL���q���VEw�g]	��s Yl8p=D��ت(����Be�-���ȧ�=�k}����ʂ�X�%����'A�C�bF�␟wcê�9�2bu(�|c�Ȍ���Av��(s��ge�3���2H($�(2m<�9�EW�&��O�Q��s�ӄP��x��h�)\6R��,SU�D\�.(-]�1Vt�FϫB/E�~0u��Bqb\c.��)G����e������iE{�+t�����LS*t�!s��ϕ����F,>,�
x��rVI-3�*�X�	"���'��æ�o<�0�5ghz�Ƞ&H:��ݩ�X����H�F�pu�5��Y)u��I!���u�v߱����,/��Cqv5������}v���4럌��I嶏��au�_Ǫ	a7C&+o�k�!Rfq�	r���s�P����#j��X���Nf�|㗟�r0�M��!5�+�a|�B�P�������,\tP�j^TC�	f~��Gp{Y��דޣ�
s�R��ֲ���;sI�i��-�l槱�#h+�M��p�_�b�Wt������h�B/e@���hh��)Qd��=r��+T�!s��P�%څF��)�k4��E�9�}�wp���Њ���G	zt�vf5�>`c��A���<�K؀ ���,f���䆸��3�~�En�����?W�����Z!ZˬS���MD�����j�����+���mVP 5v���z���C���Ex���>�(�}��(�����ɰ�nzZ����"�|�O�78�������n ���v
t����qMR�������\���}BY$��}.^�
,��(�g�Jt�|�pK�N���X�6!�~���#���
�GW�?(gW�A�����|�
>�K4�:w?�p�8�ZXiJ]Ye��R��&�`Ls)�*�E'�T#@����F����P���B�}%y�xEV���ɚ�օ��ǚ*:<qb2?�����dVO�a[@�h�����:�)ӳEy�%n�R�\�<�E��]� L5k��H��O�a-���R����R58([�v���(d��O�F9�+��|�i$��e�9e_�`���c��ޤ��r.�h�cڞq6㙾Ij+�C��v�繗�f�a2Ҫq�Y��p�����<Sɹ���x�Z��2k �Cp2KɋU^���� �M@�ִ�7�Q���&oӒ�_�ۯ�هb6�}�k�*:�A�L=��#7ȓ6�kʎ�g�j'���0Y��<G���0B�7$4|Љ��D_8��Ғ���Ȳ�s��dƬû��$�ebD�V�q
�8F-s8<�,ݚ��x>�v'����q��Η�8����N��l�u��NV�4�x���2/l,Uv���a��w$�u��� �:�I�I�{�X}��j��ă�z�Sg{��6�\q$�B�
�����<�4��/���b|9��P���A��ih�W���2��D�b������o���}LՌ+:t5����e���
tQ.����@ܧ�>�I�\״ϊJ�F���L[LpH���J�RPRm�daH�J�����͕LE�$��8	�Gҁ����|ޙ��g4�f��>5��ߥ�"������3-�Ξ���2S�qy��o����Ħ3g�����<��l��Ԏ<����1�k�q�3ϡ���u}4����7A0���(���������(�]u="L���\�S餋�eem���@��L4��i1�O]8�|���pxbT�$��������fD��xD_UK�FƸ`FaL���\�~�v�#7+@!'��TM-�ϻ�:�(;��$~(�Z��<��q������@_>��'�ڿ�K��9:H�95��,E�u�G�����mE�.��]�,|5�,��a6y����r�x��f�5�zLCv�O��ᢐA��} ��D��*P2H)��⊅ڬR��8!��7af��s���.y�R���xO^s&7�A.��g���I<���N=�G�Ǝ�:�Ψ���74b�I����ģ���,g��,"�a�3���L�Ac�N�h#��!����zΑ�4"=7?9h���� �̿/���IE^���W�J�:�V�|BHI@�c��6��%;Ү�\МE+�m�8I�]�]�@�W:��>��u��g�GR�&�}��7�g�m��%�dO�>ٷ���1�!�I��@p��O.��E3�h�VҫN���̽���{O��`�h���5��:K\��]5	����eg��G�D�22��m��Q6μ�9lI�	�,��Sql�.(��˔�{�����i���9Pѳ��p�L�,HBX��e�:�oP��#o���W �-P�gw��V}���R=� �d�N����s��+��Z�|�N��Zđ�/Ϯw��˯����=���������\��v�ܶ��I���T�d��wg#&��IF	�'�@�Y�V&Q���-�x�e�6��JYM�}��i���u�̵��0��(Ga>VZ�h~>/f&͆��rzr��Fg�=�Y�>���(L��������2z5]�K��y�?�G��Jy�&P{(�~�����^�(�dyT~�Fz [�|���<�-��ݕ�����G�
~������N�O��m�l�4� +>�b�T��)/��$�0"�3]�׈|X�2�ܸك�ՠʞ�tp���(�R�qK3�\�eg�\��ɽ�+B�ګ�VZ�ӽx��%�U���De꒟�v�9|T�,>���d�ǧ2�L��y�K�-��i��:�-�W�^z%.���܄��=9�_�S�No}� �'��2ރ�Xɦ&�d    �b��d�'H)�_Fk�.#�R�CsO��ji`��M^y1�2
�72��P;��Ɗx��baQ�#]9�5�	Ź����A�E^*u�O��y]h���ZZ��#
� �S5#����5f�Ŵ�խ�oN�
�lS^
�^��m�-2�Z!{��&T���v1>_�M~�9�/]ʗ3�=*e&�f� z��}�
�����heG&�_̈́
=Y7�.�ML$Mݠ��ye �6��S;�;k�篲���r���ȿ:O*-�[xA!�����Z�[#��%֘�	']�)i�e���Pw�X�m���0�9;��s�Ah
ߘ�#�m��PO�uh-M�B�[�-lO��ND8t�
�a֏�PKo���jF�a>T�÷�C�Q'B�3�%YM�k��J8l��xZUçn��Vӥz;�2=r�C�~��E��CmZ���0s�����u2�����̓K���7\�kcm2ui�!Q��w{��P�(�
�j�&����^Vq�������)P�n���>�X������4�0U���B�A^$;n(��]��K��ڣF�tR�*+«�0�u9�?$�Z�R�X�(�C�To-4�Ϊ��@X:aJ�P�b؊�M��T>�&��	 �f�J��,�ؤE+౻R�H����4�&�� ���N�i�R+��6A'Tp�d�6���Ԕ�z�EvP�e���6'+��j�',u���*��~DE��,�oT��8��TL�z���,���6'�G�M[�����Ҧ������C�C�{i�:�k�������G���r����]�C�S�hv�:�F��ѝ.��5rҀ��jq�6��(�J�.d�'��lҝ��{ @Џ�� ����ӧ�����*�����c#��[#��w��ФD�ke�x�����Y}��q��p7�kV�i��y��~ά5�� ��`�0,��Vq�7���)	��$>(Ho�2�c*h<~|`sj�/��ej�Q��T�*���*yb���KE~x�۽�)��*�Gυ���}�2��J[�I�0�Ǵ�sH�c�)�C�u��[�&�@���(O���)+���$�"����/�A:��KG�puJ�γ,b_�����;��C�!B�c"�4�)��R;�t�%7ZZ�)1�K>���!*55�^��06j:X�9g�ә�$�;:^�$D,�G~[��c��/EWfŻK���v�\"7�.��t]��p���Qδ�U�R�Z'���\���V*�����e(L�PJ%c:=UI��3��L%�-N�:oT���vV��sL����䑈�.X���E�"�|�'��㶔�%� vw�Z��°O�>mU��!� ����
H4¼]���.Ќ��I��I�W��磺5Ǣ
��C;Uٞ�?��Q��6�5G��]��B4�x|ruuB�,Q��64��ҳ��([Yy�3�7��
35����rvn���I�L��Jo��^`}7�/I�@�ۑV�.��z%*�1�)��{�%��u���.�`�jLj�VsIK��k�'�w����`"C�IZv2��`�x:�J7��/�
ެ�c�� 4q��Hԫ���H�]�� FQ��R_���m��x���k��>D���J�M�Y��\��yc�����fO}�üE��*/�ljs0	x
:Cz�+�dzD��[ݾ���+K�h\�֋N��B���c;=��W����-�ؖ�[v]�Vs�����~�����¶����b<<��j��vӶ�+�c���m����jZuw0p�n���0�9^bx�||6���b:��\<��~?����/�d���\^�0�x�"��;��P�tZ֪gw�v���dKu���ju}�]﷿�dMN��dMN��dMN��dMN��dͧ�u=s虓59Y��59Y��59Y��59Y��59Y�5fN��dMN��dMN��dMN��dMN��d�'%�8Y��59Y��59Y��59Y��5]����m��n�V۱V�ٯ[��r��n�:���5�`������m�[0v�Z�Xj0 �׮z����|�ʬ��<\*���|�⮟J)�Jj�?���b<z�@��_\M��O���Y'���{f
�����e��"nG&Yo�nڝ%K�L�	AS�5�9�e�z��:
�yԙ�⇙�8�`K�"�-�}D���u�vTc@ō2���"P-���SЋe,4�Zo�)���,���P#׬����B1$�pu9/��;���r8���o�Q7�]�I��7
����a)@M�d���~ڍ�%���G�-��'�C��we������-.Zp�f��kI���e<��U:Z��&	Iqp`��J/�N-	��Ҏ��%ލh�^�{{�s$H���C���	}ĺ��(B\�;Ue��'�#af�91�ס��R!�*{�ڕй��M�)����
����w�k�{�X�LŴb���ZE�:�����Lu�����t"רrG'ʡ�L[:Z��S"G6���_ c��t��ajY2Q��c�2�i�;zS#��:?��#�L�0+�R>���:�`���d�{[�#�3)�6��\��ҿ6H|{�Me�N��J�6]4 ��]��sl��r8�b;�ZZpB�N���b����rx�n���$MNg��'ŕƁv�GN���y�ZgJ��wo��*e�R�e�����h�=i�F�*���x-��N��ذq���P0��	}��=�ķg�ʇ���v#��hea����r`�gq4
�ʄr�}e�?2�x(��+g�V]��3]I�s*~�uC;�;Y"�4�dYx��0M]�@K��TA0��=��I���#���EAށ��hl7&�
V�љ�J�1���h}�m��d@㬈aSv�y������p,V2v@{�:+)�:tB�c������U��4!��ZpΈ�=�kL��g�$]c�RP�)o���bGj}�����h���Bmd@j�9}�*Js(��m�'�dg�dZ˲��c@���z��$B|&��Bn�X�1�2�_.��|>�N��Z�9�0/�ڛ��!�I�:SN� �����5��.g�Tp�j�KwI�&���|X���+i�(+��8`�փ_;r������tjnѝE�q��Y:�S�ZS�n�G]/i��,�	!�Y*�K<� Id��q�r�J|�;g�8#�8����Pl:]n������w���1��J���x��\C�:K�B^�k��/�����C�ά�~��	��b	�I^�x��0F,7&���v]�+T_��/���O$�C��������NO�ڦ�01���N�<t2uBF"�4����Xb:2r �U����N1���h	�5��5	p�ݾ3 �P��nH��=9�.�	;��\s��A�d y��$�U0:3Pq��jŘ�X���F�٣��L�T�Z�Ԉ[���4ݾw ��wŠU�`��)}O�=�{�}t���}Ŀ���]�;��X�zV�4-��Z���ޠ�h)��>��f��Z�e��ۘ��i�,��,�S��k�V�A�o�=)7-�X�&:`����l���\Y 0����*�@�C�Ux�훋��WS�ix'���A�6w?�ę��\1���]��
��e�m��Z�\y�&K�2G���O��Q��L�١�;�����B�K�FU�����0k<K�����4f���n�K4�K<W$K�௽;��{%%?����i�64J����rE���L���F�h����>��s�1��0�.L&��vA��)���Ͽ����,�.1�f,
��,_��1;o��(LP�m��d�%��#�2�(�3�7���p����H�i���^�
I�SR ���(�
k�����T:l_X�h��Z��#;��;z������/a�����R����B�B��1JO5�Ͻ�"aV���F4]�5�jR�|��=pU�H�g�Uv[T�>T�������_�$a��:}�1Nȸ��'�X�3��,g	�X�3JO���}}��^��\����C'h@�2����Mq���rS\���N!��Ǹs�^�8$�w�i$��T�0�,��XX*3��B,�%�na�Sɛ�G!�ܡM[|H�����Ds    ��J��(�MX��ݻ��K<N�&�H�x<ߧ��\E���\`2��FvIs(F\XP3���f	�XP3JOP�L���`b�?l���CٔЅEިZilr>�Α
tʗ��/	h<�ݘs���&,��6�O�l���脮�_\�g�\���α\G�:���u�݀��*�WF1z�P|vl�d��0���
̙��]�N���X8`���j5=��xYK`	�XK`�<��0BQ�����k�<��GIv�X�|�'>V��)ӯ��sg�R��g�R�.�����DV}���7ҧ�e�7��f�b��:��f�|�|�,ͼ���vp
x�O?�3�g $|}����\�f����yt\JA*
_#xkY�_�j;aSAҏ� �`���jRf��A���	�%;C�!Ē�Q�x��L醡��'�pU�����+���_�ިrS�����r#� �-�	D�S���G��♽�(��4Mz^�(U�%7Kn�Б@�%7������a&���XPe�T(��S�MV1K��a	����M��R��'����'�!�+�ܻ��yWM��2դ��N3��9 ��:�A����C�[:�O-�J�y,@��_���[��Y�em�S9&<�g*��8K���u�L1|l2��>�[�8|Gw��y�~ +�X�`�X�`�<��q�U�9TR��]j�Hr��	X�'
7X���4#U;�r3qE�k�L�R_���0�4���ؽ@n=�X�T�Ov��f�a�:��f�<z��R
{S�E-������-x��(���i�U>�Ĺ��Q�c�j=&ǩK=Ǟn�#�a����~Y-n'�&5�~O�IN�L��{h�$�����=]�>�􆊎�f��_����xX���J�����R
��V@�/��:��(�H)�N�����o�6	�X���e���H�(T��3?@^��Z!��z�.Pv����$k��u��s��5�0eL
�@�a�3�Q��t �ܯ�G�C�|�TH���,��X�3��B,�%��`��y�������`��H9�w،fܳ�e3�X�2JO�N1��*��6���f���(���n0.V��ϰIk�C�e��I��u��2�Ix{Q2��8�<|��fBRw�+��`~��h�v�AZ��݊�����<c���=�DA��Ur����{��mR�Y��b_��G�d��9���(�|�b�G�-��Z��Y{x�Е�g�������^����5��-���}���ZS)-��.f:��6��N��Cذ���I�y�p����X�n���Nԝ�5v�t��R�ՠ��Y�ݲڭ��4:+��Wn�V�A����*��/�_���^g��O���l<����r1������2Y^�p*F����t2��/�����\���|:�XΩ)����l��fs[m���V�n��:��5X5�V�ѕv���֝�����_Km��~����_��������[���׷�z.NNNċ��]���8�V�Zu����KK��u�ۨ�u�l�dg�ae���z�qW��Vu@�ݵl�۰V-�o��]�鵹��Gh�ώ��q?;6?s�ɾ��%Ǥ�q?;f�Lb,�B,�%G��g�,����2C��2��XP����2���f��f�1J����c�}���ZC��F�1i	�ώy/S�o��oF�q����q?;&8���'!�쌒Ǔ��ώ�.Kn�KnF�o��g���Xb0/`��!�J��ؔ�g���)�E4C�E4��(E4���~v,=>��
C�F�1) �ώ��1�g�X�3J>�����1�&�Y�2�X�2J�I�r?;�gW�g�t�v���T���v��Xv��X؞�qꭞ[W��{)�M�K1]Ω��h�X\]�&����\,�S�1�Vu��)������r�/ƣ��r�������.Y^�����jp�f�f�����ٯos'�y}��m#�MD%[ǻ�9�������y+�D[Qh�;���#j:�u�8Q��I�RrK��6�c��s�U����~ӭ[��M�v����n�ޕ���c��=�g���u�1ٟ�:2�j�(yt�=��cF�$Ʋ�!Ĳ�QrL(�u�R�XX*3�X*3J�%ܳ��,�j�jF���{�q�:&�'J��%0�XK`����=��2U��f��f�J�g��c�c��zRb��(y<��=��2A��f��f���(�uܳ�%�V:B�t0J�M���u�_�rXD3�XD3J�RDs�:�Y���3���0�Xa���=�gKy��qA��<�䣺�g��i�,C�,��,���u՞u�vOٝ��-��Gϱ�TM�(����;�����M��.�b:��|p������P<{3�N���|<�����^��sq�����g�g��Wc�7?���	W��p�|!�����.�Sx>w��-:�٭�=h)�n}ٱ��kz���o�{����;}�P�"�Ew��uܡ�M�Ϝc���!��F�1�fܡ�1��r��rF���;�1Keba��b��(9�p�:�L?,�B,�%G��P��x�(��b-�QrLZw�c��T��!��Qr(�uܡ�	�%;C�IA�%;���$;w�c��Œ�!Ē�Q򛣄;�q�:��X�`���(96��;�1e�a�b�(9J��CK�τ/��b�QrL
w��uL|,�B�!�򌒏�f�u����{�!���c�ܡ�;�U;Թ�A]6[+���-�=h������j5Z��m����:ԍ�b:9]�����o���|:u��b�=�}����Cq6��h��?�;�{>���?�N'����r<�˦���;��9^q:�N�L���[]��
~)��t��hw%�+����2��$�Q��ki2E�:�}>�,_�==�l�w�n�ͧ�t5��; ,���o84���gD5�ii5��p}��̋E^�o	&�Б��ؘ�#7�����qV=��uzV�o; �~��{�z�ޓ�V�ֱ�zd���a7�cK�3��L`�3�QrL�7�cF�$Ʋ�!Ĳ�Qr�(�u�R�XX*3�X*3J�%ܰ��,�j�jF����q�:&�'J��%0�XK`������2U��f��f�J�a7�c�c��zRb��(y<����2A��f��f���(�uܰ�%�V:B�t0J�M���u�_�rXD3�XD3J�RDs�:nX���3���0�Xa����aKy��qA��<�䣺�a��i�,C�,��,7��uՆuv���v�r�f�j�Vmk��떪��l*i��yú��rr*� ��������&���L��7��d.&���b2[^N.�F��l8ŮtC�H79���ϱ��hr����SGg�W�����ގ�ԍ��c��N�b����lK�L�	�9	�����&��Z��Ba�:x`���5+��2[`��V�`�����<7+��q;ѵ��wz�mu�c�Wu�tlǒN�^_u��X���GE܉�;�q':6�>s��^�{	%Ǥ�q':f�Lb,�B,�%G��D�,����2C��2��XP��2���f��f�1J�w�c�}���ZC��F�1i	܉�y/S�o��oF�q��;�q':&8���'!�쌒Ǔ�܉��.Kn�KnF�o��Dǝ�Xb0/`��!�J��ؔ�D���)�E4C�E4��(E4w��Nt,=>��
C�F�1) ܉�;�1�g�X�3J>���;�1�&�Y�2�X�2J�I�r':�DW�D�i�v��X��JZ�N�eI�e[����������ݛ�h|�/'g���X�^�5~}5����>���B\.�������/�����|>ZG����X������Å�]��p�]M/���݇��:�����i���(�6��PI@-�A"u)n?n#\0���6����'�>�ݍ��/]'J<X}}�x>��zG/j��\���i(x��SM�H���܎nP�wV��,U�]���l�owm�t+G5;�f��ѱ<zdy�����c;�3��*`���QrL���cF�$� �  ��!Ĳ�Qr�(�vt�R�XX*3�X*3J�%܎��,�j�jF�����q;:&�'J��%0�XK`�������2U��f��f�J���c�c��zRb��(y<�����2A��f��f���(�vt܎�%�V:B�t0J�M��vt�_�rXD3�XD3J�RDs;:nG���3���0�Xa�����Ky��qA��<�䣺���i�,C�,��,���vt�vt�z]u���Zu�M���V��ԭz[6�|Ywdގnx�����x6�-���Kq:�N�L���w���p&F�ٛ�l2��PL�/�����rH-��q6y5�N�x&.sq6���b|�m����<��L�}D�:�/��B�K$o����vF:��蘓)��`	HS&���u��عN�s�Ӻ�8���92mot�ѓGi\�Cݟ���5]�.[��lZN���v�]�����rꍮj`�{ܚ�e�#�&nMǭ�5�|�9�d�C����cR͸53b&1��!�匒#D	��c����R�!�R�Qr,(��t�e�~XP3�XP3J�%ܚ�[�1�>Q�e-�!�Z�䘴nMǼ����7C��7��8P­�5Kv�Г�KvF��IvnM�l�	�%7C�%7��7G	����t,1����b��QrlJ��c�ʔ�"�!�"�Qr�"�[�qk:��	_`�!�
��nMǭ��X�3��B,�%������O�,`B,`%�$`�5�����Su�5h�}˱�]��R]K�mK��}5��]����3M�t��r�R\�����_��Ws1�\�φ��X�O�r.�2'��S���Ƴ˱�������b���ύ��Cȅ�R;Rt���iCw��Yj�
~>�&��
����r^p�=	Y�z�6�6
~�����!���l�?�[z/u��b��?���?��C<Y�jl|B2���#7�S�������A�j�;m�諸�j�{=�:v�v�K�G�@܀��q:��>s����;%Ǥ�q:f�Lb,�B,�%G�n@�,����2C��2��XP���2���f��f�1J�7�c�}���ZC��F�1i	܀�y/S�o��oF�q���q:&8���'!�쌒Ǔ�܀��.Kn�KnF�o�n@��Xb0/`��!�J��ؔn@���)�E4C�E4��(E47��t,=>��
C�F�1) ܀��1�g�X�3J>����1�&�Y�2�X�2J�I�r:n@Wm@��v����a��j�dݲ�����tec�W�Qo���gW�����b�|&�����h(�S�u�X̧�9�*f���p).��r|~1?/����r.ƣ���/�];���,mW���ҕ{Z�/g��r��Y�$x�B2���D������n�vt#�x[� �?�Q锺��Qr�&�����K���(��S>�v��\;&�|���7�#I���`�l+�FP�V��S��+��ks[3��Y�>ng����ݾ3��v�n��5hulK6��td��pg:M�,��3w���tl�}���!�0J�I5��ẗ��X�3�X�3J�%ܙ�Y*Ke�KeFɱ��;�1�e�aA�bA�(9b�pg:�L���D����k	��c��3�^�*�!ߌ��@	w���tLp,�BO
B,�%�'ٹ3�]&(��!�܌��%ܙ�;ӱ�`^�JC��Fɱ)ܙ��+S�h��hF�Q�h�Lǝ�Xz|&|��+ ��cR@�3w�c�c)�:.��g�|T7w�c�?Mܳ�e��e�����tܙ�ڙ��t���[��۷ڝN�8�a�:�^�^oz�nޙn�z������l4��rr6�]�������b4M�/ų�|9�\̗b6����rx��O/�K�F����5�f<{5��'g���?�:Ӎa#
�#��U�C��w7���k�֊ZFEj��p����̣�*�*Dy|��� �k@F��.M�ͲVclLxδ�IT{�q�Ě r\��������~����23!      �   �   x�ʹ�0 �}��a�#��F�^?Rn�_��K��MR߹�qN��x��C�K��>>�g[}��*_�_t����+����%X���}����{M�tD0i�������J��R��L�5�a3K��pЅ)������-�      �   N  x��Z�r������UR�H� N.W�@��2%є����8����.Ndd�9��\]�r_��zfP��ρ�v��$
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
��Ϧ�bi��aN$�ln�e,��Q����L���R ���17\Aj(85�2c*w�����42�e�饓�������[�|M2�g9�7&9Rn��ʙ�l�D#�.��W`�����8P������m�	GU�      �   �  x����n˒E�u��?P�dVΏ�g�8h���Xd�Eg~}�c�v��h�IȅȈ�w$�>��B���-|?�}l�4�����dM��ͪw}����R�~X��vx��_�����k�o�]�V�J��7O�@�����E4�q����� �s�!%	e�E�{Q�t���CN�`������+e6�Oԭ�G]���Q����u����P��y:�m�����`�R��E4X)'M$9u�|0�����N�6�fr��������<��<��;�!)��}"�l\�/2����H�AD�:"�L�������u���P��69�t���X��>9��ü���'�(�@�
{�-c2rZp(��#i��l,]��X�7���(��XF��H+�\�!��7�i'��,���rW�Wl<Z��q�^K�wq}��
����j��+O"*5�T
+�wԘנ�����[���z6�G8�46�n�~��^�̸��LIa4���G��p�qX�T�5��cW�E��j|�T��uv��>����Qs�v�u�	��O�M�*���F����"͹���d�k���y)�W�Q���P�#�NX�دT5T>��QJrwonK�(�f�գ��N��^�:j{q�^*om��~Pq�d�0�1�p��P�`�N�J8��o�HJh=[�w�GtDڀ4Âo~�2��Я6�yT�@�>�O��M/��0�Y��jM>���x:g��T��>�q�@gAE�*��$2o!0�ó\B��bb"D�cF;g(��1HRG�]���G�v����,~'���I��.鴽���?��sh,  *x�õ���^뷻w����%C�N�7��VJ�^>����k$������ƉF�H���:z&R�K+�a*��͎�dT�w�*�,?����˫Rq���K�ݷ>n��'X][o�|������""!<utRbL"��S���}1 m".(.�+v�)�����_�h��uW��V-׳�d��sZ�ؤ<H��z�yeڪ|b�vǓ�(���Jz&�(`�v����.��a&E�5�xқ�������X��|C�~�7����V����׼�>���t6�U ����p�S����ᒰ�QL�$��FU�5�u}�^l��]�s�'��t(ܸ�����Wә|R�����SQc��1�|�u��H"�Je82P�ר&|ׯL�ﶾ��:��ܶ�v��`w^䭤=�#9,?�f�t<���#:�X 6d�M")p��҆ �݋7�Ї0|9|����˞���x[��a�r�v�8� j�;}�-G]��@��2��!J�h��3o��8�"��n�\G��`>(�A�*��*��:�d�6J7�����\J�}���9�Gz���@Qhg����	�0���Z���#�5��u+���on���[;�zZ�v�NB�J|�ܳI{'W)n����<���HbK���+�T��C�S�ݷ��ҕ6�}��l�{7��*��6h��k��Ŧ�>���Bh*�HQ!#��*��5����V?Zxެ��t2&ӭ�hq��l���i8^����g���Jk���RpI>����!�D�K��o1dCf@���c�w�A9b��%�b�F�f��έc_�:�l�M[��M���7]�[s5������05���EE�&���;�s�X�bd�CD�
#�FeCmPe�xLoys���^��m�z�M��_a�fbG?���n�}\����N���=�]@Pq$��xZ2���q-�A3������X6[t2$�E�)��%�|��j�z���C�R�@�)D�i3�����0q��)���r,���>�ay���j�۱�Y��i�_c��|�����M�v�+At�I$�&@G ➥ܼa��#��ܳ񕤰 p&�zb�W!m��H�ʥS�r�k��fu�>$մ�史Jk��ʦ���o�<K/?�a" ���BM`�`oU�����`
�O�^���z�q7F�۲��ܓ�r�����H���Y淧y>����َڳ��������؅���Y
��kL�I�:�ÅW��p�@M>���ju�&��Q��̲���IC��zp0��\@���df�����Y���H���h��sS�x`�z�m_������]���{��.}<���6�PK8S�8�ҙ�($"H���7q�-���)����m�ܥ���t{�}e�˯�Ve�oK������@��V�c��XXZ9�#�A��;�k`�6����F��f���ׅ�6��7�|lWEi88�nI�	i��aȸ�P
�.(�1���:���6��cv�s�������dc��4��-k���j�5���
�)E�!"� �3l��F���vS��R��b�Z��5Ζ�x�c�U���h8a��SW�%u��*?���w�T����[T�BfD��Լ����S�%��;Ɓ�	Y�'��.+��Z���x��Y�_�v6��n���G�z�o��y�O���*���2�T��h�y�1��Ɉa��1\�.�VG^'br*��n�2l�����}٬T��j��%�>���\�,����O,u`Р��9�Ȁ�3�#����VK�[��t�g���@�:^v��v�ve�S�4/����+�'[/=��������~��# �)�7 ��Bޱ�Y,��v�,�C��.���m�=�N�%J�u���䘺1���i�d{7kJ/�����w�}���©�{���XZ�B��op��Q�sX~Y���"`�FńR��k����(����]r'���Z��(=�^��stj���Č���?gU#i��"�>�2Ҡ�Ђ� �I�����c
�=�
 	tM��h�<dMH��:�f�N.����RKõ�'��4%���f�V�a��~��,Xd@�d��(XNX�QD�w�iJE�au1j�Ϊ&����3�˴�c{ߓ���{��9�����X��!k#�/�N��L�D�i�&ނ����/&�Zf΋N>W˒"���aZ�M%�UW�wE�Ds�۾����(����s��W��竀��C����#���c�Sh� 8"A(�x g���\��'��}�T�������������q(��-��S"X"��T$���ka-pȿ7\�{~	���8� �L>��Ao=�^�W���f�p�
oXp����&@�����Q.�k�\�d�i���U��@fjj����/���Β��y�8�H���5p�p��i��mk91^���Ң{{�~$���ZF�q`���<��J6�x�?�N,(���������)Ku�5����Lt�yqnv'��|�\ý���9'��ON��D���sԙ����@�$�@fs����ޣՖ��>Q����k�ڗٲ�x�:%1h$�&�?��<������>ߪA*�'d���Kph���ά��լ�"/d�>L�垅ɬ6ݥ��H�$%p8��=�se�����B! ��(.17�58�?�h��s���ׯ7a}��o��ּ֒6�Wn�kG��H<����g1�!�p�.�~�kp����t�j�j��Y�v>�� ��yy�MU�o�c� G�bZ�Z�Y>�`�Q��<�bA�J�:r?X���6頔��$�uz�]�i��a��Rxu�����YJ@���U??y���8F�Eı �z.s���z��F��Nӥ�j��S|(����_�����Ks}e`�R��5���>E�)]�^��믿��fFB[      �      x������ � �      �   �   x�eα�0й�
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
6c0��\����w��q{?#�W��iٯ�`K���-f��C>k!Z8J!p�uN�fV�r�#S�2�?�Wz���i5ZX�~��Աo����oT�jOS��oO�y��d7      �   _  x�u��n�0E��W�X��X��h�"�v3�[�dHr���Z*�Z�^^��W���@Gsw�n�Z�q�.0Aw�^��8^�?=\Iѵ�%���\e	�$����T� i��6�P��T�d��(��=�l��^a̭���s�=w��
$��:���SL-6U	�!
ԚO�������l�RJ�I�K�+֨���eOkRވ�}���uyE�Rp>I0�UT��jd�M���*��J�2�sw�~�wL�W��w��v��>���d��.*�֚��P�֕�ʋo�\���{�7����nvĬ�k5�bJ��&���⅐Q���i�}/����M��A�!z�Y��o��u'�`�!��+ˮhZWW"p ,�
��(���H�ęP&�T��_�i8C���f{K�3Z�8�͔��LE�)�Z���Y<��/�����җ�o&��B���F-:�H,�bn7͙�R�c#�,���-��Ȉy��M'���?���Z�[ ]�3!p�[��)>( j�\�������݃��p��70�ˀ�3��9[�C�)w�lM4̷&��)�ON)�x�ϯ(�Q���ƭPT�������Vm�?!� �!m�      �      x������ � �      �   �   x���M
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