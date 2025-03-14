PGDMP     ;                    y            pagina    13.5 (Debian 13.5-1.pgdg110+1)    13.5 (Debian 13.5-1.pgdg110+1) r    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
   pagina_web         heap    postgres    false    4            �            1259    24833    noticia    TABLE     @  CREATE TABLE pagina_web.noticia (
    id_imagen text,
    id_componente text,
    titulo character varying(500),
    descripcion character varying(2000),
    url character varying(500),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_noticia text,
    noti_ipm integer DEFAULT 0
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
       public          postgres    false    204    205    205            �           2604    16579    noticia id_noticia    DEFAULT     x   ALTER TABLE ONLY public.noticia ALTER COLUMN id_noticia SET DEFAULT nextval('public.noticia_id_noticia_seq'::regclass);
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
   pagina_web          postgres    false    226   ��       �          0    24912    eventos_promocionales 
   TABLE DATA           ~   COPY pagina_web.eventos_promocionales (id_evento, titulo, descripcion, id_imagen, id_componente, estado, url_dir) FROM stdin;
 
   pagina_web          postgres    false    241   ��       �          0    24812 
   header_pag 
   TABLE DATA           �   COPY pagina_web.header_pag (titulo, descripcion, id_imagen_uno, id_imagen_dos, id_imagen_tres, id_imagen_fondo, id_imagen_aux, estado, link_aux, id_header_pag, id_componente) FROM stdin;
 
   pagina_web          postgres    false    227   ��       �          0    24819    imagen 
   TABLE DATA           R   COPY pagina_web.imagen (url, nombre, estado, id_imagen, id_tipo_comp) FROM stdin;
 
   pagina_web          postgres    false    228   ��       �          0    24826    libros 
   TABLE DATA           f   COPY pagina_web.libros (titulo, id_imagen, descripcion, id_componente, estado, id_libros) FROM stdin;
 
   pagina_web          postgres    false    229   �       �          0    24870    menu 
   TABLE DATA           j   COPY pagina_web.menu (nombre, urldir, descripcion, id_componente, id_pagina, estado, id_menu) FROM stdin;
 
   pagina_web          postgres    false    235   
�       �          0    24833    noticia 
   TABLE DATA           w   COPY pagina_web.noticia (id_imagen, id_componente, titulo, descripcion, url, estado, id_noticia, noti_ipm) FROM stdin;
 
   pagina_web          postgres    false    230   ȝ       �          0    24877    nuestros_sitios 
   TABLE DATA           j   COPY pagina_web.nuestros_sitios (id_sitio, titulo, url_dir, estado, id_componente, id_imagen) FROM stdin;
 
   pagina_web          postgres    false    236   /�       �          0    24919    otros_enlaces 
   TABLE DATA           z   COPY pagina_web.otros_enlaces (id_otr_enlace, titulo, descripcion, id_imagen, id_componente, url_dir, estado) FROM stdin;
 
   pagina_web          postgres    false    242   �       �          0    24841    pagina 
   TABLE DATA           L   COPY pagina_web.pagina (nombre, descripcion, estado, id_pagina) FROM stdin;
 
   pagina_web          postgres    false    231   ]�       �          0    24891 
   postulados 
   TABLE DATA           j   COPY pagina_web.postulados (id_postulados, titulo, id_componente, estado, id_imagen, url_dir) FROM stdin;
 
   pagina_web          postgres    false    238   �       �          0    24898    redes 
   TABLE DATA           ^   COPY pagina_web.redes (id_red, titulo, id_componente, id_imagen, url_dir, estado) FROM stdin;
 
   pagina_web          postgres    false    239   ��       �          0    24848    seccion_propia 
   TABLE DATA              COPY pagina_web.seccion_propia (titulo, descripcion, url_imagen, estado, link_discurso, id_componente, id_sec_pro) FROM stdin;
 
   pagina_web          postgres    false    232   ��       �          0    24855    slider 
   TABLE DATA           f   COPY pagina_web.slider (id_imagen, id_componente, estado, id_slider, titulo, descripcion) FROM stdin;
 
   pagina_web          postgres    false    233   K�       �          0    24862    tipo_componente 
   TABLE DATA           X   COPY pagina_web.tipo_componente (nombre, descripcion, estado, id_tipo_comp) FROM stdin;
 
   pagina_web          postgres    false    234   -�       �          0    16534    carousel 
   TABLE DATA           Q   COPY public.carousel (id_componente, id_imagen, estado, id_carousel) FROM stdin;
    public          postgres    false    218   ��       �          0    16391 
   componente 
   TABLE DATA           t   COPY public.componente (id_tipo_comp_fk, nombre, estado, descripcion, titulo, id_pagina, id_componente) FROM stdin;
    public          postgres    false    203   
�       �          0    24905    eventos_promocionales 
   TABLE DATA           q   COPY public.eventos_promocionales (id_evento, titulo, descripcion, id_imagen, id_componente, estado) FROM stdin;
    public          postgres    false    240   ¬       �          0    16424    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    210   ߬       �          0    24763 
   header_pag 
   TABLE DATA           �   COPY public.header_pag (titulo, descripcion, id_imagen_uno, id_imagen_dos, id_imagen_tres, id_imagen_fondo, id_imagen_aux, estado, link_aux, id_header_pag, id_componente) FROM stdin;
    public          postgres    false    223   ��       �          0    16450    imagen 
   TABLE DATA           N   COPY public.imagen (url, nombre, estado, id_imagen, id_tipo_comp) FROM stdin;
    public          postgres    false    213   �       �          0    16522    libros 
   TABLE DATA           b   COPY public.libros (titulo, id_imagen, descripcion, id_componente, estado, id_libros) FROM stdin;
    public          postgres    false    217   �       �          0    16510    menu 
   TABLE DATA           f   COPY public.menu (nombre, urldir, descripcion, id_componente, id_pagina, estado, id_menu) FROM stdin;
    public          postgres    false    216   �       �          0    16396 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    205   ��       �          0    16463    noticia 
   TABLE DATA           s   COPY public.noticia (id_imagen, id_componente, titulo, descripcion, url, estado, id_noticia, noti_ipm) FROM stdin;
    public          postgres    false    215   |�       �          0    16385    pagina 
   TABLE DATA           H   COPY public.pagina (nombre, descripcion, estado, id_pagina) FROM stdin;
    public          postgres    false    201   #�       �          0    16415    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    208   +�       �          0    16438    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
    public          postgres    false    212   H�       �          0    24884 
   postulados 
   TABLE DATA           R   COPY public.postulados (id_postulados, titulo, id_componente, estado) FROM stdin;
    public          postgres    false    237   e�       �          0    24756    seccion_propia 
   TABLE DATA           {   COPY public.seccion_propia (titulo, descripcion, url_imagen, estado, link_discurso, id_componente, id_sec_pro) FROM stdin;
    public          postgres    false    222   ��       �          0    16458    slider 
   TABLE DATA           b   COPY public.slider (id_imagen, id_componente, estado, id_slider, titulo, descripcion) FROM stdin;
    public          postgres    false    214   �       �          0    16388    tipo_componente 
   TABLE DATA           T   COPY public.tipo_componente (nombre, descripcion, estado, id_tipo_comp) FROM stdin;
    public          postgres    false    202   ��       �          0    16404    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    207   J�       �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    209            �           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 4, true);
          public          postgres    false    204            �           0    0    noticia_id_noticia_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.noticia_id_noticia_seq', 6, true);
          public          postgres    false    219            �           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    211            �           0    0    seccion_propia_id_sec_pro_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.seccion_propia_id_sec_pro_seq', 1, true);
          public          postgres    false    224            �           0    0    slider_id_slider_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.slider_id_slider_seq', 11, true);
          public          postgres    false    220            �           0    0     tipo_componente_id_tipo_comp_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tipo_componente_id_tipo_comp_seq', 6, true);
          public          postgres    false    221            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    206                       2606    16433    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    210            
           2606    16435 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    210                       2606    16401    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    205                       2606    16446 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    212                       2606    16449 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    212                       2606    16414    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    207                       2606    16412    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    207                       1259    16421    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    208                       1259    16447 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    212    212            �      x������ � �      �   �  x���Mo7��3���������E �8A|ͅ"�`��7Ȯ���Il`�@�A��%��^~(jy� Z�A�.0�!X��{F��{{|Z������>,����)���H c��"�IPJȦ��8,ZmP��{�����w3iX�S�%)L�YCO-@Am}�0����X��ĳaE�1�l!���!�dC֜sZ�h�\*$䞜e$��=��%lθ<�φ}�T$�{"��~�5y�0�:�ќ��pO���u�bڄ����t9ȁ�8^,�@&ѓ�s�c���.˔�2�0�j.�i�:m�$��V����D��kA�-�@�x0K)J��b�Q8CIVB�$�p��P4�F߄����dSR]�,�Ov�|;��·��t�V�e����.��Mc�޺�E��~Fg�*����s�V疪��nF0����#����|y:��0]w�b�2� �u�T��a+�^�F�U\[$��j+�\SrŴ�N�yF�P����\����Ѯ�^-��Ҋ�yz{S؆�zic� A͘���+{%eatOX[���"b������=^n$z���ޘI�gF.
9I�M�]��F����R��n9�> h��̓�� �З?K��,7����%�K��V�='����U���j�	�����ϵ]p9a�^��T^����hYIkmC�]�^u�o����+�ش+��FH��lϔ�O��3��S����{>���;������F>8�W�h �� ɇ[���*����u��w      �   �   x���=NA�z�\����g�t҂D��c�)+�Ϥ�	"�x�{�\�v��@RT ���9S�#	�������S���SPm���.@�d�����}Z�Wt����^�j"� )�>�~�^�>��}��>���~�l�з9(;�4%ʙ�;uड"Z��;��Xĕ9���i�@k���ѱiL���M 2И5)��������ƒ����4X+�?*����E�g��<���{�      �   �   x�%��N1���S�����+�D��;vD�n�[��'���W�h��X����	���m��v�����n�����j� ES�8"pNc4̳Ղ���С
@s��Z!�Ed���P��qV��$�	=Q�ƥ��]�.,h@��B^sM������{��<>��7��H�V! �e�t��3F�1fvآa�a�D��C#�0�+����m�/��L�      �   J  x����n#KD��x?��ӛ%��DoDb6iER�*z���+���g�j#ypodD��ñ�ۗ�}������UpZ��tM�Fg<�Uo�����m�����������am���&y�P�J��C�Qa/#b4ĩ��
Ƒ����e�<`�,��@<�S	�I�8����V�|*yXv�~�Q��!�u�=܆�n��Q�9����`�8L6HI�O^"�CZ�`�s)&wX��hW����_.�q��|-D�z.ByRﶳ]������l���d؄�1�Ҥ��#�t��9��J����,!�^m��sw������U7*C��2K׼�7����E>�Ɉq֑���>���CNc�ð�shźY�j��o�
6���~����8���j*.����Q�'��x!4
VI�d�H;���:���&<D?�B"f�F�#kx4ʘ����d�f�,���5^��hQ�.�^m���K����O�
1qiD�D���X�g�ܹ��lf��uN|l�m=uO#�o?�^:���ϟ�e!��0F+�A���#�AcK�&)��%��}��*=�V��ev�嗘�n��탕Z���T�8�������(�4C$PN	Y)-���D�ڨ �Zÿ�p��AT8Q$�1(���JU���?��;���U�Ҭ�|k��i�T�������U�~U�?�$:I��"�,�*9��``A[%�q��g��Y� ?"`q�'lQn�*��ﺵ��޽U��`��q���Oϸ2w�Y�f�>����x�l�e\�*�c��e���E���r	��CJB��>.e�ws�%����g_���U`�Ý�[�z�.�ٌ�Xe��$]��մ�����\x�� ,E�)�-�"�H�l
L�;����ͮV��9��v[6��Zj�+oj��?�˽�����bIR�D��A3�H���N�����Q)��̳�@h�3��c�~��l�m�\��������O,/StA+�Rz�-�IMCސ`O�X��( &�T�@�ʁ�����&<����β�]��zV�l��bR�͆G�VEeڬ|`5��Ѿ������Q(����f08�� B	��}\t�4�Xť7_��tŲ~�7���Z����S�Z������şT	�0����޽�=U,,�X�)g�I~U��h��M��~��up!�۸�O�*��M���ŵ'T���x��f��(&YgyD�T�'����G5�y�2��|}��۬�شV�ƙ�A~��~k�GzX~P���p���DJ��<Rl�3ːV$!!H�1�c�s��(W!����J47]���6���h7m*=Z�2-~t��9����x��>����)�Y
-�u9A�`!iX�y��u)�""��2鯆:��}���3w�^_�y[��ԟ��G���Vg��91m\�H$GF)HD���с������u��ncs������W�,���,��K�MZ��Ӥ����y���J�;`M<�VGi�}P�}z�5���msx\���d�7D?�[��V�NB�@T�^o�Ĵ�:R~�TQ9j��J#Bm"�KC��/�59��/M�ܨ�n�ɘM76���N��P��px��Z?ji���}
]+��G��!q� { �1ID���@�
Va�Ua�A=&�8�1,��.�x=5]5k�<�6�y�v:���tή��`&��>���ܯ}Rqaf`��Q[D>�5sz�O�AU����Z4&}=���t/;ݐ��|��k�r�AU.w��q�R�;��%�9�Tx����0<��6$��������N��	��X7�|2d/�y������r{��jԞj��Ösm��*�O�m����d��a!�}`Ǿ�)�c���������C���S"'�]�i�c��N��Jic���)��DT��j�#��@��\�	�Lx����	����j�-�iY9��\od��kT���_]=m�[٬j��̦���1��lu�u1a
*{Df����q����px�Pq�.��Wx�w(n]�u��o-��t������d?����\���U?c�(���r0�!��v�~���c���߾}�7�0�B      �      x������ � �      �   �   x�eα�0й�
��
�P��t�`!��8��$.N��$��{�j{��6"��B���H-u���/���N+��w�0m-e��DV�Ӻ#�*�n���j�rw??���@��'��e�c�3�y��4ObΆ���4x�,��(�qʰun=���]F�G %�
��{��sA8      �   W  x��S�r�0}�_��Ɍ����b�q�1�3�N^$-P���9��늤3�>����g���FE�f��%�l�27�r�Fqh9
Q��|�y�g�
b�
eG�*c�,�����A����$A��tÖ́��R��A���"ᓬ,��#��3-�����h��⏺�����A�[ᾟ��A�#]&0�<�G��TM@�j��De ��F��VA��& ���i�'��V��|�Y������1�w|��tY�ҍT�Z��"�z�aa���+ܘ�^1�E�/�� �ϯ�M�C��n7��.��*�9�WG�O8����q��]�?��|������I��$�ɖ���{����W���������s���>��s� m��4�8xh��t�b�.a�O������5v%B��k<K!ǥ���t~}y�-��k^_:���v�7�Q~�u��m�Gx�k��8�ot�⨟�!$�&;`��p�d�G�\.Av�"B�%�Do{ZB�(�:�~̀z�d��:5�<>�F��}75��`r�.kʛ!O}i�� ��
.��/��q!c,J���f�Z�� ��@'�P�Κ��Z,��g      �   �  x���Mo7�ϻ���G"9~�fق#������p/�xic7��T �pNI��b�Y,����1Z��"`1�C"�@c�L����/we9�~_����W2�V�*�z�|��������2�#��2$�j&H�-�<�CBM��f+�	1ZR�N�BȮ(�*xSJ��B��Ą�u������Uc�2��d�����*2���7|�k}�#�j���<��Z&�~����i:�f�G�w���=N�����G2Ƒ����ݢ�1�Zo���7�j0�l�w��ы1=kn]��������Oؘ���?��n��^^|M��?�G=΋
��&��QOS�G����d����BC�{)�g�@�B�$p�Z���U:�KH@BH�4�b6����?���T��W�/|���i�_�}���k�"$����l��ڢf��B����Ɂp��9nv���{ժ:>/\�әI���g]������kRS���ŁrF-�j;	�Z�����B���b��C�2�؞�s�����R	�
�P����mnov��o����|\x�M�x-1I_���Ejo����Z�&��9�r�z��w����%Gm�ͣ�������J�lYmn�xx���޽P�흦����A��J�,�j;T�m�ŧV����8���sN�      �   f  x����n�0���~��)rx�΍��@oh���C��-�Z�~��i�tg��Ǉ9�(���Pb��@ �c��9�y��v���}�����S�J(�"�!+V8�䝍���/�i~��P�k��S����}��0��$�1��P�6�%[����tL��G���@K�I� .�K����By�bC�0^�����h��P| b�ע���twt�3���w/��{A�S��BLDYC9�L*�+ģ��p�����w���et:c�y�F�J{��R.�}�c�9��Yr����YF�7�u���Ǥ��(Q@�Ȣ�1(��-�ߘ�T�<N�j�u�_o5O�j���8�      �   s   x�%�A
�0F�ur��@��X�u�"�s�33��C��+�⃷�m�,���q�d�j��V�RE����֦�D��%���~�����1pJ�p��4&�4F��~ J'*      �   �   x��K�  �5���
�;��5��0|�I#�֞��卩:S���e� h���.�k�DQ�ڲ��[���m�6};��[��0f;B�T��3@i�&8[�zT�t��W�h��}�n�`59��=DJdمы׺~��0ļL�?��䣗R�t4-�      �     x���Mo1�ϛ���f���
�R' P�{ܮ��F�����M�H��(H{�����酋ւL��xS@`��Q���M���k���xpAz0�	�����b�Qt��<�R�b��R�9JS���]պڼX.w�]_01��>���/C�՚7C�)�j������������c��'F4�Ȭ��T(%���_�����TPd(`$��F�B��zk��o��e�BpR؋�H�����r�.�m�?���A�F��D%��A;���]�=mzʛy<oi��ø]�a�p�|�����e+�=E0��ɱ�ؐ
���E�y7����i��:y個���0�K�:��FpШw��
�Ty�툹�����<Q:ޮǓۛG��H�i����r����?�_���~[ч�߿s��+���l�>����<���m��0�����V��ml�	|�F���E�������}�}��叔�_:��n�_�eQg#�qsx���{�X,~pB|      �   �  x�U��n�0D��W�H�,Yvrl� 	��@
�ˊ\I�)�@Ri���lAn�`��<��� ��:oF��9�.}5�k>�Zqѓ_���̋%����>Ëx��<�e�	p�4����	����#x�`�aŐ�RF�����&���xF�����6�D���`��,K�L>@�.�j�H^�j�qQ�%K!7��K�!�E<�4����U;^ъ�<���f�`��V���qW�82�����݌���!�XEN�ٍ���2��4pr�l5��eƫ�J�����r��\�s����Op�xI/]��2�,^q�%Xɔ��D�I�8����+���S��T6w���ϫ�U~<S�w}���QS�;:7�]���������S����R�$���k�757���U�e��ߋ�~��$�i      �   �   x��ϱN1E�z�_��ĉ�-H�nǶ�D��ݶ[?�=ʠ=�B,���Ma7��N�Yd{������=@bv�EJ%������ǁ���kl��
6c0��\����w��q{?#�W��iٯ�`K���-f��C>k!Z8J!p�uN�fV�r�#S�2�?�Wz���i5ZX�~��Աo����oT�jOS��oO�y��d7      �   �  x�u�ˎ�0E��W�X��X� �t��l��H�0`�E���Wi��@����d���놃�Ä�*D�2����mf��������������kN�5r���F� V��xMQ}d����r?V!���Kv>8�&�s@(.�Si��HZ]��:{uJ`C>Dph2xݩ�e,��J�֬z]��F<">�;�%��[*���Q7�� �(�`��q�0�^ޑ��}Ȁ�z���!���`R�R��M�����e��e=����u����6�jn�Y|Ҧ�����F���:��˺ݦ>�#�_O-���:R1�E��6�.s��\�S��uYz�I�؏��ٴ�͔V�)�=���p鹳�f�L,��!�vZ��Nľ ���P�Z̀�,X���Ɩ�z��Z�	�0�=�Y�R�uŅ�RJ����R�%vA�`���I)��O�      �      x������ � �      �   �   x���M
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