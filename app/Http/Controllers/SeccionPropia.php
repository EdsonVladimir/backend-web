<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class SeccionPropia extends Controller
{
    //
    public function obtenerSeccionPropia(){
        $repuesta = DB::select("select * from pagina_web.seccion_propia a where a.estado='CREADO'");

        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'DAtos obtenidos con exito!!',
            'data'=> $repuesta      
        ]);
    }

    public function crearSeccionPropia(Request $request){
        $uuid = Str::uuid()->toString();
        $titulo = $request->input('titulo');
        $descripcion = $request->input('descripcion');
        $url_imagen = $request->input('url_imagen');
        $link_discurso = $request->input('link_discurso');
        $id_componente = $request->input('id_componente');
        $id_imagen = $request->input('id_imagen');
        $id_sec_pro=$uuid;
        DB::insert("INSERT INTO pagina_web.seccion_propia(titulo, descripcion, url_imagen,  link_discurso, id_componente, id_imagen, id_sec_pro) 
                                VALUES(?,?,?,?,?,?,?)",[$titulo, $descripcion, $url_imagen,  $link_discurso, $id_componente, $id_imagen, $id_sec_pro]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se creo la seccion con exito!!'     
        ]);
    }


    public function actualizarSeccionPropia(Request $request, $id){
        $titulo = $request->input('titulo');
        $descripcion = $request->input('descripcion');
        $url_imagen = $request->input('url_imagen');
        $link_discurso = $request->input('link_discurso');
        $id_componente = $request->input('id_componente');
        $id_imagen = $request->input('id_imagen');
        $estado = $request->input('estado');

        DB::update("UPDATE pagina_web.seccion_propia SET titulo=?, descripcion=?, url_imagen=?,  link_discurso=?, id_componente=?, id_imagen=?,estado=?, modificacion=now()
                    WHERE id_sec_pro = ?",[$titulo, $descripcion, $url_imagen,  $link_discurso, $id_componente, $id_imagen,$estado, $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se actualizo la seccion con exito!!'    
        ]);
    }

    
    public function eliminarSeccionPropia($id){
        DB::update("UPDATE pagina_web.seccion_propia SET estado=? , modificacion=now()
                    WHERE id_sec_pro = ?",['ELIMINADO', $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se elimino con exito!!'   
        ]);
    }
}
