<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Storage;  //libreria para guardar la imagen
use Illuminate\Support\Facades\Crypt;  //libreria para generar UUID 1
use Illuminate\Support\Str;//libreria para generar UUID 2
class ComponenteGenerico extends Controller
{
    public function obtenerComponenteGenerico(){

        $repuesta = DB::select("select * from pagina_web.componente_generico a where a.estado='CREADO'");

        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!',
            'data'=> $repuesta       
        ]);
    }
    public function obtenerComponenteGenericoUno($id){

        $repuesta = DB::select("select * from pagina_web.componente_generico a where a.estado='CREADO' AND a.id_mivi=?", [$id]);

        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!',
            'data'=> $repuesta       
        ]);
    }
    public function obtenerComponenteComponenteGenerico($id){
        $repuesta = DB::select("SELECT ep.* ,i.url ,i.nombre , dc.nombre doc_nombre,dc.url url_doc,ep.creacion
        FROM pagina_web.componente_generico ep
        INNER JOIN pagina_web.componente c ON ep.id_componente = c.id_componente
        LEFT JOIN pagina_web.imagen i ON ep.id_imagen = i.id_imagen
        LEFT JOIN pagina_web.documento dc on dc.id_documento = ep.id_documento
        WHERE ep.estado = 'CREADO'        AND c.estado = 'CREADO'                
        AND c.id_componente =? order by ep.creacion desc", [$id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message' => 'Datos obtenidos con exito!!',
            'data' => $repuesta,
            /* 'id' => $id,
            'rq' => $request, */]);
    }


    public function insertarComponenteGenerico(Request $res){ 
        $uuid = Str::uuid()->toString();     //generando un U
        $titulo = $res->input('titulo'); 
        $titulo_aux = $res->input('titulo_aux'); 
        $descripcion_corta = $res->input('descripcion_corta'); 
        $id_componente = $res->input('id_componente'); 
        $descripcion = $res->input('descripcion'); 
        $id_imagen = $res->input('id_imagen');
        $url_dir = $res->input('url_dir');
        $url_dir_uno = $res->input('url_dir_uno');
        $url_dir_dos = $res->input('url_dir_dos');
        $imagen_aux = $res->input('imagen_aux');
        $imagen_aux_uno = $res->input('imagen_aux_uno');
        $imagen_aux_dos = $res->input('imagen_aux_dos');
        $imagen_aux_tres = $res->input('imagen_aux_tres');
        $imagen_aux_cuatro = $res->input('imagen_aux_cuatro');
        $id_mivi = $uuid;
        $id_documento =  $res->input('id_documento'); 
        $fecha1 =  $res->input('fecha1');
        $fecha2 =  $res->input('fecha2');
        $fecha3 =  $res->input('fecha3');
        $editorial =  $res->input('editorial');
        $coleccion =  $res->input('coleccion');
        $anio =  $res->input('anio');
        DB::insert("INSERT INTO pagina_web.componente_generico( id_mivi, descripcion, id_imagen, url_dir, url_dir_uno, url_dir_dos, titulo, id_componente, descripcion_corta, titulo_aux, imagen_aux, imagen_aux_uno, imagen_aux_dos, imagen_aux_tres, imagen_aux_cuatro, id_documento, fecha1, fecha2, fecha3, editorial, coleccion, anio) 
                                VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ? , ?, ?, ?, ?, ?,?,?,?,?,?,?,?)",[$id_mivi, $descripcion, $id_imagen, $url_dir,$url_dir_uno,$url_dir_dos, $titulo, $id_componente, $descripcion_corta, $titulo_aux, $imagen_aux, $imagen_aux_uno, $imagen_aux_dos, $imagen_aux_tres, $imagen_aux_cuatro, $id_documento, $fecha1, $fecha2, $fecha3, $editorial, $coleccion, $anio]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se registro con exito!!' 
        ]);
        
    }
    public function actualizarComponenteGenerico(Request $res, $id){	
        $descripcion = $res->input('descripcion'); 
        $id_imagen = $res->input('id_imagen');
        $descripcion_corta = $res->input('descripcion_corta');
        $id_componente = $res->input('id_componente');
        $url_dir = $res->input('url_dir');
        $url_dir_uno = $res->input('url_dir_uno');
        $url_dir_dos = $res->input('url_dir_dos');
        $titulo = $res->input('titulo'); 
        $titulo_aux = $res->input('titulo_aux');
        $estado = $res->input('estado');
        $imagen_aux = $res->input('imagen_aux');
        $imagen_aux_uno = $res->input('imagen_aux_uno');
        $imagen_aux_dos = $res->input('imagen_aux_dos');
        $imagen_aux_tres = $res->input('imagen_aux_tres');
        $imagen_aux_cuatro = $res->input('imagen_aux_cuatro');
        $id_documento = $res->input('id_documento');
        $fecha1 = $res->input('fecha1');
        $fecha2 = $res->input('fecha2');
        $fecha3 = $res->input('fecha3');
        $editorial = $res->input('editorial');
        $coleccion = $res->input('coleccion');
        $anio = $res->input('anio');
        DB::update("UPDATE pagina_web.componente_generico SET descripcion=?, id_imagen=?, url_dir=?, url_dir_uno=?, url_dir_dos=?, titulo=?,
         estado=?, id_componente=?, descripcion_corta=?, titulo_aux=?, imagen_aux=?, imagen_aux_uno=?, imagen_aux_dos=?, imagen_aux_tres=?,
          imagen_aux_cuatro=?,  id_documento=?, fecha1=?, fecha2=?, fecha3=?, editorial=?, coleccion=?, anio=?,  modificacion=now()
                    WHERE id_mivi = ?",[$descripcion, $id_imagen, $url_dir, $url_dir_uno, $url_dir_dos, $titulo,
         $estado, $id_componente, $descripcion_corta, $titulo_aux, $imagen_aux, $imagen_aux_uno, $imagen_aux_dos, $imagen_aux_tres,
         $imagen_aux_cuatro,  $id_documento, $fecha1, $fecha2, $fecha3, $editorial, $coleccion, $anio,  $id]);		
			return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Actualizado con exito!!'     
            ]);
    }
    public function eliminarComponenteGenerico($id){
        DB::update("UPDATE pagina_web.componente_generico SET estado=? , modificacion=now()
                    WHERE id_mivi = ?",['ELIMINADO', $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se elimino la mision vision con exito!!'     
        ]);
		}
}
