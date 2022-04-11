<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PersonaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [

            'escalafon' => $this->faker->randomElement(['OFICIALES', 'SOF.-SGTO.', 'E.C.','Contrato']),
            'grado'=>$this->faker->randomElement(['GRAL.','CNL.','TCNL.','MY.','CAP.','TTE.','SBTTE.','SOF. MTRE.','SOF. MY.','SOF. 1RO','SOF. 2DO.','SOF. INCL.','SGTO. 1RO','SGTO. 2DO.', 'SGTO. INCL.']),
            'arma' => $this->faker->randomElement(['INFANTERIA','CABALLERIA','ARTLLERIA','INGENIERIA','COMUNICACIONES','LOGISTICA']),
            'especialidad' => $this->faker->randomElement(['DAEN.','DEM.','DIM.','OEME.','DEPSS.']),
            'paterno' => $this->faker->lastName(),
            'materno' => $this->faker->lastName(),
            'nombre' => $this->faker->name(),
            'ci' => $this->faker->numberBetween(111111,9999999),
            'extension' => $this->faker->randomElement(['LP','CB','SC','CH','TA','PA','PO','BE','OR']),
            'egreso' => $this->faker->year('-20 years'),
            'antiguedad' => $this->faker->numberBetween(1,150),
            'sexo' => $this->faker->randomElement(['masculino','femenino']),
            'estdo_civil' => $this->faker->randomElement(['casado', 'soltero', 'divorciado']),
            'fecha_nacimiento' => $this->faker->date(),
            'domicilio' => $this->faker->address(),
            'celular' => $this->faker->numberBetween(60000000,79999999),
            'celular2' => $this->faker->numberBetween(60000000, 79999999),
            'email' => $this->faker->email(),
            'foto' => $this->faker->imageUrl(150,150),
            'nombre_completo' => $this->faker->name()
        ];
    }
}
