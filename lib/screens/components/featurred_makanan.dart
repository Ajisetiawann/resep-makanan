import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedMakanan extends StatelessWidget {
  const FeaturedMakanan({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeatureMakananCard(
            image: "images/gambar1.png",
            press: () {},
          ),
          FeatureMakananCard(
            image: "images/gambar2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeatureMakananCard extends StatelessWidget {
  const FeatureMakananCard({
    key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
