<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use Illuminate\Support\Facades\Storage;  //libreria para guardar la imagen
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;
class Libros extends Controller
{
    public function obtenerLibros(){
        $repuesta = DB::select("select * from pagina_web.libros a where a.estado='CREADO'");
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos obtenidos!!',
            'data'=> $repuesta       
        ]);
		}
		
    public function crearLibros(Request $res){						
        $uuid = Str::uuid()->toString();       
        $titulo = $res->input('titulo'); 
        $id_imagen = $res->input('id_imagen'); 
		$descripcion	= $res->input('descripcion');
        $id_componente	= $res->input('id_componente');
        $id_documento	= $res->input('id_documento');
        $editorial = $res->input('editorial');
        $coleccion = $res->input('coleccion');
        $materia = $res->input('materia');
        $isbn = $res->input('isbn');
        $dimension = $res->input('dimension');
        $num_pag = $res->input('num_pag');
        $anio_edicion = $res->input('anio_edicion');
        $id_libros = $uuid;
		$repuesta = DB::select("INSERT INTO pagina_web.libros(titulo, id_imagen, descripcion, id_componente,   id_documento, editorial, coleccion, materia, isbn, dimension, num_pag, anio_edicion, id_libros)
                                VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)",[$titulo, $id_imagen, $descripcion, $id_componente,   $id_documento, $editorial, $coleccion, $materia, $isbn, $dimension, $num_pag, $anio_edicion, $id_libros]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Libro creado con exito!!',
            'data'=> $repuesta       
        ]);
		}

        public function obtenerLibrosxComponente($id){
            $repuesta = DB::select("SELECT ep.* ,i.url ,i.nombre , dc.nombre doc_nombre,dc.url url_doc,ep.creacion
            FROM pagina_web.libros ep
            INNER JOIN pagina_web.componente c ON ep.id_componente = c.id_componente
            LEFT JOIN pagina_web.imagen i ON ep.id_imagen = i.id_imagen
            LEFT JOIN pagina_web.documento dc on dc.id_documento = ep.id_documento
            WHERE ep.estado = 'CREADO'        AND c.estado = 'CREADO'                
            AND c.id_componente = ? order by ep.creacion desc", [$id]);
            return response()->json([
                'statusCode' => 200,
                'success' => true,
                'message' => 'Datos obtenidos con exito!!',
                'data' => $repuesta,
            ]);
        }



		public function actualizarLibros(Request $res, $id){
            $titulo = $res->input('titulo'); 
            $id_imagen = $res->input('id_imagen'); 
            $descripcion	= $res->input('descripcion');
            $id_componente	= $res->input('id_componente');
            $id_documento	= $res->input('id_documento');
            $editorial = $res->input('editorial');
            $coleccion = $res->input('coleccion');
            $materia = $res->input('materia');
            $isbn = $res->input('isbn');
            $dimension = $res->input('dimension');
            $num_pag = $res->input('num_pag');
            $anio_edicion = $res->input('anio_edicion');
            $estado = $res->input('estado');

			DB::select("UPDATE pagina_web.libros SET titulo=?, id_imagen=?, descripcion=?, id_componente=?,   id_documento=?, 
            editorial=?, coleccion=?, materia=?, isbn=?, dimension=?, num_pag=?, anio_edicion=?, estado=?, modificacion=now()
            WHERE  id_libros=?",[$titulo, $id_imagen, $descripcion, $id_componente,   $id_documento, $editorial, $coleccion, $materia, $isbn, $dimension, $num_pag, $anio_edicion,$estado, $id]);
        return response()->json([
            'statusCode' => 200,
            'success' => true,
            'message'=> 'Datos actualizados correctamente!!'     
        ]);
		}

        public function eliminarLibros($id){
            DB::update("UPDATE pagina_web.libros SET estado=? , modificacion=now()
                        WHERE id_libros = ?",['ELIMINADO', $id]);
            return response()->json([
                'statusCode' => 200,
                'success' => true,
                'message'=> 'Se elimino el libros con exito!!'     
            ]);
        }
}
