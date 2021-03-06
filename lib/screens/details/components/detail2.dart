import 'package:flutter/material.dart';
import 'package:resep_makanan/constants.dart';

import 'image_dan_icons.dart';
import 'title_and_price.dart';

class Detail2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Waffle ", country: "Korea"),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
