import 'package:resep_makanan/dashboard.dart';
import 'package:resep_makanan/more.dart';
import 'package:resep_makanan/payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resep_makanan/home_screen.dart';

class BottomNavi extends StatefulWidget {
  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int currentIndex = 0;
  final List<Widget> body = [
    HomeScreen(),
    Dashboard(),
    Payment(),
    More(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
              label: 'Home',
              activeIcon: Icon(Icons.home_outlined, color: Colors.blue)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant_menu_outlined,
                color: Colors.grey,
              ),
              label: 'Menu',
              activeIcon: Icon(Icons.restaurant_menu_outlined, color: Colors.blue)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.payment_sharp,
                color: Colors.grey,
              ),
              label: 'Payment',
              activeIcon: Icon(Icons.payment_outlined, color: Colors.blue)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz_rounded,
                color: Colors.grey,
              ),
              label: 'Akun',
              activeIcon: Icon(Icons.more_horiz_rounded, color: Colors.blue)),
        ],
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
