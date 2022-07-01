<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function imprimir(){
        $fecha = date('d-m-Y');
        $distrito = $_GET['distrito'];
        if ($distrito == 'Super Admin') {
            $distrito = 'CENTRAL';
        }
        $pdf = \PDF::loadView('pdf',compact('fecha'),compact('distrito')); //con el nombre de la vista
        $pdf->setPaper('letter', 'portrait');
        return $pdf -> stream ('PARTE.pdf');//NOMBRE DE LA DESCARGA
    }
}
