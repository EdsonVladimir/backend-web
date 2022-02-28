<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class Postulados extends Controller
{
    public function obtenerPostulados(){
        $repuesta = DB::select("select * from pagina_web.postulados a where a.estado='CREADO'");

        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'DAtos obtenidos con exito!!',
            'data'=> $repuesta      
        ]);
    }

    
    public function crearPostulados(Request $request){
        //Console::info($request);
       // $id_noticia = $request->input('id_noticia');
       $uuid = Str::uuid()->toString();
        $titulo = $request->input('titulo');
        $url_dir = $request->input('url_dir');
        $id_imagen = $request->input('id_imagen');
        $id_componente = $request->input('id_componente');
        $id_postulados = $uuid;
        DB::insert("INSERT INTO pagina_web.postulados(titulo, url_dir, id_imagen, id_componente, id_postulados) 
                                VALUES(?,?,?,?,?)",[$titulo, $url_dir, $id_imagen, $id_componente, $id_postulados]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se creo el postulado con exito!!'     
        ]);
    }

    
    public function actualizarPostulados(Request $request, $id){
        $titulo = $request->input('titulo');
        $url_dir = $request->input('url_dir');
        $id_imagen = $request->input('id_imagen');
        $id_componente = $request->input('id_componente');
        $estado = $request->input('estado');

        DB::update("UPDATE pagina_web.postulados SET titulo=?, id_componente=?, estado=?, id_imagen=?, url_dir=?,  modificacion=now()
                    WHERE id_postulados = ?",[$titulo, $id_componente, $estado, $id_imagen, $url_dir, $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se actualizo el postulado con exito!!'    
        ]);
    }
    public function eliminarPostulados($id){
        DB::update("UPDATE pagina_web.postulados SET estado=? ,  modificacion=now()
                    WHERE id_postulados = ?",['ELIMINADO', $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se elimino con exito!!'   
        ]);
    }
}
