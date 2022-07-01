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

        $pdf = \PDF::loadView('pdf',compact('fecha'),compact('distrito')); //con el nombre de la vista
        $pdf->setPaper('letter', 'portrait');
        //$pdf->set_option('defaultFont', 'Arial');
        //$pdf->render();
        return $pdf -> stream ('primerpdf.pdf');//NOMBRE DE LA DESCARGA
    }
}
