<?php

use Faker\Generator as Faker;

$factory->define(App\Product::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'description' => $faker->sentence(),
        'price' => $faker->numberBetween(1,100),
        'stock' => $faker->numberBetween(1,100),
        'image' => $faker->imageUrl(),
        'category_id' => $faker->numberBetween(1,100),
        'status' => $faker->numberBetween(1,100),
        'special' => $faker->numberBetween(1,100),
        'product_code' => $faker->numberBetween(1,100),
    ];
});
