<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Storage;  //libreria para guardar la imagen
use Illuminate\Support\Facades\Crypt;  //libreria para generar UUID 1
use Illuminate\Support\Str;//libreria para generar UUID 2

class Imagen extends Controller
{
    // 
    public function obtenerImagen(){

        $repuesta = DB::select("select * from pagina_web.imagen a where a.estado='CREADO'");

        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!',
            'data'=> $repuesta       
        ]);
    }
    public function insertarImagen(Request $res){
        // $res->validate([
        //     'file'=> 'required|image|max:10048'
        // ]);
        $uuid = Str::uuid()->toString();     //generando un UUID
        $images = $res->file('file')->store('public/images');
        $url = Storage::url($images);        
        $nombre = $res->input('nombre'); 
        $id_tipo_comp = $res->input('id_tipo_comp'); 
        $id_imagen = $uuid;
        DB::insert("INSERT INTO pagina_web.imagen(nombre, url, id_tipo_comp, id_imagen) 
                                VALUES(?, ?, ?, ?)",[$nombre,$url, $id_tipo_comp, $id_imagen]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se registro con exito!!'
                 
        ]);
        
    }
    public function insertarImagenNoticia(Request $res){	
      
        $uuid = Str::uuid()->toString();     //generando un UUID
        $images = $res->file('file')->store('public/images');
        $url = Storage::url($images);        
        $id_imagen = $uuid;
        DB::insert("INSERT INTO pagina_web.imagen(url, id_imagen) 
        VALUES(?, ?)",[$url, $id_imagen]);
//imagen
  $id_componente=$res->input('id_componente');
   $titulo=$res->input('titulo');
   $descripcion=$res->input('descripcion');
   $urlvideo=$res->input('urlvideo');  
   $id_noticia = Str::uuid()->toString(); 
        DB::insert("INSERT INTO pagina_web.noticia(id_noticia, id_imagen, titulo, descripcion, url, id_componente) 
                                VALUES(?, ?, ?, ?,?,?)",[$id_noticia,$id_imagen,$titulo,$descripcion,$urlvideo, $id_componente]);

$id_slider = Str::uuid()->toString(); 
        DB::insert("INSERT INTO pagina_web.slider(id_componente, id_imagen, nro_orden) 
        VALUES(?, ?, ?)",[$id_noticia,$id_imagen,1]);
            return response()->json([
                'statusCode' => 200,
                'success' => true,
                'message'=> 'Imagen creada!!'
                     
            ]);
    }
    public function eliminarImagen($id){
        DB::update("UPDATE pagina_web.imagen SET estado=?, modificacion=now()
                    WHERE id_imagen = ?",['ELIMINADO', $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se elimino la imagen con exito!!'     
        ]);
		}
	
}
