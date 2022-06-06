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
        title: Text('Home Screen'),
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(8.0),
        ),
        Text(
          'Nama: Aji Setiawan',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        Text(
          'NIM: 190103175',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        Container(
          padding: EdgeInsets.all(210.0),
        ),
        SizedBox(
          width: 250,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              var box = Hive.box('userBox').clear();

              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => LoginScreen()),
              );
            },
            child: Text('Logout'),
          ),
        ),
      ]),
    );
  }
}
