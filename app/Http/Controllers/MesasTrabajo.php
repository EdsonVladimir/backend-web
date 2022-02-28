<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use Illuminate\Support\Facades\Storage;  //libreria para guardar la imagen
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class MesasTrabajo extends Controller
{
    public function obtenerMesasTrabajo(){
        $repuesta = DB::select("select * from pagina_web.mesas_trabajo a where a.estado='CREADO'");
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!',
            'data'=> $repuesta       
        ]);
		}
		
    public function crearMesasTrabajo(Request $res){						
        $uuid = Str::uuid()->toString();       
        $titulo = $res->input('titulo'); 
		$descripcion	= $res->input('descripcion');
        $id_componente	= $res->input('id_componente');
        $id_imagen	= $res->input('id_imagen');
        $id_mesa = $uuid;
		$repuesta = DB::select("INSERT INTO pagina_web.mesas_trabajo(id_mesa, titulo, descripcion, id_componente, id_imagen)
            VALUES (?, ?, ?, ?, ?)",[$id_mesa, $titulo, $descripcion, $id_componente, $id_imagen]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se creo con exito!!',
            'data'=> $repuesta       
        ]);
		}

		public function actualizarMesasTrabajo(Request $res, $id){
        $titulo = $res->input('titulo'); 
		$descripcion = $res->input('descripcion');
        $id_componente = $res->input('id_componente');
        $id_imagen = $res->input('id_imagen');
        $estado	= $res->input('estado');
			DB::select("UPDATE pagina_web.mesas_trabajo SET titulo=?, descripcion=?, id_componente=?, id_imagen=? ,estado=?,modificacion=now()
             WHERE id_mesa = ?",[$titulo, $descripcion, $id_componente, $id_imagen, $estado, $id]);
			
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos actualizados correctamente!!'     
        ]);
		}

        public function eliminarMesasTrabajo($id){
            DB::update("UPDATE pagina_web.mesas_trabajo SET estado=? ,modificacion=now()
                        WHERE id_mesa = ?",['ELIMINADO', $id]);
            return response()->json([
                'statusCode' => 200,
                'success' => true,
                'message'=> 'Se elimino el libros con exito!!'     
            ]);
        }
}
