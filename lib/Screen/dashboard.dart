import 'package:ajisetiawan/Screen/login_screen.dart';
import 'package:ajisetiawan/Screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ajisetiawan/Screen/login_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(8.0),
        ),
        Text(
          'Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Container(
          padding: EdgeInsets.all(210.0),
        ),
      ]),
    );
  }
}
