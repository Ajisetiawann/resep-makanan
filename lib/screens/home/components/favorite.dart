import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:resep_makanan/models/resepmodel.dart';
import 'package:resep_makanan/screens/details/components/detail_screen.dart';
import 'package:resep_makanan/screens/details/components/detail_screen.dart';
import 'package:resep_makanan/screens/details/components/resepdetail1.dart';

import '../../../constants.dart';
import '../../details/components/resepdetail.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: RecipeModel1.demoRecipe.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeDetails1(
                            recipeModel1: RecipeModel1.demoRecipe[index],
                          ),
                        )),
                    child: RecipeCard1(
                      recipeModel1: RecipeModel1.demoRecipe[index],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class RecipeCard1 extends StatefulWidget {
  final RecipeModel1 recipeModel1;

  RecipeCard1({
    required this.recipeModel1,
  });

  @override
  _RecipeCard1State createState() => _RecipeCard1State();
}

class _RecipeCard1State extends State<RecipeCard1> {
  bool loved = false;
  bool saved = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Hero(
                  tag: widget.recipeModel1.imgPath,
                  child: Image(
                    height: 320,
                    width: 320,
                    fit: BoxFit.cover,
                    image: AssetImage(widget.recipeModel1.imgPath),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 40,
              child: InkWell(
                onTap: () {
                  setState(() {
                    saved = !saved;
                  });
                },
                child: Icon(
                  saved ? FlutterIcons.bookmark_check_mco : FlutterIcons.bookmark_outline_mco,
                  color: Colors.white,
                  size: 38,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.recipeModel1.title,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              // Spacer(),
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      FlutterIcons.timer_mco,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      widget.recipeModel1.cookingTime.toString() + '\'',
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        setState(() {
                          loved = !loved;
                        });
                      },
                      child: Icon(
                        FlutterIcons.heart_circle_mco,
                        color: loved ? Colors.red : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
