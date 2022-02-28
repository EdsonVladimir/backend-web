DROP SCHEMA IF EXISTS pagina_web CASCADE;

CREATE SCHEMA pagina_web;


CREATE FUNCTION pagina_web.get_id_slider(id_noti text) RETURNS text
    LANGUAGE plpgsql
    AS $$

DECLARE

resultado jsonb;
begin 
resultado = (select array_to_json(array_agg(todo.*)) as datos_slider
from ( select i.id_imagen, i.url, i.nombre, n.id_noticia
FROM pagina_web.slider s
inner join pagina_web.noticia n on n.id_noticia  = s.id_componente
inner join pagina_web.imagen  i on i.id_imagen =s.id_imagen
where n.id_noticia=id_noti )as todo );


return resultado::text;
END;
$$;



CREATE TABLE pagina_web.banner (
    id_banner text,
    id_imagen text,
    titulo text,
    titulo_tema text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now(),
    id_componente text,
    fechas text,
    estado text DEFAULT 'CREADO'::text
);



CREATE TABLE pagina_web.boton (
    id_banner text,
    url_dir text,
    titulo text,
    estado text DEFAULT 'CREADO'::text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);



CREATE TABLE pagina_web.carousel (
    id_componente text,
    id_imagen text,
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_carousel text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);



CREATE TABLE pagina_web.componente (
    id_tipo_comp_fk text,
    nombre text,
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    descripcion text,
    titulo text,
    id_pagina text,
    id_componente text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);



CREATE TABLE pagina_web.componente_generico (
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
    imagen_aux_cuatro text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now(),
    id_documento text,
    fecha1 date,
    fecha2 date,
    fecha3 date,
    editorial text,
    coleccion text,
    anio text
);



CREATE TABLE pagina_web.documento (
    url text,
    nombre text,
    estado text DEFAULT 'CREADO'::character varying NOT NULL,
    id_documento text,
    id_tipo_comp text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);



CREATE TABLE pagina_web.estado_plurinacional (
    id_imagen text,
    id_componente text,
    titulo character varying(500),
    descripcion character varying(30000),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    link_01 character varying(500),
    link_02 character varying(500),
    id text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);


CREATE TABLE pagina_web.eventos_promocionales (
    id_evento text,
    titulo character varying(500),
    descripcion character varying(2000),
    id_imagen text,
    id_componente text,
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    url_dir character varying(2000),
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now(),
    tipo character varying(15) DEFAULT 'NORMAL'::character varying
);



CREATE TABLE pagina_web.header_pag (
    titulo character varying(100),
    descripcion character varying(500),
    id_imagen_uno text,
    id_imagen_dos text,
    id_imagen_tres text,
    id_imagen_fondo text,
    id_imagen_aux text,
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    link_aux character varying(100),
    id_header_pag text NOT NULL,
    id_componente text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);



CREATE TABLE pagina_web.imagen (
    url character varying(200),
    nombre character varying(50),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_imagen text NOT NULL,
    id_tipo_comp text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);


CREATE TABLE pagina_web.invitados (
    id_invitado text,
    titulo text,
    descripcion text,
    estado text DEFAULT 'CREADO'::text,
    id_componente text,
    id_imagen text,
    url_dir text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);



CREATE TABLE pagina_web.libros (
    titulo text,
    id_imagen text,
    descripcion text,
    id_componente text,
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_libros text,
    id_documento text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now(),
    editorial character varying(100),
    coleccion character varying(100),
    materia character varying(100),
    isbn character varying(50),
    dimension character varying(50),
    num_pag character varying(20),
    anio_edicion character varying(10)
);


CREATE TABLE pagina_web.menu (
    nombre character varying(100),
    urldir text,
    descripcion character varying(200),
    id_componente text,
    id_pagina text,
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_menu text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);


CREATE TABLE pagina_web.mesas_trabajo (
    id_mesa text,
    titulo text,
    descripcion text,
    estado text DEFAULT 'CREADO'::text,
    id_componente text,
    id_imagen text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);


CREATE TABLE pagina_web.noticia (
    id_imagen text,
    id_componente text,
    titulo text,
    descripcion text,
    url text,
    estado text DEFAULT 'CREADO'::character varying NOT NULL,
    id_noticia text,
    noti_ipm integer DEFAULT 0,
    resumen text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now(),
    id_slider text,
    fecha date DEFAULT now()
);



CREATE TABLE pagina_web.nuestros_sitios (
    id_sitio text NOT NULL,
    titulo character varying(2000),
    url_dir character varying(2000),
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    id_componente text,
    id_imagen text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now(),
    tipo_sitio text
);



CREATE TABLE pagina_web.otros_enlaces (
    id_otr_enlace text,
    titulo character varying(500),
    descripcion character varying(2000),
    id_imagen text,
    id_componente text,
    url_dir character varying(2000),
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);


CREATE TABLE pagina_web.pagina (
    nombre character varying(100),
    descripcion character varying(200),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_pagina text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);



CREATE TABLE pagina_web.postulados (
    id_postulados text,
    titulo character varying(500),
    id_componente text,
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    id_imagen text,
    url_dir character varying(500),
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);



CREATE TABLE pagina_web.redes (
    id_red text,
    titulo character varying(200),
    id_componente text,
    id_imagen text,
    url_dir character varying(2000),
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);


CREATE TABLE pagina_web.registro_dir (
    id_regis text,
    titulo text,
    descripcion text,
    estado text DEFAULT 'CREADO'::text,
    id_componente text,
    id_imagen text,
    url_dir text,
    correo_uno text,
    correo_dos text,
    correo_tres text,
    correo_cuatro text,
    correo_cinco text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);



CREATE TABLE pagina_web.seccion_propia (
    titulo character varying(100),
    descripcion character varying(5000),
    url_imagen character varying(100),
    estado character varying(10) DEFAULT 'CREADO'::character varying,
    link_discurso character varying(100),
    id_componente text,
    id_sec_pro text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now(),
    id_imagen text
);



CREATE TABLE pagina_web.slider (
    id_imagen text,
    id_componente text,
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_slider text,
    titulo character varying(200),
    descripcion text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);


CREATE TABLE pagina_web.tipo_componente (
    nombre character varying(100),
    descripcion character varying(200),
    estado character varying(10) DEFAULT 'CREADO'::character varying NOT NULL,
    id_tipo_comp text,
    creacion timestamp without time zone DEFAULT now(),
    modificacion timestamp without time zone DEFAULT now()
);



ALTER TABLE ONLY pagina_web.header_pag
    ADD CONSTRAINT header_pag_pkey PRIMARY KEY (id_header_pag);



ALTER TABLE ONLY pagina_web.imagen
    ADD CONSTRAINT imagen_pkey PRIMARY KEY (id_imagen);



ALTER TABLE ONLY pagina_web.nuestros_sitios
    ADD CONSTRAINT nuestros_sitios_pkey PRIMARY KEY (id_sitio);


