<?php

use Faker\Generator as Faker;

$factory->define(App\Cart::class, function (Faker $faker) {
    return [

        'product' => $faker->firstName,
//        'user_id' => $faker->name,
//        'date' => $faker->date(),
    ];
});
