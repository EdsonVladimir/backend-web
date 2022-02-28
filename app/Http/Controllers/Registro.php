<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Storage;  //libreria para guardar la imagen
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class Registro extends Controller
{
    public function obtenerRegistro(){
        $repuesta = DB::select("select * from pagina_web.registro_dir a where a.estado='CREADO'");
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!',
            'data'=> $repuesta       
        ]);
		}
		
    public function crearRegistro(Request $res){						
        $uuid = Str::uuid()->toString();       
        $titulo = $res->input('titulo'); 
		$descripcion	= $res->input('descripcion');
        $id_componente	= $res->input('id_componente');
        $id_imagen	= $res->input('id_imagen');
        $url_dir	= $res->input('url_dir');
        $correo_uno	= $res->input('correo_uno');
        $correo_dos	= $res->input('correo_dos');
        $correo_tres = $res->input('correo_tres');
        $correo_cuatro = $res->input('correo_cuatro');
        $correo_cinco = $res->input('correo_cinco');
        $id_regis = $uuid;
		$repuesta = DB::select("INSERT INTO pagina_web.registro_dir(
            id_regis, titulo, descripcion, id_componente, id_imagen, url_dir,correo_uno,correo_dos,correo_tres,correo_cuatro,correo_cinco)
            VALUES (?, ?, ?, ?, ?, ?,?,?,?,?,?)",[$id_regis, $titulo, $descripcion, $id_componente, $id_imagen, $url_dir, $correo_uno,$correo_dos,$correo_tres,$correo_cuatro,$correo_cinco]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!',
            'data'=> $repuesta       
        ]);
		}

		public function actualizarRegistro(Request $res, $id){
            $titulo = $res->input('titulo'); 
		$descripcion	= $res->input('descripcion');
        $id_componente	= $res->input('id_componente');
        $id_imagen	= $res->input('id_imagen');
        $url_dir	= $res->input('url_dir');
        $correo_uno	= $res->input('correo_uno');
        $correo_dos	= $res->input('correo_dos');
        $correo_tres = $res->input('correo_tres');
        $correo_cuatro = $res->input('correo_cuatro');
        $correo_cinco = $res->input('correo_cinco');
			DB::select("UPDATE pagina_web.registro_dir SET titulo=?, descripcion=?, id_componente=?, id_imagen=?, url_dir=?, correo_uno=?,correo_dos=?,correo_tres=?,correo_cuatro=?,correo_cinco=? WHERE id_regis=?",[$titulo, $descripcion, $id_componente, $id_imagen, $url_dir, $correo_uno,$correo_dos,$correo_tres,$correo_cuatro,$correo_cinco, $id]);
			
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos actualizados correctamente!!'     
        ]);
		}

        public function eliminarRegistro($id){
            DB::update("UPDATE pagina_web.registro_dir SET estado=?
                        WHERE id_regis = ?",['ELIMINADO', $id]);
            return response()->json([
                'statusCode' => 200,
                'success' => true,
                'message'=> 'Se elimino el libros con exito!!'     
            ]);
        }
}
