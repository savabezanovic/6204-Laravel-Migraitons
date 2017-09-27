<?php

use Faker\Generator as Faker;

$factory->define(App\Product::class, function (Faker $faker) {
    return [
//        'product_id' => $faker->randomNumber(),
        'name' => $faker->firstName,
        'description' => $faker->sentence(),
        'price' => $faker->numberBetween(99,999),
        'stock' => $faker->numberBetween(1,5),
        'image' => $faker->imageUrl(),
        'status' => $faker->numberBetween(1,2),
        'special' => $faker->numberBetween(1,2),
        'product_code' => $faker->numberBetween(1,5),
    ];
});
