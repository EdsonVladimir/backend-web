<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class Pagina extends Controller
{
    public function obtenerPaginas(){
        $repuesta = DB::select("SELECT * from pagina_web.pagina a where a.estado='CREADO'");
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos con exito!!',
            'data'=> $repuesta     
        ]);
    }


    public function crearPagina(Request $request){
        $uuid = Str::uuid()->toString();
        $nombre = $request->input('nombre');
        $descripcion = $request->input('descripcion');
        $id_pagina = $uuid;
        DB::insert("INSERT INTO pagina_web.pagina(id_pagina,nombre, descripcion) 
                                VALUES(?,?,?)",[$id_pagina,$nombre,$descripcion]);
        return response()->json([
                    'statusCode' => 200,
                    'success' => true,
                    'message'=> 'Pagina creada con exito!!!']);
    }


    public function actualizarPagina(Request $request, $id){
        $nombre = $request->input('nombre');
        $descripcion = $request->input('descripcion');
        $estado	= $request->input('estado');
        DB::update("UPDATE pagina_web.pagina SET nombre = ?,descripcion=? , estado=?, modificacion=now()
                    WHERE id_pagina = ?",[$nombre, $descripcion, $estado , $id]);
                return response()->json([
                    'statusCode' => 200,
                    'success' => true,
                    'message'=> 'Pagina actualizada con exito!!' ]);
    }


    public function eliminaPagina($id){
            DB::update("UPDATE pagina_web.pagina SET estado = ?, modificacion=now()
            WHERE id_pagina = ?",['ELIMINADO', $id]);
           return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Pagina eliminada con exito!!'  
           ]);
    }


     public function obtenerPaginaComp(Request $request, $id){
          $queryMenu ="SELECT b.urldir menu from pagina_web.componente a 
          INNER JOIN pagina_web.menu b  ON a.id_componente = b.id_componente 
          where a.id_pagina=? and b.estado='CREADO'
          order by b.creacion desc";
          $menu = DB::select($queryMenu,[$id]);


          $querySlider ="SELECT a.titulo, c.url as img_url, b.descripcion 
          FROM pagina_web.eventos_promocionales a 
          INNER JOIN pagina_web.componente b ON a.id_componente= b.id_componente 
          INNER JOIN pagina_web.imagen c ON a.id_imagen=c.id_imagen 
          WHERE b.id_pagina = ? and a.estado='CREADO' and tipo ='NORMAL'
          order by a.creacion desc";
          $slider = DB::select($querySlider,[$id]);

         //return $repuesta;
          $queryNoticia ="SELECT b.titulo, b.descripcion, b.resumen, b.creacion,c.url , pagina_web.get_id_slider(b.id_noticia)
          from pagina_web.noticia b
          INNER JOIN pagina_web.componente a  ON a.id_componente = b.id_componente 
          INNER JOIN pagina_web.imagen c ON b.id_imagen = c.id_imagen 
          where a.id_pagina= ?  and c.estado = 'CREADO' order by b.creacion desc;";
          $noticia = DB::select($queryNoticia,[$id]);

          
          $seccionPropia = "SELECT b.*, c.url from pagina_web.componente a
          INNER JOIN pagina_web.seccion_propia b 
          ON a.id_componente = b.id_componente 
          INNER JOIN pagina_web.imagen c ON b.id_imagen=c.id_imagen
          WHERE id_pagina=? and b.estado='CREADO'
          order by b.creacion desc";
         $seccion = DB::select($seccionPropia,[$id]);


         $headerPrincipal = "SELECT 
         (select b.url
         from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_uno=b.id_imagen where a.id_componente = c.id_componente) url_imagen_uno,
         (select b.url 
         from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_dos=b.id_imagen where a.id_componente = c.id_componente) url_imagen_dos,
         (select b.url 
         from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_tres=b.id_imagen where a.id_componente = c.id_componente) url_imagen_tres,
         (select b.url 
         from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_fondo=b.id_imagen where a.id_componente = c.id_componente) url_imagen_sup,
         (select b.url 
         from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_aux=b.id_imagen where a.id_componente = c.id_componente) url_imagen_inf
         from pagina_web.componente c INNER JOIN pagina_web.header_pag d ON c.id_componente= d.id_componente WHERE c.id_pagina=?
		 and c.estado='CREADO' order by c.creacion desc";


		$header = DB::select($headerPrincipal,[$id]);
		//  $querySitios="SELECT a.titulo, a.url_dir, c.url
        //                FROM pagina_web.nuestros_sitios a 
        //                INNER JOIN pagina_web.componente b ON a.id_componente = b.id_componente 
        //                INNER JOIN pagina_web.imagen c ON a.id_imagen = c.id_imagen
        //                WHERE b.id_pagina=?";
        $querySitiosalp="SELECT d.titulo, d.url_dir, c.url
        from pagina_web.componente a 
        INNER JOIN pagina_web.nuestros_sitios d ON a.id_componente = d.id_componente
        INNER JOIN pagina_web.imagen c ON d.id_imagen=c.id_imagen where a.id_pagina=?  AND d.tipo_sitio='ALP' and c.estado = 'CREADO'
        order by d.creacion desc";


		$sitiosAlp= DB::select($querySitiosalp,[$id]);


        $querySitios="SELECT d.titulo, d.url_dir, c.url
        from pagina_web.componente a 
        INNER JOIN pagina_web.nuestros_sitios d ON a.id_componente = d.id_componente
        INNER JOIN pagina_web.imagen c ON d.id_imagen=c.id_imagen where a.id_pagina=?  AND d.tipo_sitio='SITIOS' and c.estado = 'CREADO'
        order by d.creacion desc";
         $sitios= DB::select($querySitios,[$id]);


         $querySitiosGeoSil="SELECT d.titulo, d.url_dir, c.url
            from pagina_web.componente a 
            INNER JOIN pagina_web.nuestros_sitios d ON a.id_componente = d.id_componente
            INNER JOIN pagina_web.imagen c ON d.id_imagen=c.id_imagen where a.id_pagina=? AND d.tipo_sitio='GEOSIL' and c.estado = 'CREADO'";
         $sitiosGeoSil= DB::select($querySitiosGeoSil,[$id]);


		$queryPostulados = "SELECT a.titulo, a.url_dir, c.url FROM pagina_web.postulados a 
             INNER JOIN pagina_web.componente b ON a.id_componente= b.id_componente 
             INNER JOIN pagina_web.imagen c ON a.id_imagen=c.id_imagen 
             WHERE b.id_pagina =? and a.estado='CREADO'
             order by a.creacion desc";	
	    $postulados = DB::select($queryPostulados,[$id]);


        $queryRedes = "SELECT a.titulo, a.url_dir, c.url FROM pagina_web.redes a 
        INNER JOIN pagina_web.componente b ON a.id_componente= b.id_componente 
        INNER JOIN pagina_web.imagen c ON a.id_imagen=c.id_imagen 
        WHERE b.id_pagina =? and c.estado='CREADO' order by a.creacion asc";	
        $redes = DB::select($queryRedes,[$id]);

        // eventos
        $queryEventos = "SELECT a.titulo, a.url_dir, c.url 
        FROM pagina_web.eventos_promocionales a 
        INNER JOIN pagina_web.componente b ON a.id_componente= b.id_componente 
        INNER JOIN pagina_web.imagen c ON a.id_imagen=c.id_imagen 
        WHERE b.id_pagina =? and a.estado='CREADO' and a.tipo='PROMOCIONAL'
        order by a.creacion desc";
        $eventos = DB::select($queryEventos,[$id]);

          // enlaces
          $queryOtrosEnlaces = "SELECT a.titulo, a.url_dir FROM pagina_web.otros_enlaces a 
          INNER JOIN pagina_web.componente b ON a.id_componente= b.id_componente 
          WHERE b.id_pagina =? and a.estado='CREADO'
          order by a.titulo asc";	
          $enlaces = DB::select($queryOtrosEnlaces,[$id]);


        $QueryLibros = "SELECT b.*, c.url from pagina_web.componente a 
        INNER JOIN pagina_web.libros b ON a.id_componente= b.id_componente 
        INNER JOIN pagina_web.imagen c ON b.id_imagen=c.id_imagen 
        WHERE a.id_pagina =? and b.estado='CREADO'
        order by b.creacion desc";
      $libros = DB::select($QueryLibros,[$id]);


          return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Pagina obtenida con exito!!',
            'menu'=> $menu,  //no por el momento
            'slider'=> $slider,
            'noticia'=>  $noticia,
            'seccion'=>  $seccion,
			'header'=> $header,
			'alp' => $sitiosAlp,
            'sitios'=> $sitios,
            'GeoSil'=> $sitiosGeoSil,
            'postulados'=> $postulados,
            'redes'=> $redes,
            'eventos'=> $eventos,
            'enlaces'=> $enlaces,
            'libros'=>$libros
          ]);
      }
      public function obtenerPaginaEventos(Request $request, $id){
        
        $queryMenu ="select b.urldir menu from pagina_web.componente a 
        INNER JOIN pagina_web.menu b 
        ON a.id_componente = b.id_componente 
        where a.id_pagina=? and b.estado='CREADO'
        order by b.creacion desc";
        $menu = DB::select($queryMenu,[$id]);   
        
        
        $headerPrincipal = "select 
         (select b.url
         from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_uno=b.id_imagen where a.id_componente = c.id_componente) url_imagen_uno,
         (select b.url 
         from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_dos=b.id_imagen where a.id_componente = c.id_componente) url_imagen_dos,
         (select b.url 
         from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_tres=b.id_imagen where a.id_componente = c.id_componente) url_imagen_tres,
         (select b.url 
         from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_fondo=b.id_imagen where a.id_componente = c.id_componente) url_imagen_sup,
         (select b.url 
         from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_aux=b.id_imagen where a.id_componente = c.id_componente) url_imagen_inf
         from pagina_web.componente c INNER JOIN pagina_web.header_pag d ON c.id_componente= d.id_componente WHERE c.id_pagina=?";
		$header = DB::select($headerPrincipal,[$id]);


        $queryBanner = "SELECT json_build_object(
			'titulo', b.titulo,
			'fechas', b.fechas,
            'url_img',c.url,
            'imagenes',json_agg(
            json_build_object(
             'titulo',d.titulo,
			 'url_doc', e.url)))
            FROM pagina_web.componente a
            INNER JOIN pagina_web.banner b ON a.id_componente=b.id_componente
            INNER JOIN pagina_web.imagen c ON b.id_imagen = c.id_imagen 
            INNER JOIN pagina_web.boton d ON b.id_banner = d.id_banner
			INNER JOIN pagina_web.documento e ON d.url_dir = e.id_documento
            WHERE a.id_pagina=? and  b.estado='CREADO' GROUP BY c.url, b.titulo, b.fechas,b.id_componente";
        $banner = DB::select($queryBanner,[$id]);

        
        $queryMesasTrabajo = "SELECT b.*, c.url img_url FROM pagina_web.componente a 
        INNER JOIN pagina_web.mesas_trabajo b ON a.id_componente= b.id_componente
        INNER JOIN pagina_web.imagen c ON b.id_imagen=c.id_imagen
        WHERE a.id_pagina=? and b.estado='CREADO'
        order by b.titulo asc";
        $mesaTrabajo = DB::select($queryMesasTrabajo,[$id]);


        $queryRegistro = "SELECT b.*,c.url img_url FROM pagina_web.componente a 
        INNER JOIN pagina_web.registro_dir b ON a.id_componente= b.id_componente 
        INNER JOIN pagina_web.imagen c ON b.id_imagen=c.id_imagen
        WHERE a.id_pagina=?";	
        $registro = DB::select($queryRegistro,[$id]);


        $queryInvitados = "SELECT b.*,c.url img_url FROM pagina_web.componente a 
                INNER JOIN pagina_web.invitados b ON a.id_componente= b.id_componente 
                INNER JOIN pagina_web.imagen c ON b.id_imagen=c.id_imagen
                WHERE a.id_pagina =? and  b.estado='CREADO'
                order by b.titulo asc";
        $invitados = DB::select($queryInvitados,[$id]);


        $queryAuspiciadores = "SELECT a.*,  c.url as img_url
        FROM pagina_web.eventos_promocionales a 
        INNER JOIN pagina_web.componente b ON a.id_componente= b.id_componente 
        INNER JOIN pagina_web.imagen c ON a.id_imagen=c.id_imagen 
        WHERE b.id_pagina = ? and a.estado='CREADO' and tipo ='AUSPICIADOR'
        order by a.creacion desc";  
        $auspiciadores = DB::select($queryAuspiciadores,[$id]);


        $querySitios="select json_build_object( 
            'componentes',json_agg(
            json_build_object(
            'titulo',d.titulo,
            'url_dir', d.url_dir,
            'url', c.url
            )
            )
            )
            from pagina_web.componente a 
            INNER JOIN pagina_web.nuestros_sitios d ON a.id_componente = d.id_componente
            INNER JOIN pagina_web.imagen c ON d.id_imagen=c.id_imagen where a.id_pagina=? and c.estado = 'CREADO'
            GROUP BY a.id_componente";
         $sitios= DB::select($querySitios,[$id]);
         $queryRedes = "SELECT a.titulo, a.url_dir, c.url FROM pagina_web.redes a 
         INNER JOIN pagina_web.componente b ON a.id_componente= b.id_componente 
         INNER JOIN pagina_web.imagen c ON a.id_imagen=c.id_imagen 
         WHERE b.id_pagina =? and a.estado='CREADO'
         order by a.creacion asc";	
        $redes = DB::select($queryRedes,[$id]);


     $queryOtrosEnlaces = "SELECT a.titulo, a.url_dir FROM pagina_web.otros_enlaces a 
     INNER JOIN pagina_web.componente b ON a.id_componente= b.id_componente 
     WHERE b.id_pagina =? AND a.estado='CREADO'
    order by a.titulo desc";	

     $enlaces = DB::select($queryOtrosEnlaces,[$id]);
        return response()->json([
           'statusCode' => 200,
           'success' => true,
           'message'=> 'Pagina obtenida con exito!!',
           'menu'=> $menu,  //no por el momento
           'banner'=> $banner,
           'mesaTrabajo'=>  $mesaTrabajo,
           'registro'=>$registro,
           'invitados'=>$invitados,
           'auspiciadores' => $auspiciadores,
           'header'=> $header,
           'sitios'=> $sitios,
           'redes'=> $redes,
           'enlaces'=> $enlaces
         ]);
      }
}
 