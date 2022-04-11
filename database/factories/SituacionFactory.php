<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class SituacionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'persona_id'=>$this->faker->numberBetween(1, 18),
            'situcion' => $this->faker->randomElement(['vacacion','permiso','licencia']),
            'dias' => $this->faker->numberBetween(1, 10),
            'horas' => $this->faker->numberBetween(1, 6),
            'f_desde' => $this->faker->date(),
            'f_hasta' => $this->faker->date()
        ];
    }
}
