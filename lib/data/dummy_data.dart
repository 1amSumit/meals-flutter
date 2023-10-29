import "package:meals/modals/category.dart";
import "package:meals/modals/meal.dart";
import "package:flutter/material.dart";

const availableCategories = [
  Category(id: "c1", title: "Italian", color: Colors.purple),
  Category(id: "c2", title: "French", color: Colors.red),
  Category(id: "c3", title: "Thai", color: Colors.orange),
  Category(id: "c4", title: "Europian", color: Colors.yellow),
  Category(id: "c5", title: "Asian", color: Colors.cyan),
  Category(id: "c6", title: "Summer", color: Colors.brown),
  Category(id: "c7", title: "Japanese", color: Colors.green),
  Category(id: "c8", title: "Egyptian", color: Colors.lightBlueAccent),
  Category(id: "c9", title: "Greek", color: Colors.cyanAccent),
  Category(id: "c10", title: "Mexican", color: Colors.purple),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: ['Italian', 'Pasta'],
    title: 'Spaghetti with Tomato Sauce',
    imgUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.puckarabia.com%2Fen%2Frecipes%2Fspaghetti-bolognese-arabia%2F&psig=AOvVaw2hxDXv5VdEz3YOQ4LFMt-8&ust=1698672379239000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLDwjfCtm4IDFQAAAAAdAAAAABAE',
    ingredients: ['Spaghetti', 'Tomato Sauce', 'Oregano', 'Olive Oil'],
    steps: [
      'Cook spaghetti according to package instructions.',
      'Heat olive oil, add tomato sauce, and season with oregano.',
      'Serve over cooked spaghetti.'
    ],
    duration: 30,
    complexity: Complexity.simple,
    affordability: Affordability.pricey,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm2',
    categories: ['Mexican', 'Fast Food', 'French'],
    title: 'Tacos',
    imgUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.puckarabia.com%2Fen%2Frecipes%2Fspaghetti-bolognese-arabia%2F&psig=AOvVaw2hxDXv5VdEz3YOQ4LFMt-8&ust=1698672379239000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLDwjfCtm4IDFQAAAAAdAAAAABAE',
    ingredients: ['Tortillas', 'Ground Beef', 'Lettuce', 'Tomatoes', 'Cheese'],
    steps: [
      'Brown ground beef in a skillet.',
      'Place tortillas on a flat surface and fill with beef, lettuce, tomatoes, and cheese.',
      'Fold in half and serve hot.'
    ],
    duration: 20,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm3',
    categories: ['Chinese', 'Vegetarian', 'Thai'],
    title: 'Vegetable Stir-Fry',
    imgUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.puckarabia.com%2Fen%2Frecipes%2Fspaghetti-bolognese-arabia%2F&psig=AOvVaw2hxDXv5VdEz3YOQ4LFMt-8&ust=1698672379239000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLDwjfCtm4IDFQAAAAAdAAAAABAE',
    ingredients: ['Mixed Vegetables', 'Soy Sauce', 'Ginger', 'Garlic', 'Rice'],
    steps: [
      'Heat oil in a wok or skillet.',
      'Add ginger and garlic, then stir-fry mixed vegetables.',
      'Season with soy sauce and serve over cooked rice.'
    ],
    duration: 25,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm4',
    categories: ['American', 'Meat', 'Europian'],
    title: 'BBQ Ribs',
    imgUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.puckarabia.com%2Fen%2Frecipes%2Fspaghetti-bolognese-arabia%2F&psig=AOvVaw2hxDXv5VdEz3YOQ4LFMt-8&ust=1698672379239000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLDwjfCtm4IDFQAAAAAdAAAAABAE',
    ingredients: ['Pork Ribs', 'BBQ Sauce', 'Salt', 'Pepper'],
    steps: [
      'Preheat the grill.',
      'Season ribs with salt and pepper, then grill and baste with BBQ sauce until cooked through.',
      'Serve hot.'
    ],
    duration: 60,
    complexity: Complexity.simple,
    affordability: Affordability.pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm5',
    categories: ['Mediterranean', 'Seafood', 'Europian'],
    title: 'Grilled Salmon',
    imgUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.puckarabia.com%2Fen%2Frecipes%2Fspaghetti-bolognese-arabia%2F&psig=AOvVaw2hxDXv5VdEz3YOQ4LFMt-8&ust=1698672379239000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLDwjfCtm4IDFQAAAAAdAAAAABAE',
    ingredients: ['Salmon Fillet', 'Lemon', 'Olive Oil', 'Herbs'],
    steps: [
      'Preheat the grill.',
      'Brush salmon with olive oil, lemon, and herbs, then grill until cooked.',
      'Serve with a side of your choice.'
    ],
    duration: 25,
    complexity: Complexity.simple,
    affordability: Affordability.pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm6',
    categories: ['Indian', 'Vegetarian', 'Asian'],
    title: 'Vegetable Curry',
    imgUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.puckarabia.com%2Fen%2Frecipes%2Fspaghetti-bolognese-arabia%2F&psig=AOvVaw2hxDXv5VdEz3YOQ4LFMt-8&ust=1698672379239000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLDwjfCtm4IDFQAAAAAdAAAAABAE',
    ingredients: ['Mixed Vegetables', 'Curry Sauce', 'Rice'],
    steps: ['Cook mixed vegetables in curry sauce.', 'Serve over cooked rice.'],
    duration: 35,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm7',
    categories: ['Egyptian', 'Pizza', 'Summer'],
    title: 'Margherita Pizza',
    imgUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.puckarabia.com%2Fen%2Frecipes%2Fspaghetti-bolognese-arabia%2F&psig=AOvVaw2hxDXv5VdEz3YOQ4LFMt-8&ust=1698672379239000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLDwjfCtm4IDFQAAAAAdAAAAABAE',
    ingredients: ['Pizza Dough', 'Tomato Sauce', 'Mozzarella Cheese', 'Basil'],
    steps: [
      'Roll out pizza dough, add tomato sauce, cheese, and basil.',
      'Bake in a preheated oven until golden brown.',
      'Slice and serve.'
    ],
    duration: 30,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm8',
    categories: ['Japanese', 'Seafood'],
    title: 'Sushi Rolls',
    imgUrl: 'https://www.example.com/sushi.jpg',
    ingredients: ['Sushi Rice', 'Nori Seaweed', 'Fresh Fish', 'Vegetables'],
    steps: [
      'Lay out nori seaweed, add sushi rice, fish, and vegetables.',
      'Roll up and cut into bite-sized pieces.',
      'Serve with soy sauce and wasabi.'
    ],
    duration: 45,
    complexity: Complexity.simple,
    affordability: Affordability.pricey,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm9',
    categories: ['Greek', 'Vegetarian'],
    title: 'Greek Salad',
    imgUrl: 'https://www.example.com/salad.jpg',
    ingredients: [
      'Cucumbers',
      'Tomatoes',
      'Olives',
      'Feta Cheese',
      'Olive Oil'
    ],
    steps: [
      'Chop cucumbers, tomatoes, and olives, then crumble feta cheese on top.',
      'Drizzle with olive oil and serve cold.'
    ],
    duration: 15,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm10',
    categories: ['Mexican', 'Vegetarian'],
    title: 'Vegetarian Burrito',
    imgUrl: 'https://www.example.com/burrito.jpg',
    ingredients: ['Tortilla', 'Black Beans', 'Rice', 'Salsa', 'Guacamole'],
    steps: [
      'Fill tortilla with black beans, rice, salsa, and guacamole.',
      'Fold and serve hot or as a burrito bowl.'
    ],
    duration: 20,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
];
