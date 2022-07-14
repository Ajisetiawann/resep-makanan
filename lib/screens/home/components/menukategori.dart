import 'package:flutter/material.dart';
import 'package:resep_makanan/constants.dart';

import 'featurred_plants.dart';
import 'header_with_searchbox.dart';
import 'kategori.dart';
import 'title_with_more_bbtn.dart';

class MenuKategori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          Kategori(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
