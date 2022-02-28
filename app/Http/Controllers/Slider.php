<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class Slider extends Controller
{
    public function obtenerSliders(){
        $repuesta = DB::select("select * from pagina_web.slider a where a.estado='CREADO'");
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'conexion a DB  exito!!',
            'data'=> $repuesta      
        ]);
    }

    public function obtenerSliderxComponente($id){
        $repuesta = DB::select("SELECT ep.* ,i.url ,i.nombre
        FROM pagina_web.slider ep
        INNER JOIN pagina_web.componente c ON ep.id_componente = c.id_componente
        LEFT JOIN pagina_web.imagen i ON ep.id_imagen = i.id_imagen
        WHERE ep.estado = 'CREADO'        AND c.estado = 'CREADO'                
        AND c.id_componente = ? order by ep.creacion desc", [$id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message' => 'Datos obtenidos con exito!!',
            'data' => $repuesta,
        ]);
    }

 
    public function crearSlider(Request $request){
        //Console::info($request);
        $uuid = Str::uuid()->toString();
        $id_componente = $request->input('id_componente');
        $id_imagen = $request->input('id_imagen');
        $titulo = $request->input('titulo');
        $descripcion = $request->input('descripcion');
        $id_slider = $uuid;
        DB::insert("INSERT INTO pagina_web.slider(id_componente, id_imagen,id_slider, titulo, descripcion) 
                                VALUES(?,?,?,?,?)",[$id_componente,$id_imagen,$id_slider, $titulo, $descripcion]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se creo con exito!!'    
        ]);
    }


    public function actualizarSlider(Request $request, $id){
        $id_componente = $request->input('id_componente');
        $id_imagen = $request->input('id_imagen');
        $titulo = $request->input('titulo');
        $descripcion = $request->input('descripcion');
        $estado= $request->input('estado');
        DB::update("UPDATE pagina_web.slider SET id_componente=?, id_imagen = ?,titulo=?, descripcion = ?,estado=?, modificacion=now()
                    WHERE id_slider = ?",[$id_componente,$id_imagen, $titulo, $descripcion,$estado, $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se actualizo con exito!!'  
        ]);
    }

    public function eliminarSlideres($id){
        DB::update("UPDATE pagina_web.slider SET estado=?,modificacion=now()
                    WHERE id_slider = ?",['ELIMINADO', $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se elimino con exito!!'     
        ]);
    }


}
