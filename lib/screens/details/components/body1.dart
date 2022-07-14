import 'package:flutter/material.dart';
import 'package:resep_makanan/constants.dart';

import 'ImageIcons.dart';
import 'title_and_price.dart';

class Body1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageIcons1(size: size),
          TitleAndPrice(title: "Espresso ", country: "Martini"),
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
