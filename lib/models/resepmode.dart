import 'package:flutter/material.dart';

class RecipeModel {
  String title, description;
  int cookingTime;
  int servings;
  List<String> ingredients = [];
  String imgPath;
  RecipeModel({
    required this.title,
    required this.description,
    required this.cookingTime,
    required this.servings,
    required this.imgPath,
    required this.ingredients,
  });
  static List<RecipeModel> demoRecipe = [
    RecipeModel(
      title: 'Bacon Butter',
      description: 'At Tasty, always tring to make the world place, this quick and easy recipe',
      cookingTime: 15,
      servings: 4,
      imgPath: 'images/bacon.jpg',
      ingredients: [
        '8 strips of bacon',
        '1/2 cup (1 stick) unsalted butter,softened',
        '2 tablespoons chopped fresh chives',
        '2 teaspoons honey or maple syrup',
      ],
    ),
    RecipeModel(
      title: 'Mushroom Chiken Nuggets ',
      description: 'These healty-ish plant based mushroom nuggets will be the hype of your next get together.',
      cookingTime: 30,
      servings: 4,
      imgPath: 'images/Mushroom.jpg',
      ingredients: [
        '8 king trumpet mushrooms',
        '1 cup cornstarch',
        '1 cup tespooon paprika',
        '1 1/2 teaspoon garlic powder',
        '2 slices thick-cut bacon, cooked and broken into pieces',
        '2 c. spinach, torn',
        '2 oz. Gruyère cheese, shredded',
      ],
    ),
    RecipeModel(
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
    RecipeModel(
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
