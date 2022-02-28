<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class RedesSociales extends Controller
{
    public function obtenerRedesSociales(){
        $repuesta = DB::select("select * from pagina_web.redes a where a.estado='CREADO'");

        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos con exito!!',
            'data'=> $repuesta      
        ]);
    }

    
    public function crearRedesSociales(Request $request){
        $uuid = Str::uuid()->toString();
        $titulo = $request->input('titulo');
        $url_dir = $request->input('url_dir');
        $id_imagen = $request->input('id_imagen');
        $id_componente = $request->input('id_componente');
        $id_red = $uuid;
        DB::insert("INSERT INTO pagina_web.redes(titulo, url_dir, id_imagen, id_componente, id_red) 
                                VALUES(?,?,?,?,?)",[$titulo, $url_dir, $id_imagen, $id_componente, $id_red]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se creo la red social con exito!!'     
        ]);
    }


    public function actualizarRedesSociales(Request $request, $id){
        $titulo = $request->input('titulo');
        $url_dir = $request->input('url_dir');
        $id_imagen = $request->input('id_imagen');
        $id_componente = $request->input('id_componente');
        $estado = $request->input('estado');

        DB::update("UPDATE pagina_web.redes SET titulo=?, id_componente=?, id_imagen=?, url_dir=?,estado=?,  modificacion=now()
                    WHERE id_red = ?",[ $titulo, $id_componente, $id_imagen, $url_dir, $estado, $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se actualizo la red social con exito!!'    
        ]);
    }
    public function eliminarRedesSociales($id){
        DB::update("UPDATE pagina_web.redes SET estado=? ,  modificacion=now()
                    WHERE id_red = ?",['ELIMINADO', $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se elimino con exito!!'   
        ]);
    }
}
