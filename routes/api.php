<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
//rutas de tipo copmponente
Route::get('/tipocom', 'App\Http\Controllers\TipoComponente@obtenerTiposComp');
Route::post('/tipocom', 'App\Http\Controllers\TipoComponente@crearTiposComp');
Route::put('/tipocom/{id}', 'App\Http\Controllers\TipoComponente@actualizarTiposComp');
//Route::get('/hola', 'App\Http\Controllers\TipoComponente@store');


// rutas de imagen
Route::post('/imagen', 'App\Http\Controllers\Imagen@insertarImagen');
Route::get('/imagen', 'App\Http\Controllers\Imagen@obtenerImagen');
Route::post('/imagenact', 'App\Http\Controllers\Imagen@actualizarImagen');
Route::post('/imagenoti', 'App\Http\Controllers\Imagen@insertarImagenNoticia');
Route::delete('/imagen/{id}', 'App\Http\Controllers\Imagen@eliminarImagen');

// rutas de documento
Route::post('/documento', 'App\Http\Controllers\Documento@insertarDocumento');
Route::get('/documento', 'App\Http\Controllers\Documento@obtenerDocumento');
Route::post('/documentoact', 'App\Http\Controllers\Documento@actualizarDocumento');
Route::delete('/documento/{id}', 'App\Http\Controllers\Documento@eliminarDocumento');



//rutas noticias
Route::post('/noticia', 'App\Http\Controllers\Noticia@crearNoticia');
Route::get('/noticia', 'App\Http\Controllers\Noticia@obtenerNoticias');
Route::get('/obt-noticia-x-pg/{id}', 'App\Http\Controllers\Noticia@Obt_News_Por_Id_PG');
Route::put('/noticia/{id}', 'App\Http\Controllers\Noticia@actualizarNoticia');
Route::get('/obtener-noticia/{id}', 'App\Http\Controllers\Noticia@obtenerNoticiaAll');
Route::delete('/noticia/{id}', 'App\Http\Controllers\Noticia@eliminarNoticias');
Route::get('/get-noticia-id/{id}', 'App\Http\Controllers\Noticia@getNoticiaPorId');



//rutas pagina
Route::post('/pagina', 'App\Http\Controllers\Pagina@crearPagina');
Route::get('/pagina', 'App\Http\Controllers\Pagina@obtenerPaginas');
Route::put('/pagina/{id}', 'App\Http\Controllers\Pagina@actualizarPagina');
Route::delete('/pagina/{id}', 'App\Http\Controllers\Pagina@eliminaPagina');
Route::get('/pagina-comp/{id}', 'App\Http\Controllers\Pagina@obtenerPaginaComp');
Route::get('/pagina-eventos/{id}', 'App\Http\Controllers\Pagina@obtenerPaginaEventos');

//rutas menu
Route::post('/menu', 'App\Http\Controllers\Menu@crearMenu');
Route::get('/menu', 'App\Http\Controllers\Menu@obtenerMenus');
Route::put('/menu/{id}', 'App\Http\Controllers\Menu@actualizarMenu');

//Compnnetes  Componente
Route::post('/componente', 'App\Http\Controllers\Componente@crearComponente');
Route::get('/componente', 'App\Http\Controllers\Componente@obtenerComponentes');
Route::put('/componente/{id}', 'App\Http\Controllers\Componente@actualizarComponente');


//Compnnetes  Slider
Route::post('/slider', 'App\Http\Controllers\Slider@crearSlider');
Route::get('/slider', 'App\Http\Controllers\Slider@obtenerSliders');
Route::put('/slider/{id}', 'App\Http\Controllers\Slider@actualizarSlider');
Route::get('/slider/{id}', 'App\Http\Controllers\Slider@obtenerSliderxComponente');

//Compnnetes  Slider
Route::post('/seccion-prop', 'App\Http\Controllers\SeccionPropia@crearSeccionPropia');
Route::get('/seccion-prop', 'App\Http\Controllers\SeccionPropia@obtenerSeccionPropia');
Route::put('/seccion-prop/{id}', 'App\Http\Controllers\SeccionPropia@actualizarSeccionPropia');
Route::delete('/seccion-prop/{id}', 'App\Http\Controllers\SeccionPropia@eliminarSeccionPropia');



//Compnnetes Header
Route::post('/header', 'App\Http\Controllers\Header@crearHeader');
Route::get('/header', 'App\Http\Controllers\Header@obtenerHeader');
Route::put('/header/{id}', 'App\Http\Controllers\Header@actualizarHeader');
Route::get('/header/{id}','App\Http\Controllers\Header@getHeaderId');
Route::delete('/header/{id}', 'App\Http\Controllers\Header@eliminarHeader');
// Nuestros sitios
Route::post('/sitios', 'App\Http\Controllers\NuestroSitios@crearNuestroSitios');
Route::get('/sitios', 'App\Http\Controllers\NuestroSitios@obtenerNuestroSitios');
Route::put('/sitios/{id}', 'App\Http\Controllers\NuestroSitios@actualizarNuestroSitios');
Route::delete('/sitios/{id}', 'App\Http\Controllers\NuestroSitios@eliminarNuestroSitios');

// Nuestros Postulados
Route::post('/postulados', 'App\Http\Controllers\Postulados@crearPostulados');
Route::get('/postulados', 'App\Http\Controllers\Postulados@obtenerPostulados');
Route::put('/postulados/{id}', 'App\Http\Controllers\Postulados@actualizarPostulados');
Route::delete('/postulados/{id}', 'App\Http\Controllers\Postulados@eliminarPostulados');

// Redes Sociales
Route::post('/redes', 'App\Http\Controllers\RedesSociales@crearRedesSociales');
Route::get('/redes', 'App\Http\Controllers\RedesSociales@obtenerRedesSociales');
Route::put('/redes/{id}', 'App\Http\Controllers\RedesSociales@actualizarRedesSociales');
Route::delete('/redes/{id}', 'App\Http\Controllers\RedesSociales@eliminarRedesSociales');

//  Eventos Promocionales
Route::post('/eventos', 'App\Http\Controllers\EventosPromocionales@crearEventosPromocionales');
Route::get('/eventos', 'App\Http\Controllers\EventosPromocionales@obtenerEventosPromocionales'); 
Route::get('/eventos-normal-pg/{id}', 'App\Http\Controllers\EventosPromocionales@obtener_eventos_normales_por_pg'); 
Route::get('/eventos-promocional-pg/{id}', 'App\Http\Controllers\EventosPromocionales@obtener_eventos_promocionales_por_pg'); 
Route::get('/eventos-auspiciador-pg/{id}', 'App\Http\Controllers\EventosPromocionales@obtener_eventos_auspiciador_por_pg'); 
Route::put('/eventos/{id}', 'App\Http\Controllers\EventosPromocionales@actualizarEventosPromocionales');
Route::delete('/eventos/{id}', 'App\Http\Controllers\EventosPromocionales@eliminarEventosPromocionales');

// Otros Enlaces
Route::post('/enlaces', 'App\Http\Controllers\OtrosEnlaces@crearOtrosEnlaces');
Route::get('/enlaces', 'App\Http\Controllers\OtrosEnlaces@obtenerOtrosEnlaces');
Route::put('/enlaces/{id}', 'App\Http\Controllers\OtrosEnlaces@actualizarOtrosEnlaces');
Route::delete('/enlaces/{id}', 'App\Http\Controllers\OtrosEnlaces@eliminarOtrosEnlaces');
// Estado Plurinacional
Route::get('/estado-plurinacional/{id}', 'App\Http\Controllers\EstadoPlurinacionalController@getData');
Route::post('/estado-plurinacional-post', 'App\Http\Controllers\EstadoPlurinacionalController@insertarData');
Route::put('/estado-plurinacional-update/{id}', 'App\Http\Controllers\EstadoPlurinacionalController@actualizarData');


// Mision Vision
Route::get('/componente-gen', 'App\Http\Controllers\ComponenteGenerico@obtenerComponenteGenerico');
Route::get('/componente-gen-uno/{id}', 'App\Http\Controllers\ComponenteGenerico@obtenerComponenteGenericoUno');
Route::post('/componente-gen', 'App\Http\Controllers\ComponenteGenerico@insertarComponenteGenerico');
Route::put('/componente-gen/{id}', 'App\Http\Controllers\ComponenteGenerico@actualizarComponenteGenerico');
Route::delete('/componente-gen/{id}', 'App\Http\Controllers\ComponenteGenerico@eliminarComponenteGenerico');
Route::get('/componente-gen-comp/{id}', 'App\Http\Controllers\ComponenteGenerico@obtenerComponenteComponenteGenerico');

//banner

Route::post('/banner', 'App\Http\Controllers\Banner@crearBanner');
Route::get('/banner', 'App\Http\Controllers\Banner@obtenerBanner');
Route::put('/banner/{id}', 'App\Http\Controllers\Banner@actualizarBanner');
Route::delete('/banner/{id}', 'App\Http\Controllers\Banner@eliminarBanner');

//Libros

Route::post('/libros', 'App\Http\Controllers\Libros@crearLibros');
Route::get('/libros', 'App\Http\Controllers\Libros@obtenerLibros');
Route::put('/libros/{id}', 'App\Http\Controllers\Libros@actualizarLibros');
Route::delete('/libros/{id}', 'App\Http\Controllers\Libros@eliminarLibros');
Route::get('/libros/{id}', 'App\Http\Controllers\Libros@obtenerLibrosxComponente');

//Mesas de trabajo

Route::post('/mesas-trab', 'App\Http\Controllers\MesasTrabajo@crearMesasTrabajo');
Route::get('/mesas-trab', 'App\Http\Controllers\MesasTrabajo@obtenerMesasTrabajo');
Route::put('/mesas-trab/{id}', 'App\Http\Controllers\MesasTrabajo@actualizarMesasTrabajo');
Route::delete('/mesas-trab/{id}', 'App\Http\Controllers\MesasTrabajo@eliminarMesasTrabajo');

  //Invitados

Route::post('/invitados', 'App\Http\Controllers\Invitados@crearInvitados');
Route::get('/invitados', 'App\Http\Controllers\Invitados@obtenerInvitados');
Route::put('/invitados/{id}', 'App\Http\Controllers\Invitados@actualizarInvitados');
Route::delete('/invitados/{id}', 'App\Http\Controllers\Invitados@eliminarInvitados');
