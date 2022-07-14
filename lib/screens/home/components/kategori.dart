import 'package:flutter/material.dart';
import 'package:resep_makanan/screens/details/components/detail_kategori.dart';
import 'package:resep_makanan/screens/details/components/detail_screen.dart';

import '../../../constants.dart';

class Kategori extends StatelessWidget {
  const Kategori({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          KategoriCard(
            image: "images/korean.jpg",
            title: "Rendang",
            country: "JAWA",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          KategoriCard(
            image: "images/waffle.jpg",
            title: "Angelica",
            country: "Russia",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          KategoriCard(
            image: "images/korean.jpg",
            title: "Samantha",
            country: "Russia",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class KategoriCard extends StatelessWidget {
  const KategoriCard({
    key,
    required this.image,
    required this.title,
    required this.country,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "$title\n".toUpperCase(), style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
