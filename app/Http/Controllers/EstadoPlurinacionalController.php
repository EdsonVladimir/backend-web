<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;

class EstadoPlurinacionalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }
    /* Funcion para obtener los datos de la tabla  pagina_web.estado_plurinacional, componenete especifico */
    public function getData(Request $request, $id_componente)
    {
        $query = "SELECT ep.*
                    ,i.url
                    ,i.nombre
                FROM pagina_web.estado_plurinacional ep
                INNER JOIN pagina_web.componente c ON ep.id_componente = c.id_componente
                INNER JOIN pagina_web.imagen i ON ep.id_imagen = i.id_imagen
                WHERE ep.estado = 'CREADO'
                    AND c.estado = 'CREADO'
                    AND i.estado = 'CREADO'
                    AND c.id_componente = '$id_componente'";
        $repuesta = DB::select($query);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message' => 'Datos obtenidos con exito!!',
            'data' => $repuesta,
            /* 'id' => $id,
             'rq' => $request, */
        ]);
    }
    /* Funcion para insertar los datos a la tabla  pagina_web.estado_plurinacional */
    public function insertarData(Request $request)
    {
        $uuid = Str::uuid()->toString();   
        $id_comp = $request->input('id_componente');
        $titulo = $request->input('titulo');
        $desc = $request->input('descripcion');
        $id_imagen = $request->input('id_imagen');
        $link1 = $request->input('link1');
        $link2 = $request->input('link2');
        $id = $uuid;
        $query = "INSERT INTO pagina_web.estado_plurinacional (id, id_imagen, id_componente, titulo, descripcion, link_01, link_02) 
                  VALUES(?,?,?,?,?,?,?)";
        $repuesta = DB::insert($query,[$id, $id_imagen, $id_comp, $titulo, $desc, $link1, $link2]);
        if ($repuesta) {
            return response()->json([
                'statusCode' => 200,
                'success' => true,
                'message' => 'Se Guardó Correctamente!!',
            ]);
        } else {
            return response()->json([
                'statusCode' => 400,
                'success' => false,
                'message' => 'Ah ocurrido un error.',
            ]);
        }
    }
    /* Funcion para actualizar los datos de la tabla  pagina_web.estado_plurinacional */
    public function actualizarData(Request $request, $id)
    {
        $id_comp = $request->input('id_componente');
        $id_imagen =$request->input('id_imagen');
        $titulo = $request->input('titulo');
        $desc = $request->input('descripcion');
        $link_01 = $request->input('link_01');
        $link_02 = $request->input('link_02');
        $estado = $request->input('estado');
        $query = "UPDATE pagina_web.estado_plurinacional
                    SET id_imagen = '$id_imagen'
                        ,id_componente = '$id_comp'
                        ,titulo = '$titulo'
                        ,descripcion = '$desc'
                        ,link_01 = '$link_01'
                        ,link_02 = '$link_02'
                        ,estado = '$estado'
                        ,modificacion = now()
                    WHERE id = '$id'";
        $repuesta = DB::insert($query);
        if ($repuesta) {
            return response()->json([
                'statusCode' => 200,
                'success' => true,
                'message' => 'Se Actualizó Correctamente!!',
            ]);
        } else {
            return response()->json([
                'statusCode' => 400,
                'success' => false,
                'message' => 'Ah ocurrido un error.',
            ]);
        }
    }

    public function eliminarEstadoPlurinacional($id){
        DB::update("UPDATE pagina_web.estado_plurinacional  SET estado=? , modificacion=now()
                    WHERE id = ?",['ELIMINADO', $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Se elimino el estado plurinacional con exito!!'     
        ]);
		}










    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
