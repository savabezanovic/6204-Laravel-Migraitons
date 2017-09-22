<?php

use Faker\Generator as Faker;

$factory->define(App\Cart::class, function (Faker $faker) {
    return [
        'product' => $faker->name,
        'user' => $faker->name,
        'date' => $faker->date(),
    ];
});
