<?php
namespace App\Http\Controllers;
use Session;
use Request;
use CRUDBooster;
use Illuminate\Support\Facades\DB;
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Document</title>
</head>
<style>
    @page {
        margin: 0cm 0cm;
        font-family: Arial;
    }
    body {
        text-align: center;
        font-family: Arial, Helvetica, sans-serif;
        top: 2cm;
        left: 3cm;
        right: 2cm;
        height: 2cm;
        padding: 5px;
    }
    table {
        font-size: 12px;
        text-align: center;
        margin: 0 auto;
        border-collapse: collapse;
        border-spacing: 40px;
        table-layout: fixed;
    }
    td,
    th {
        border: 1px solid black;
        padding: 5px;
        word-wrap: break-word;
    }

    header {
        position: fixed;
        top: 0cm;
        left: 0cm;
        right: 0cm;
        height: 1.8cm;
        background-color: #86878d;
        color: white;
        text-align: center;
        line-height: 0.8cm;
    }

    footer {
        position: fixed;
        bottom: 0cm;
        left: 0cm;
        right: 0cm;
        height: 1.8cm;
        background-color: #86878d;
        color: white;
        text-align: center;
        line-height: 0.8cm;
    }
</style>

<body>
    <!--header>
        <h3>INSTITUTO GEOGRÁFICO MILITAR</h3>
    </header-->
    <main>
        <h3>PARTE {{$fecha}}</h3>
        <p>{{$distrito}}</p>
        <table style="width: 60%;">
            <thead>
                <tr>
                    <th style="width: 30%;">DETALLE</th>
                    <th>OO.</th>
                    <th>SOFs.</th>
                    <th>SGTOs.</th>
                    <th>EE.CC.</th>
                    <th>TOTAL</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $hoy = date('Y-m-d');
                $i = 1;
                
                while ($i < 15) {
                    $situacion = DB::table('situacions')->where('id', $i)->value('situacion');
                    if ($situacion == 'EFECTIVO' || $situacion == 'TOTAL') {
                        $oficiales = $Toficiales = DB::table('personas')->where('escalafon', 'LIKE', 'OFICIALES')->join('destinos', 'personas.id', 'destinos.persona_id')->where('gestion', date('Y'))->where('distrito', $distrito)->count();
                        $sofs = $Tsofs = DB::table('personas')->where('grado', 'LIKE', 'SOF%')->join('destinos', 'personas.id', 'destinos.persona_id')->where('gestion', date('Y'))->where('distrito', $distrito)->count();
                        $sgtos = $Tsgtos = DB::table('personas')->where('grado', 'LIKE', 'SGTO%')->join('destinos', 'personas.id', 'destinos.persona_id')->where('gestion', date('Y'))->where('distrito', $distrito)->count();
                        $eecc = $Teecc = DB::table('personas')->where('escalafon', '!=', 'SOF. - SGTO.')->where('escalafon', '!=', 'OFICIALES')->join('destinos', 'personas.id', 'destinos.persona_id')->where('gestion', date('Y'))->where('distrito', $distrito)->count();
                        $Coficiales = $Csofs = $Csgtos = $Ceecc = 0;
                    } elseif ($situacion == 'GUARDIA') {
                        $oficiales = DB::table('personas')->where('escalafon', 'LIKE', 'OFICIALES')->join('destinos', 'personas.id', 'destinos.persona_id')->where('gestion', date('Y'))->where('distrito', $distrito)->join('guardias', 'guardias.persona_id', 'destinos.persona_id')->where('fecha', $hoy)->count();
                        $sofs = DB::table('personas')->where('grado', 'LIKE', 'SOF%')->join('destinos', 'personas.id', 'destinos.persona_id')->where('gestion', date('Y'))->where('distrito', $distrito)->join('guardias', 'guardias.persona_id', 'destinos.persona_id')->where('fecha', $hoy)->count();
                        $sgtos = DB::table('personas')->where('grado', 'LIKE', 'SGTO%')->join('destinos', 'personas.id', 'destinos.persona_id')->where('gestion', date('Y'))->where('distrito', $distrito)->join('guardias', 'guardias.persona_id', 'destinos.persona_id')->where('fecha', $hoy)->count();
                        $eecc = 0;
                        $Coficiales = $Coficiales + $oficiales;
                        $Csofs = $Csofs + $sofs;
                        $Csgtos = $Csgtos + $sgtos;
                        $Ceecc = $Ceecc + $eecc;
                    } elseif ($situacion == 'FALTA') {
                        $oficiales = DB::table('faltaatrasos')->where('fecha', $hoy)->join('personas', 'personas.id', 'faltaatrasos.persona_id')->where('escalafon', 'LIKE', 'OFICIALES')->join('destinos', 'personas.id', 'destinos.persona_id')->where('gestion', date('Y'))->where('distrito', $distrito)->count();
                        $sofs = DB::table('faltaatrasos')->where('fecha', $hoy)->join('personas', 'personas.id', 'faltaatrasos.persona_id')->where('grado', 'LIKE', 'SOF%')->join('destinos', 'personas.id', 'destinos.persona_id')->where('gestion', date('Y'))->where('distrito', $distrito)->count();
                        $sgtos = DB::table('faltaatrasos')->where('fecha', $hoy)->join('personas', 'personas.id', 'faltaatrasos.persona_id')->where('grado', 'LIKE', 'SGTO%')->join('destinos', 'personas.id', 'destinos.persona_id')->where('gestion', date('Y'))->where('distrito', $distrito)->count();
                        $eecc = DB::table('faltaatrasos')->where('fecha', $hoy)->join('personas', 'personas.id', 'faltaatrasos.persona_id')->where('escalafon', '!=', 'SOF. - SGTO.')->where('escalafon', '!=', 'OFICIALES')->join('destinos', 'personas.id', 'destinos.persona_id')->where('gestion', date('Y'))->where('distrito', $distrito)->count();
                        $Coficiales = $Coficiales + $oficiales;
                        $Csofs = $Csofs + $sofs;
                        $Csgtos = $Csgtos + $sgtos;
                        $Ceecc = $Ceecc + $eecc;
                    } elseif ($situacion == 'VACACIÓN') {
                        $oficiales = DB::table('vacacions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('situacion', 'like', 'Vac%')->where('distrito', $distrito)->join('personas', 'personas.id', 'vacacions.persona_id')->where('escalafon', 'LIKE', 'OFICIALES')->count();
                        $sofs = DB::table('vacacions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('situacion', 'like', 'Vac%')->where('distrito', $distrito)->join('personas', 'personas.id', 'vacacions.persona_id')->where('grado', 'LIKE', 'SOF%')->count();
                        $sgtos = DB::table('vacacions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('situacion', 'like', 'Vac%')->where('distrito', $distrito)->join('personas', 'personas.id', 'vacacions.persona_id')->where('grado', 'LIKE', 'SGTO%')->count();
                        $eecc = DB::table('vacacions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('situacion', 'like', 'Vac%')->where('distrito', $distrito)->join('personas', 'personas.id', 'vacacions.persona_id')->where('escalafon', '!=', 'SOF. - SGTO.')->where('escalafon', '!=', 'OFICIALES')->count();
                        $Coficiales = $Coficiales + $oficiales;
                        $Csofs = $Csofs + $sofs;
                        $Csgtos = $Csgtos + $sgtos;
                        $Ceecc = $Ceecc + $eecc;
                    } elseif ($situacion == 'PERMISO') {
                        $oficiales = DB::table('vacacions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('situacion', 'like', 'Permiso%')->where('distrito', $distrito)->join('personas', 'personas.id', 'vacacions.persona_id')->where('escalafon', 'LIKE', 'OFICIALES')->count();
                        $sofs = DB::table('vacacions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('situacion', 'like', 'Permiso%')->where('distrito', $distrito)->join('personas', 'personas.id', 'vacacions.persona_id')->where('grado', 'LIKE', 'SOF%')->count();
                        $sgtos = DB::table('vacacions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('situacion', 'like', 'Permiso%')->where('distrito', $distrito)->join('personas', 'personas.id', 'vacacions.persona_id')->where('grado', 'LIKE', 'SGTO%')->count();
                        $eecc = DB::table('vacacions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('situacion', 'like', 'Permiso%')->where('distrito', $distrito)->join('personas', 'personas.id', 'vacacions.persona_id')->where('escalafon', '!=', 'SOF. - SGTO.')->where('escalafon', '!=', 'OFICIALES')->count();
                        $Coficiales = $Coficiales + $oficiales;
                        $Csofs = $Csofs + $sofs;
                        $Csgtos = $Csgtos + $sgtos;
                        $Ceecc = $Ceecc + $eecc;
                    } elseif ($situacion == 'TOLERANCIA') {
                        $oficiales = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'Tolerancia%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('escalafon', 'LIKE', 'OFICIALES')->count();
                        $sofs = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'Tolerancia%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('grado', 'LIKE', 'SOF%')->count();
                        $sgtos = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'Tolerancia%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('grado', 'LIKE', 'SGTO%')->count();
                        $eecc = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'Tolerancia%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('escalafon', '!=', 'SOF. - SGTO.')->where('escalafon', '!=', 'OFICIALES')->count();
                        $Coficiales = $Coficiales + $oficiales;
                        $Csofs = $Csofs + $sofs;
                        $Csgtos = $Csgtos + $sgtos;
                        $Ceecc = $Ceecc + $eecc;
                    } elseif ($situacion == 'COMISION CEO') {
                        $oficiales = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'COMISION CEO%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('escalafon', 'LIKE', 'OFICIALES')->count();
                        $sofs = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'COMISION CEO%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('grado', 'LIKE', 'SOF%')->count();
                        $sgtos = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'COMISION CEO%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('grado', 'LIKE', 'SGTO%')->count();
                        $eecc = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'COMISION CEO%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('escalafon', '!=', 'SOF. - SGTO.')->where('escalafon', '!=', 'OFICIALES')->count();
                        $Coficiales = $Coficiales + $oficiales;
                        $Csofs = $Csofs + $sofs;
                        $Csgtos = $Csgtos + $sgtos;
                        $Ceecc = $Ceecc + $eecc;
                    } elseif ($situacion == 'PERMISO NATALIDAD') {
                        $oficiales = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'PERMISO NATALIDAD%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('escalafon', 'LIKE', 'OFICIALES')->count();
                        $sofs = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'PERMISO NATALIDAD%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('grado', 'LIKE', 'SOF%')->count();
                        $sgtos = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'PERMISO NATALIDAD%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('grado', 'LIKE', 'SGTO%')->count();
                        $eecc = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'PERMISO NATALIDAD%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('escalafon', '!=', 'SOF. - SGTO.')->where('escalafon', '!=', 'OFICIALES')->count();
                        $Coficiales = $Coficiales + $oficiales;
                        $Csofs = $Csofs + $sofs;
                        $Csgtos = $Csgtos + $sgtos;
                        $Ceecc = $Ceecc + $eecc;
                    } elseif ($situacion == 'BAJA MEDICA') {
                        $oficiales = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'BAJA MEDICA%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('escalafon', 'LIKE', 'OFICIALES')->count();
                        $sofs = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'BAJA MEDICA%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('grado', 'LIKE', 'SOF%')->count();
                        $sgtos = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'BAJA MEDICA%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('grado', 'LIKE', 'SGTO%')->count();
                        $eecc = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'BAJA MEDICA%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('escalafon', '!=', 'SOF. - SGTO.')->where('escalafon', '!=', 'OFICIALES')->count();
                        $Coficiales = $Coficiales + $oficiales;
                        $Csofs = $Csofs + $sofs;
                        $Csgtos = $Csgtos + $sgtos;
                        $Ceecc = $Ceecc + $eecc;
                    } elseif ($situacion == 'COMISION') {
                        $oficiales = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'COMI%PROY%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('escalafon', 'LIKE', 'OFICIALES')->count();
                        $sofs = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', '%PROY%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('grado', 'LIKE', 'SOF%')->count();
                        $sgtos = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', '%PROY%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('grado', 'LIKE', 'SGTO%')->count();
                        $eecc = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', '%PROY%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('escalafon', '!=', 'SOF. - SGTO.')->where('escalafon', '!=', 'OFICIALES')->count();
                        $Coficiales = $Coficiales + $oficiales;
                        $Csofs = $Csofs + $sofs;
                        $Csgtos = $Csgtos + $sgtos;
                        $Ceecc = $Ceecc + $eecc;
                    } else {
                        $oficiales = 0;
                        $sofs = 0;
                        $sgtos = 0;
                        $eecc = 0;
                    }
                    if ($situacion == 'NO FORMAN') {
                        $oficiales = $Coficiales;
                        $sofs = $Csofs;
                        $sgtos = $Csgtos;
                        $eecc = $Ceecc;
                    } else {
                        if ($situacion == 'FORMAN') {
                            $oficiales = $Toficiales - $Coficiales;
                            $sofs = $Tsofs - $Csofs;
                            $sgtos = $Tsgtos - $Csgtos;
                            $eecc = $Teecc - $Ceecc;
                        };
                    };
                    if ($situacion == NULL) {
                        $oficiales = $sofs = $sgtos = $eecc = $total = "-";
                    } else {
                        $total = $oficiales + $sofs + $sgtos + $eecc;
                    };
                    if ($total > 0 || $situacion == NULL || $situacion == 'NO FORMAN') {
                        echo "<tr>";
                        echo "<td style=text-align: lefth;>" . $situacion . "</td>";
                        echo "<td>" . $oficiales . "</td>";
                        echo "<td>" . $sofs . "</td>";
                        echo "<td>" . $sgtos . "</td>";
                        echo "<td>" . $eecc . "</td>";
                        echo "<td>" . $total . "</td>";
                        echo "</tr>";
                    };
                    $i++;
                }
                ?>
            </tbody>
        </table>
        <br>
        <table style="width: 90%;">
            <thead>
                <tr>
                    <th colspan="4"> DEMOSTRACIÓN</th>
                </tr>
                <tr>
                    <th style="width: 5%;">N°</th>
                    <th>GRADO, NOMBRES Y APELLIDOS</th>
                    <th style="width: 15%;">SITUACIÓN</th>
                    <th style="width: 40%;">OBSERVACIÓN</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $i = 2;
                $nro = 1;
                while ($i < 12) {
                    $situacion = DB::table('situacions')->where('id', $i)->value('situacion');
                    if ($situacion == 'GUARDIA') {
                        $nombres = DB::table('personas')->join('destinos', 'personas.id', 'destinos.persona_id')->where('gestion', date('Y'))->where('distrito', $distrito)->join('guardias', 'guardias.persona_id', 'destinos.persona_id')->where('fecha', $hoy)->select('nombre_completo', 'funcion as obs')->get();
                    } elseif ($situacion == 'FALTA') {
                        $nombres = DB::table('faltaatrasos')->where('fecha', $hoy)->join('personas', 'personas.id', 'faltaatrasos.persona_id')->join('destinos', 'personas.id', 'destinos.persona_id')->where('gestion', date('Y'))->where('distrito', $distrito)->select('nombre_completo', 'observacion as obs')->get();
                    } elseif ($situacion == 'VACACIÓN') {
                        $nombres = DB::table('vacacions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('situacion', 'like', 'Vac%')->where('distrito', $distrito)->join('personas', 'personas.id', 'vacacions.persona_id')->select('nombre_completo', 'situacion as obs')->get();
                    } elseif ($situacion == 'PERMISO') {
                        $nombres = DB::table('vacacions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('situacion', 'like', 'Permiso%')->where('distrito', $distrito)->join('personas', 'personas.id', 'vacacions.persona_id')->select('nombre_completo', 'situacion as obs')->get();
                    } elseif ($situacion == 'TOLERANCIA') {
                        $nombres = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'Tolerancia%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('escalafon', 'LIKE', 'OFICIALES')->select('nombre_completo', 'motivo as obs')->get();
                    } elseif ($situacion == 'COMISION CEO') {
                        $nombres = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'COMISION CEO%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('escalafon', 'LIKE', 'OFICIALES')->select('nombre_completo', 'motivo as obs')->get();
                    } elseif ($situacion == 'PERMISO NATALIDAD') {
                        $nombres = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'PERMISO NATALIDAD%')->where ('distrito',$distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->select('nombre_completo', 'motivo as obs')->get();
                    } elseif ($situacion == 'BAJA MEDICA') {
                            $nombres = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'BAJA MEDICA%')->where ('distrito',$distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->select('nombre_completo', 'motivo as obs')->get();
                    } elseif ($situacion == 'COMISION') {
                        $nombres = DB::table('licencia_comisions')->whereRaw('f_desde <= ? and f_hasta >= ?', [$hoy, $hoy])->where('motivo', 'like', 'COMISION PROY%')->where('distrito', $distrito)->join('personas', 'personas.id', 'licencia_comisions.persona_id')->where('escalafon', 'LIKE', 'OFICIALES')->select('nombre_completo', 'motivo as obs')->get();
                    }
                    foreach ($nombres as $nombre) {
                        echo "<tr>";
                        echo "<td>" . $nro . "</td>";
                        echo "<td style=text-align: lefth;>" . $nombre->nombre_completo . "</td>";
                        echo "<td style=text-align: lefth;>" . $situacion . "</td>";
                        echo "<td style=text-align: lefth;>" . $nombre->obs . "</td>";
                        echo "</tr>";
                        $nro++;
                    }
                    $i++;
                }
                ?>
            </tbody>
        </table>
        <!--/main>
    <footer>
        <h3>desarrollo</h3>
    </footer-->
</body>
</html>