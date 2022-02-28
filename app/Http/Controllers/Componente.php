<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class Componente extends Controller
{
    
    public function obtenerComponentes(){
        $repuesta = DB::select("SELECT * from pagina_web.componente a where a.estado='CREADO' order by creacion desc");
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Componente creado con exito!!!',
            'data'=> $repuesta       
        ]);
    }

    public function crearComponente(Request $request){
        //Console::info($request);
        $uuid = Str::uuid()->toString();
        $id_tipo_comp_fk = $request->input('id_tipo_comp_fk');
        $nombre = $request->input('nombre');
        $id_pagina = $request->input('id_pagina');
        $titulo = $request->input('titulo');
        $descripcion = $request->input('descripcion');
        $id_componente =  $uuid;
        DB::insert("INSERT INTO pagina_web.componente(id_tipo_comp_fk, nombre, id_pagina, titulo, descripcion, id_componente) 
                                VALUES(?,?,?,?,?,?)",[$id_tipo_comp_fk,$nombre, $id_pagina, $titulo, $descripcion, $id_componente]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Componente creado con exito!!!'    
        ]);
    }


    public function actualizarComponente(Request $request, $id){
        $id_tipo_comp_fk = $request->input('id_tipo_comp_fk');
        $nombre = $request->input('nombre');
        $descripcion = $request->input('descripcion');
        $titulo = $request->input('titulo');
        $estado = $request->input('estado');
        $id_pagina = $request->input('id_pagina');
        

        DB::update("UPDATE pagina_web.componente SET id_tipo_comp_fk=?, nombre=?, estado=?, descripcion=?, titulo=?, id_pagina=?,  modificacion=now()
                    WHERE id_componente = ?",[      $id_tipo_comp_fk,$nombre, $estado , $descripcion,$titulo,  $id_pagina , $id]);
       return response()->json([
            'status' => 200,
            'response'=> 'Actualizado con exito'       
       ]);
    }


    public function obtenerPaginaComp(Request $request, $id){
      $query = "SELECT json_build_object(
              'componente', a.nombre,
              'tipo_comp', a.id_tipo_comp_fk,
              'id_pagina',a.id_pagina,
              'componen', json_agg(
              json_build_object(
                   'titulo',b.titulo,
                   'descripcion',b.descripcion,
                   'img_url', c.url)
              )
              )
              from pagina_web.componente a 
              LEFT JOIN pagina_web.slider b ON a.id_componente = b.id_componente
              LEFT JOIN pagina_web.imagen c ON b.id_imagen=c.id_imagen where id_pagina=? and a.estado='CREADO'
              GROUP BY a.nombre, a.id_tipo_comp_fk,a.id_pagina";
        DB::select($query,[$id]);
        return response()->json([
        'status' => 200,
        'response'=> 'Actualizado con exito'       
        ]);
    }

    public function eliminarComponente($id){
        DB::update("UPDATE pagina_web.componente SET estado=? , modificacion=now()
                    WHERE id_componente = ?",['ELIMINADO', $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se elimino el Componente con exito!!'     
        ]);
    }
    
}
