<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use Illuminate\Support\Facades\Storage;  //libreria para guardar la imagen
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class NuestroSitios extends Controller
{
   
    public function obtenerNuestroSitios(){

        $repuesta = DB::select("select * from pagina_web.nuestros_sitios a where a.estado='CREADO'");

        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!',
            'data'=> $repuesta       
        ]);
		}


    public function crearNuestroSitios(Request $res){
						
        $uuid = Str::uuid()->toString();        
        $url_dir = $res->input('url_dir'); 
		$titulo = $res->input('titulo');
		$id_componente	= $res->input('id_componente');
        $id_imagen	= $res->input('id_imagen');
        $tipo_sitio	= $res->input('tipo_sitio');
        $id_sitio = $uuid;
			$repuesta = DB::select("INSERT INTO pagina_web.nuestros_sitios(id_sitio, titulo, url_dir, id_componente, id_imagen ,tipo_sitio)
															VALUES(?,?,?,?,?,?)",[$id_sitio,$titulo,$url_dir, $id_componente,$id_imagen, $tipo_sitio]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!',
            'data'=> $repuesta       
        ]);
		}


		public function editarNuestrosSitios(Request $res, $id){
		$url_dir = $res->input('url_dir'); 
		$titulo = $res->input('titulo');
		$id_componente	= $res->input('id_componente');
        $id_imagen	= $res->input('id_imagen');
        $tipo_sitio	= $res->input('tipo_sitio');
        $estado	= $res->input('estado');

			DB::select("UPDATE pagina_web.nuestros_sitios SET titulo=?, url_dir=?,  id_componente=?, id_imagen=?,  tipo_sitio=?, estado=?, modificacion=now()
            WHERE id_sitio=?",[ $titulo, $url_dir,  $id_componente, $id_imagen,  $tipo_sitio, $estado ,$id]);
			
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos actualizados correctamente!!'     
        ]);
		}
        public function eliminarNuestrosSitios($id){
            DB::update("UPDATE pagina_web.nuestros_sitios SET estado=? , modificacion=now()
                        WHERE id_sitio = ?",['ELIMINADO', $id]);
            return response()->json([
                'statusCode' => 200,
                'success' => true,
                'message'=> 'Se elimino el sitio con exito!!'     
            ]);
        }
 }
