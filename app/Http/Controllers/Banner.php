<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use Illuminate\Support\Facades\Storage;  //libreria para guardar la imagen
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class Banner extends Controller
{
    public function obtenerBanner(){
        $repuesta = DB::select("select * from pagina_web.banner a where a.estado='CREADO'");
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!',
            'data'=> $repuesta       
        ]);
		}
		
    public function crearBanner(Request $res){						
        $uuid = Str::uuid()->toString();        
        $id_imagen = $res->input('id_imagen'); 
		$titulo = $res->input('titulo');
		$titulo_tema	= $res->input('titulo_tema');
        $fechas	= $res->input('fechas');
        $id_componente	= $res->input('id_componente');
        $id_banner = $uuid;
		$repuesta = DB::select("INSERT INTO pagina_web.banner(id_banner, id_imagen, titulo, titulo_tema, fechas, id_componente)
															VALUES(?,?,?,?,?,?)",[$id_banner, $id_imagen, $titulo, $titulo_tema, $fechas, $id_componente]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!',
            'data'=> $repuesta       
        ]);
		}

		public function actualizarBanner(Request $res, $id){
            $id_imagen = $res->input('id_imagen'); 
            $titulo = $res->input('titulo');
            $titulo_tema	= $res->input('titulo_tema');
            $fechas	= $res->input('fechas');
            $id_componente	= $res->input('id_componente');
            $estado = $res->input('estado');
			DB::select("UPDATE pagina_web.banner SET id_imagen=?, titulo=?, titulo_tema=?, fechas=?, id_componente=?, modificacion=now(),  estado=? WHERE id_banner=?",[$id_imagen, $titulo, $titulo_tema, $fechas, $id_componente, $estado ,$id]);
			
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos actualizados correctamente!!'     
        ]);
		}

        public function eliminarBanner($id){
            DB::update("UPDATE pagina_web.banner SET estado=? , modificacion=now()
                        WHERE id_banner = ?",['ELIMINADO', $id]);
            return response()->json([
                'statusCode' => 200,
                'success' => true,
                'message'=> 'Se elimino el banner con exito!!'     
            ]);
        }
}
