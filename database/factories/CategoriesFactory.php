<?php

use Faker\Generator as Faker;

$factory->define(App\Category::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
//        'category_id' => $faker->randomNumber(),
        'description' => $faker->sentence(),
        'image' => $faker->imageUrl(),
    ];
});
