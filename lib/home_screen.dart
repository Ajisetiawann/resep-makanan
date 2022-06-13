import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.redAccent[700],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/20220612_224201.png', height: 80),
                Text('TastyPedia'),
              ],
            )),
        body: Stack(children: <Widget>[
          Container(
            height: size.height * .4,
            decoration: BoxDecoration(image: DecorationImage(alignment: Alignment.topCenter, image: AssetImage('images/iPhone 13 mini - 1.png'))),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                      height: 64,
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage('images/20220612_215401.jpg'),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Mau Masak Apa', style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold)),
                              Text('Hari Ini?', style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      )),
                  Expanded(
                    child: GridView.count(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.asset(
                                  'images/shopping-cart-2-fill.svg',
                                  height: 50,
                                  alignment: Alignment.center,
                                ),
                                Text('Shopping')
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.asset(
                                  'images/taxi-fill.svg',
                                  height: 50,
                                  alignment: Alignment.center,
                                ),
                                Text('Ubers')
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.asset(
                                  'images/shopping-basket-fill.svg',
                                  height: 50,
                                  alignment: Alignment.center,
                                ),
                                Text('Groceries')
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.asset(
                                  'images/heart-fill.svg',
                                  height: 50,
                                  alignment: Alignment.center,
                                ),
                                Text('Dates')
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.asset(
                                  'images/numbers-fill.svg',
                                  height: 50,
                                  alignment: Alignment.center,
                                ),
                                Text('Stats')
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.asset(
                                  'images/bank-card-fill.svg',
                                  height: 50,
                                  alignment: Alignment.center,
                                ),
                                Text('Cards')
                              ],
                            ),
                          ),
                        ],
                        crossAxisCount: 2),
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
