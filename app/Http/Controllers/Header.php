<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class Header extends Controller
{
  // 
  public function obtenerHeader(){
    $repuesta = DB::select("select * from pagina_web.header_pag a where a.estado='CREADO'");
    return response()->json([
        'statusCode' => 200,
        'success' => true,
        'message'=> 'Header creado con exito!!',
        'data' => $repuesta

    ]);
}


public function crearHeader(Request $res){
    $uuid = Str::uuid()->toString();
      
    $titulo = $res->input('titulo'); 
    $descripcion = $res->input('descripcion'); 
    $id_imagen_uno = $res->input('id_imagen_uno'); 
    $id_imagen_dos = $res->input('id_imagen_dos'); 
    $id_imagen_tres = $res->input('id_imagen_tres'); 
    $id_imagen_fondo = $res->input('id_imagen_fondo'); 
    $id_imagen_aux = $res->input('id_imagen_aux'); 
    $id_componente = $res->input('id_componente'); 
    $id_header_pag = $uuid; 
    DB::insert("INSERT INTO pagina_web.header_pag(titulo, descripcion, id_imagen_uno, id_imagen_dos, id_imagen_tres, id_imagen_fondo, id_imagen_aux, id_componente, id_header_pag) 
                            VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)",[$titulo,$descripcion, $id_imagen_uno, $id_imagen_dos, $id_imagen_tres, $id_imagen_fondo, $id_imagen_aux, $id_componente, $id_header_pag]);
    return response()->json([
        'statusCode' => 200,
        'success' => true,
        'message'=> 'Header creado con exito!!'
    ]);
    
}


public function actualizarHeader(Request $request, $id){

    $titulo = $request->input('titulo'); 
    $descripcion = $request->input('descripcion'); 
    $id_imagen_uno = $request->input('id_imagen_uno'); 
    $id_imagen_dos = $request->input('id_imagen_dos'); 
    $id_imagen_tres = $request->input('id_imagen_tres'); 
    $id_imagen_fondo = $request->input('id_imagen_fondo'); 
    $id_imagen_aux = $request->input('id_imagen_aux'); 
    $id_componente = $request->input('id_componente'); 
    $estado= $request->input('estado'); 
    DB::update("UPDATE pagina_web.header_pag SET  titulo=?, descripcion=?, id_imagen_uno=?, id_imagen_dos=?, id_imagen_tres=?, id_imagen_fondo=?, 
    id_imagen_aux=?, estado=?, id_componente=?, modificacion=now()
                WHERE id_header_pag = ?",[$titulo, $descripcion, $id_imagen_uno, $id_imagen_dos, $id_imagen_tres, $id_imagen_fondo, 
                $id_imagen_aux, $estado, $id_componente, $id]);
    return response()->json([
        'statusCode' => 200,
        'success' => true,
        'message'=> 'Actualizado con exito!!'    
    ]);
}


public function eliminarHeader($id){
    DB::update("UPDATE pagina_web.header_pag SET estado=?, modificacion=now()
                WHERE id_header_pag = ?",['ELIMINADO', $id]);
   return response()->json([
        'statusCode' => 200,
        'success' => true,
        'message'=> 'Se elimino la imagen con exito!!'     
   ]);
}


public function getHeaderId($id){
    $repuesta = DB::select("SELECT 
    (select b.url
    from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_uno=b.id_imagen where a.id_componente = c.id_componente) url_imagen_uno,
    (select b.id_imagen
    from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_uno=b.id_imagen where a.id_componente = c.id_componente) id_imagen_uno,
    (select b.url
    from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_dos=b.id_imagen where a.id_componente = c.id_componente) url_imagen_dos,
    (select  b.id_imagen
    from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_dos=b.id_imagen where a.id_componente = c.id_componente) id_imagen_dos,
    (select b.url 
    from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_tres=b.id_imagen where a.id_componente = c.id_componente) url_imagen_tres,
    (select b.id_imagen
    from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_tres=b.id_imagen where a.id_componente = c.id_componente) id_imagen_tres,
    (select b.url 
    from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_fondo=b.id_imagen where a.id_componente = c.id_componente) url_imagen_sup,
    (select b.id_imagen
    from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_fondo=b.id_imagen where a.id_componente = c.id_componente) id_imagen_sup,
    (select b.url
    from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_aux=b.id_imagen where a.id_componente = c.id_componente) url_imagen_inf,
    (select b.id_imagen
    from pagina_web.header_pag a INNER JOIN pagina_web.imagen b ON a.id_imagen_aux=b.id_imagen where a.id_componente = c.id_componente) id_imagen_inf
    from pagina_web.componente c INNER JOIN pagina_web.header_pag d ON c.id_componente= d.id_componente WHERE c.id_pagina=?
    and c.estado='CREADO' order by c.creacion desc",[$id]);
    return response()->json([
        'statusCode' => 200,
        'success' => true,
        'message'=> 'Header obtenido con exito!!',
        'data' => $repuesta

    ]);
}
}
