import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resep_makanan/screens/home/components/body.dart';
import 'package:resep_makanan/screens/home/components/menukategori.dart';

class KategoriMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MenuKategori(),
    );
  }
}
