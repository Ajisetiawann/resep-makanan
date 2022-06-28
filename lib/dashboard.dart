import 'package:resep_makanan/models/resep.api.dart';
import 'package:resep_makanan/models/resep.dart';
import 'package:resep_makanan/views/detail_resep.dart';
import 'package:resep_makanan/widget/resep_card.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  late List<Resep> _resep;
  bool _isloading = true;

  @override
  void initState() {
    super.initState();
    getResep();
  }

  Future<void> getResep() async {
    _resep = await ResepApi.getResep();
    setState(() {
      _isloading = false;
    });
  }

  caridata() {
    _resep.where((element) => element.name == 'Banana Cue').toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          caridata();
        }),
        appBar: AppBar(
          backgroundColor: Colors.redAccent[700],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text('Menu'),
            ],
          ),
        ),
        body: _isloading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _resep.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: ResepCard(title: _resep[index].name, rating: _resep[index].rating.toString(), cookTime: _resep[index].totalTime, thumbnailUrl: _resep[index].images, videoUrl: _resep[index].videoUrl),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailResep(name: _resep[index].name, rating: _resep[index].rating.toString(), totalTime: _resep[index].totalTime, images: _resep[index].images, description: _resep[index].description, videoUrl: _resep[index].videoUrl, instructions: _resep[index].instructions, sections: _resep[index].sections),
                          ))
                    },
                  );
                },
              ));
  }
}
