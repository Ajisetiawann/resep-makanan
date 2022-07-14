import 'package:flutter/material.dart';

class RecipeModel1 {
  String title, description;
  int cookingTime;
  int servings;
  List<String> ingredients = [];
  String imgPath;
  RecipeModel1({
    required this.title,
    required this.description,
    required this.cookingTime,
    required this.servings,
    required this.imgPath,
    required this.ingredients,
  });
  static List<RecipeModel1> demoRecipe = [
    RecipeModel1(
      title: 'Bone Broth Ramen ',
      description: 'Bone Broth is the perfect lazy meal for one! curl up on the couch with a warm bowl of this protein packed recipe.',
      cookingTime: 20,
      servings: 4,
      imgPath: 'images/ramen.jpg',
      ingredients: [
        '1/2 Cup of water',
        '1 cup of frozen vegetables',
        '1 ramen packet with seasoning',
        '1 tbsp. olive oil or unsalted butter',
        '2 slices thick-cut bacon, cooked and broken into pieces',
        '2 c. spinach, torn',
        '2 oz. Gruyère cheese, shredded',
      ],
    ),
    RecipeModel1(
      title: 'Hummus Caesar Salad',
      description: 'vegan caesar has never been easier thanks to this time saving hack!using hummus as the base of the dressing gives you richness while being both nug and dairy free.',
      cookingTime: 30,
      servings: 4,
      imgPath: 'images/hummus.jpeg',
      ingredients: [
        '8 large eggs',
        '1 tsp. Dijon mustard',
        'Kosher salt and pepper',
        '1 tbsp. olive oil or unsalted butter',
        '2 slices thick-cut bacon, cooked and broken into pieces',
        '2 c. spinach, torn',
        '2 oz. Gruyère cheese, shredded',
      ],
    ),
  ];
}
