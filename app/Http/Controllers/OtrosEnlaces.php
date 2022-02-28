<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class OtrosEnlaces extends Controller
{
    public function obtenerOtrosEnlaces(){
        $repuesta = DB::select("select * from pagina_web.otros_enlaces a where a.estado='CREADO'");

        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'DAtos obtenidos con exito!!',
            'data'=> $repuesta      
        ]);
    }

  
    public function crearOtrosEnlaces(Request $request){
        $uuid = Str::uuid()->toString();
        $titulo = $request->input('titulo');
        $descripcion = $request->input('descripcion');
        $url_dir = $request->input('url_dir');
        $id_imagen = $request->input('id_imagen');
        $id_componente = $request->input('id_componente');
        $id_otr_enlace = $uuid;
        DB::insert("INSERT INTO pagina_web.otros_enlaces(titulo, url_dir, id_imagen, id_componente, id_otr_enlace, descripcion ) 
                                VALUES(?,?,?,?,?,?)",[$titulo, $url_dir, $id_imagen, $id_componente, $id_otr_enlace, $descripcion]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se creo el postulado con exito!!'     
        ]);
    }


    public function actualizarOtrosEnlaces(Request $request, $id){
        $titulo = $request->input('titulo');
        $descripcion = $request->input('descripcion');
        $url_dir = $request->input('url_dir');
        $id_imagen = $request->input('id_imagen');
        $id_componente = $request->input('id_componente');
        $estado	= $request->input('estado');
        DB::update("UPDATE pagina_web.otros_enlaces SET  titulo=?, descripcion=?, id_imagen=?, id_componente=?, url_dir=?, estado=?, modificacion=now()
                    WHERE id_otr_enlace = ?",[ $titulo, $descripcion, $id_imagen, $id_componente, $url_dir, $estado ,$id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se actualizo el postulado con exito!!'    
        ]);
    }


    public function eliminarOtrosEnlaces($id){
        DB::update("UPDATE pagina_web.otros_enlaces SET estado=?, modificacion=now()
                    WHERE id_otr_enlace = ?",['ELIMINADO', $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se elimino con exito!!'   
        ]);
    }
}
