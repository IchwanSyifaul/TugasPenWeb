<?php

namespace Database\Factories;

use App\Models\About;
use Illuminate\Database\Eloquent\Factories\Factory;

class AboutFactory extends Factory
{
    protected $model = About::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->sentence(mt_rand(2,8)),
            'email' => $this->faker->unique()->safeEmail(),
            'pertanyaan' => $this->faker->sentence(mt_rand(2,10)),
            'krisar'=> collect($this->faker->paragraphs(mt_rand(2,5)))->map(fn($p)=>"<p>$p</p>")->implode(''),
        ];
    }
}
