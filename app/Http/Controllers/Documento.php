<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Storage;  //libreria para guardar la documento
use Illuminate\Support\Facades\Crypt;  //libreria para generar UUID 1
use Illuminate\Support\Str;//libreria para generar UUID 2

class Documento extends Controller
{
       // 
       public function obtenerDocumento(){

        $repuesta = DB::select("select * from pagina_web.documento a where a.estado='CREADO'");

        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!',
            'data'=> $repuesta       
        ]);
    }
    public function insertarDocumento(Request $res){
  
        $uuid = Str::uuid()->toString();     //generando un UUID
        $images = $res->file('file')->store('public/document');
        $url = Storage::url($images);        
        $nombre = $res->input('nombre'); 
        $id_tipo_comp = $res->input('id_tipo_comp'); 
        $id_documento = $uuid;
        DB::insert("INSERT INTO pagina_web.documento(nombre, url, id_tipo_comp, id_documento) 
                                VALUES(?, ?, ?, ?)",[$nombre,$url, $id_tipo_comp, $id_documento]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se registro con exito!!'   
        ]);
        
    }
    public function actualizarDocumento(Request $res){	
    
    $id_documento = $res->input('id_documento'); 
    $estado = $res->input('estado');
	 $url_dir_del = DB::select("select url from pagina_web.documento where id_documento=?",[$id_documento]);
     /*  $urlnew = $url_dir_del[0]->url; */
     $urlnew = $url_dir_del[0]->url;
    	Storage::delete($urlnew);	
				//añadir nueva documento
        $images = $res->file('file')->store('public/images');	
        $url = Storage::url($images);        
        $nombre = $res->input('nombre'); 
          
        DB::update("UPDATE pagina_web.documento SET nombre=?, url=? ,estado=?, modificacion=now()
                    WHERE id_documento = ?",[$nombre, $url,$estado, $id_documento]);		
				return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Actualizado con exito!!'     
                ]);
    }
    public function eliminarDocumento($id){
        DB::update("UPDATE pagina_web.documento SET estado=? , modificacion=now()
                    WHERE id_documento = ?",['ELIMINADO', $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se elimino la documento con exito!!'     
        ]);
		} 
}
