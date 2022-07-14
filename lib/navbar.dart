import 'package:resep_makanan/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resep_makanan/home_screen.dart';
import 'package:resep_makanan/kategori.dart';
import 'package:resep_makanan/screens/home/components/kategori.dart';

class BottomNavi extends StatefulWidget {
  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int currentIndex = 0;
  final List<Widget> body = [
    HomeScreen(),
    KategoriMenu(),
    Dashboard(),
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
                Icons.category_outlined,
                color: Colors.grey,
              ),
              label: 'Kategori',
              activeIcon: Icon(Icons.category_outlined, color: Colors.blue)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant_menu_outlined,
                color: Colors.grey,
              ),
              label: 'Resep',
              activeIcon: Icon(Icons.restaurant_menu_outlined, color: Colors.blue)),
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
