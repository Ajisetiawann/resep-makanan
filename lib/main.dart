import 'package:resep_makanan/home_screen.dart';
import 'package:resep_makanan/navbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TastyPedia',
      theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.white, textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
      debugShowCheckedModeBanner: false,
      home: BottomNavi(),
    );
  }
}
