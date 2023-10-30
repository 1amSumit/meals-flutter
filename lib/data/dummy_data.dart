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
        'https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGFzdGF8ZW58MHx8MHx8fDA%3D',
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
        'https://images.unsplash.com/photo-1599789197514-47270cd526b4?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8TWV4aWNhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D',
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
        'https://plus.unsplash.com/premium_photo-1661265946882-e2a01db641d4?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Y2hpbmVzZSUyMGZvb2R8ZW58MHx8MHx8fDA%3D',
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
        'https://images.unsplash.com/photo-1645734982188-e9603aa87de6?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8QW1lcmljYW4lMjBmb29kfGVufDB8fDB8fHww',
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
        'https://images.unsplash.com/photo-1473093226795-af9932fe5856?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8U2VhZm9vZCUyMGZvb2R8ZW58MHx8MHx8fDA%3D',
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
        'https://images.unsplash.com/photo-1562259819-3ffa9f9a77f3?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8SW5kaWFuJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D',
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
        'https://images.unsplash.com/photo-1681225654713-aeebafc6f6f2?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8RWd5cHRpb24lMjBmb29kfGVufDB8fDB8fHww',
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
    imgUrl:
        'https://images.unsplash.com/photo-1519984388953-d2406bc725e1?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8SmFwYW5lc2UlMjBmb29kfGVufDB8fDB8fHww',
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
    imgUrl:
        'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8R3JlZWslMjBTYWxhZHxlbnwwfHwwfHx8MA%3D%3D',
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
    imgUrl:
        'https://plus.unsplash.com/premium_photo-1664478244517-513dc18af854?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8VmVnZXRhcmlhbiUyMEJ1cnJpdG98ZW58MHx8MHx8fDA%3D',
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
