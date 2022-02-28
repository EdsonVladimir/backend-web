<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class TipoComponente extends Controller
{
    //
    public function obtenerTiposComp(){

        $repuesta = DB::select("select * from pagina_web.tipo_componente a where a.estado='CREADO'");
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos con exito!!',
            'data'=> $repuesta      
        ]);
    }


    public function crearTiposComp(Request $request){
        $uuid = Str::uuid()->toString();
        $nombre = $request->input('nombre');
        $descripcion = $request->input('descripcion');
        $id_tipo_comp = $uuid;
        DB::insert("INSERT INTO pagina_web.tipo_componente(nombre, descripcion, id_tipo_comp) 
                                VALUES(?,?,?)",[$nombre,$descripcion, $id_tipo_comp]);
        return response()->json([
                    'statusCode' => 200,
                    'success' => true,
                    'message'=> 'Se creo con exito!!'     
        ]);
    }


    public function actualizarTiposComp(Request $request, $id){
        $nombre = $request->input('nombre');
        $descripcion = $request->input('descripcion');
        $estado = $request->input('estado');

        DB::update("UPDATE pagina_web.tipo_componente SET nombre=?, descripcion = ?,estado=?,modificacion=now()
                    WHERE id_tipo_comp = ?",[$nombre,$descripcion,$estado, $id]);
      return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se actualizo con exito!!'      
      ]);
    }


    public function eliminarTiposComp($id){
        DB::update("UPDATE pagina_web.tipo_componente SET estado=?,modificacion=now()
                    WHERE id_tipo_comp = ?",['ELIMINADO', $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se elimino con exito!!'     
        ]);
    }
}
