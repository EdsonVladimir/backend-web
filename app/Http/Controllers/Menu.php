<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class Menu extends Controller
{
    //
    public function obtenerMenus(){
        $repuesta = DB::select("select * from pagina_web.menu a where a.estado='CREADO'");

        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos recuperados!!',
            'data'=> $repuesta     
        ]);
    }
    public function crearMenu(Request $request){
        //Console::info($request);
        $uuid = Str::uuid()->toString();
        $nombre = $request->input('nombre');
        $urldir = $request->input('urldir');
        $descripcion = $request->input('descripcion');
        $id_componente = $request->input('id_componente');
        $id_pagina = $request->input('id_pagina');
        $id_menu = $uuid;

        DB::insert("INSERT INTO pagina_web.menu(nombre, urldir, descripcion, id_componente, id_pagina,id_menu) 
                                VALUES(?,?,?,?,?,?)",[$nombre,$urldir, $descripcion, $id_componente, $id_pagina,$id_menu]);

        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se creo con exito!!',
                
        ]);
    }
    public function actualizarMenu(Request $request, $id){
        $nombre = $request->input('nombre');
        $urldir = $request->input('urldir');
        $descripcion = $request->input('descripcion');
        $id_componente = $request->input('id_componente');
        $id_pagina = $request->input('id_pagina');
        $estado = $request->input('estado');
        DB::update("UPDATE pagina_web.menu SET nombre=?, urldir = ?,descripcion=?, id_componente = ?, id_pagina=?, estado=?, modificacion=now()
                    WHERE id_menu = ?",[$nombre,$urldir, $descripcion, $id_componente, $id_pagina,$estado, $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se actualizo con exito!!'  
        ]);
    }


    public function eliminarMenu($id){
        DB::update("UPDATE pagina_web.menu SET estado=? , modificacion=now()
                    WHERE id_menu = ?",['ELIMINADO', $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se elimino el Menu con exito!!'     
        ]);
    }
}
