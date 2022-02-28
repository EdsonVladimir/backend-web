<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class EventosPromocionales extends Controller
{
    public function obtenerEventosPromocionales(){
        $repuesta = DB::select("select * from pagina_web.eventos_promocionales a where a.estado='CREADO'");

        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos con exito!!',
            'data'=> $repuesta      
        ]);
    }

    public function crearEventosPromocionales(Request $request){
        
       // $id_noticia = $request->input('id_noticia');
       $uuid = Str::uuid()->toString();
        $titulo = $request->input('titulo');
        $tipo =$request->input('tipo');
        $url_dir = $request->input('url_dir');
        $descripcion = $request->input('descripcion');
        $id_imagen = $request->input('id_imagen');
        $id_componente = $request->input('id_componente');
        $id_evento = $uuid;
        DB::insert("INSERT INTO pagina_web.eventos_promocionales(titulo, tipo,url_dir, descripcion ,id_imagen, id_componente, id_evento) 
                                VALUES(?,?,?,?,?,?,?)",[$titulo, $tipo ,$url_dir, $descripcion ,$id_imagen, $id_componente, $id_evento]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se creo el postulado con exito!!'     
        ]);
    }
    public function actualizarEventosPromocionales(Request $request, $id){
        //Console::info($request);
        $titulo = $request->input('titulo');
        $url_dir = $request->input('url_dir');
        $id_imagen = $request->input('id_imagen');
        $id_componente = $request->input('id_componente');
        $estado = $request->input('estado');
        $tipo =$request->input('tipo');

        DB::update("UPDATE pagina_web.eventos_promocionales SET titulo=?, url_dir = ?,id_imagen=?, id_componente = ?,tipo=?,estado=? ,modificacion=now()
                    WHERE id_evento = ?",[$titulo, $url_dir, $id_imagen, $id_componente,$tipo, $estado  ,$id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se actualizo el postulado con exito!!'    
        ]);
    }

    public function eliminarEventosPromocionales($id){
        DB::update("UPDATE pagina_web.eventos_promocionales SET estado=? ,modificacion=now()
                    WHERE id_evento = ?",['ELIMINADO', $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se elimino con exito!!'   
        ]);
    }

    public function obtener_eventos_promocionales_por_pg($id){
        $repuesta = DB::select("SELECT a.titulo, c.url as img_url, b.descripcion , c.id_imagen , a.id_evento, a.id_componente, a.tipo
        FROM pagina_web.eventos_promocionales a 
        INNER JOIN pagina_web.componente b ON a.id_componente= b.id_componente 
        INNER JOIN pagina_web.imagen c ON a.id_imagen=c.id_imagen 
        WHERE b.id_pagina = ? and a.estado='CREADO' and a.tipo='PROMOCIONAL'
        order by a.creacion desc", [$id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message' => 'Datos obtenidos con exito!!',
            'data' => $repuesta,
        ]);
    }

    public function obtener_eventos_normales_por_pg($id){
        $repuesta = DB::select("SELECT a.titulo, c.url as img_url, b.descripcion , c.id_imagen , a.id_evento, a.id_componente, a.tipo
        FROM pagina_web.eventos_promocionales a 
        INNER JOIN pagina_web.componente b ON a.id_componente= b.id_componente 
        INNER JOIN pagina_web.imagen c ON a.id_imagen=c.id_imagen 
        WHERE b.id_pagina = ? and a.estado='CREADO' and a.tipo='NORMAL'
        order by a.creacion desc", [$id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message' => 'Datos obtenidos con exito!!',
            'data' => $repuesta,
        ]);
    }

    public function obtener_eventos_auspiciador_por_pg($id){
        $repuesta = DB::select("SELECT a.titulo, c.url as img_url, b.descripcion , c.id_imagen , a.id_evento, a.id_componente, a.tipo
        FROM pagina_web.eventos_promocionales a 
        INNER JOIN pagina_web.componente b ON a.id_componente= b.id_componente 
        INNER JOIN pagina_web.imagen c ON a.id_imagen=c.id_imagen 
        WHERE b.id_pagina = ? and a.estado='CREADO'  and a.tipo='AUSPICIADOR'
        order by a.creacion desc", [$id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message' => 'Datos obtenidos con exito!!',
            'data' => $repuesta,
        ]);
    }
}
