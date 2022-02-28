<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class Noticia extends Controller
{
    //
    public function obtenerNoticias()
    {
        $query = "SELECT * FROM pagina_web.noticia a WHERE a.estado='CREADO'";
        $repuesta = DB::select($query);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message' => 'Datos obtenidos con exito!!',
            'data' => $repuesta,
        ]);
    }


    public function crearNoticia(Request $request)
    {
        $uuid = Str::uuid()->toString();
        $id_imagen = $request->input('id_imagen');
        $id_componente = $request->input('id_componente');
        $titulo = $request->input('titulo');
        $descripcion = $request->input('descripcion');
        $url = $request->input('url');
        $noti_ipm = $request->input('noti_ipm');
        $resumen = $request->input('resumen');
        $id_slider = $request->input('id_slider');
        $fecha = $request->input('fecha');
        $id_noticia = $uuid;
        DB::insert(
            "INSERT INTO pagina_web.noticia(id_imagen, id_componente, titulo, descripcion, url,   noti_ipm, resumen, id_slider, fecha, id_noticia) 
                VALUES(?,?,?,?,?,?,?,?,?,?)",[$id_imagen, $id_componente, $titulo, $descripcion, $url,   $noti_ipm, $resumen, $id_slider, $fecha, $id_noticia]);
         return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!'     
        ]);
    }

    // public function crearNoticia(Request $request)
    // {   

        
    //     $uuid = Str::uuid()->toString();
    //     $id_imagen = $request->input('id_imagen');
    //     $id_componente = $request->input('id_componente');
    //     $titulo = $request->input('titulo');
    //     $descripcion = $request->input('descripcion');
    //     $url = $request->input('url');
    //    // $noti_ipm = $request->input('noti_ipm');
    //   //  $resumen = $request->input('resumen');
    // //    $id_slider = $request->input('id_slider');
    //     $fecha = $request->input('fecha');
    //     //$id_noticia = $uuid;
    //     DB::insert(
    //         "INSERT INTO pagina_web.noticia(id_imagen, id_componente, titulo, descripcion, url,  fecha, id_noticia) 
    //             VALUES(?,?,?,?,?,?,?,?,?,?)",[$id_imagen, $id_componente, $titulo, $descripcion, $url,   $noti_ipm, $resumen, $id_slider, $fecha, $id_noticia]);
    //      return response()->json([
    //         'statusCode' => 200,
    //         'success' => true,
    //         'message'=> 'Datos obtenidos!!'     
    //     ]);
    // }

    public function actualizarNoticia(Request $request, $id)
    {

        $titulo = $request->input('titulo');
        $descripcion = $request->input('descripcion');
        $fecha = $request->input('fecha');
        $estado = $request->input('id_img_principal');

        DB::update(
            "UPDATE pagina_web.noticia SET  titulo=?, descripcion=?, fecha=?
                    WHERE id_noticia = ?", [$titulo, $descripcion, $fecha, $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!'     
        ]);
    }


    public function obtenerNoticiaAll($id)
    {
        $queryNoticia="SELECT b.titulo, b.descripcion,b.url as url_youtube ,b.resumen,  coalesce (b.fecha,b.creacion) as creacion ,c.url , pagina_web.get_id_slider(b.id_noticia)
        from  pagina_web.noticia b
        INNER JOIN pagina_web.componente a ON a.id_componente = b.id_componente 
        INNER JOIN pagina_web.imagen c ON b.id_imagen = c.id_imagen where a.id_componente=?  and c.estado = 'CREADO'
        order by b.creacion desc";
        $respuesta = DB::select($queryNoticia,[$id]);
        return json_encode([
            'statusCode' => 200,
            'success' => true,
            'message' => 'Se actualizo con exito!!',
            'data' => $respuesta,
        ]);
    }


    public function getNoticiaPorId($id)
    {
        $queryNoticia="SELECT b.*,pagina_web.get_id_slider(b.id_noticia),b.url as url_youtube ,c.url 
        from  pagina_web.noticia b 
        INNER JOIN pagina_web.imagen c ON b.id_imagen = c.id_imagen where b.id_noticia=?  and c.estado = 'CREADO'";
        $respuesta = DB::select($queryNoticia,[$id]);
        return json_encode([
            'statusCode' => 200,
            'success' => true,
            'message' => 'Se actualizo con exito!!',
            'data' => $respuesta,
        ]);
    }

    
    public function eliminarNoticias($id){
        DB::update("UPDATE pagina_web.noticia SET estado=? ,modificacion=now()
                    WHERE id_noticia = ?",['ELIMINADO', $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se elimino la noticia con exito!!'     
        ]);
    }

    public function Obt_News_Por_Id_PG($id)
    {
        $queryNoticia="SELECT b.titulo,b.id_componente, b.descripcion,b.id_noticia, b.resumen, b.fecha, c.url as url_img_principal ,b.id_imagen as id_img_principal, pagina_web.get_id_slider(b.id_noticia), b.url as url_video_youtube
        from pagina_web.noticia b
        INNER JOIN pagina_web.componente a  ON a.id_componente = b.id_componente 
        LEFT JOIN pagina_web.imagen c ON b.id_imagen = c.id_imagen 
        where a.id_pagina= ? order by b.creacion desc;";
        $respuesta = DB::select($queryNoticia,[$id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message' => 'Noticias Obtenidas Con Exito!!',
            'data' => $respuesta,
        ]);
    }
}
