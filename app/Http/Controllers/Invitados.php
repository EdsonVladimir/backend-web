<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Storage;  //libreria para guardar la imagen
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;

class Invitados extends Controller
{
    public function obtenerInvitados(){
        $repuesta = DB::select("select * from pagina_web.invitados a where a.estado='CREADO'");
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!',
            'data'=> $repuesta       
        ]);
		}
		
    public function crearInvitados(Request $res){						
        $uuid = Str::uuid()->toString();       
        $titulo = $res->input('titulo'); 
		$descripcion	= $res->input('descripcion');
        $id_componente	= $res->input('id_componente');
        $id_imagen	= $res->input('id_imagen');
        $url_dir	= $res->input('url_dir');
        $id_invitado = $uuid;
		$repuesta = DB::insert("INSERT INTO pagina_web.invitados(id_invitado, titulo, descripcion, id_componente, id_imagen, url_dir)
            VALUES (?, ?, ?, ?, ?, ?)",[$id_invitado, $titulo, $descripcion, $id_componente, $id_imagen, $url_dir]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Invitado creado con exito!!',
            'data'=> $repuesta       
        ]);
		}

		public function actualizarInvitados(Request $res, $id){
            $titulo = $res->input('titulo'); 
            $descripcion	= $res->input('descripcion');
            $id_componente	= $res->input('id_componente');
            $id_imagen	= $res->input('id_imagen');
            $estado	= $res->input('estado');
            $url_dir	= $res->input('url_dir');

			DB::select("UPDATE pagina_web.invitados SET titulo=?, descripcion=?, id_componente=?, id_imagen=?, url_dir=?,estado=?, modificacion=now()
             WHERE id_invitado=?",[$titulo, $descripcion, $id_componente, $id_imagen, $url_dir,$estado,  $id]);
			
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos actualizados correctamente!!'     
        ]);
		}

        public function eliminarInvitados($id){
            DB::update("UPDATE pagina_web.invitados SET estado=?, modificacion=now()
                        WHERE id_invitado = ?",['ELIMINADO', $id]);
            return response()->json([
                'statusCode' => 200,
                'success' => true,
                'message'=> 'Se elimino el libros con exito!!'     
            ]);
        }
}
