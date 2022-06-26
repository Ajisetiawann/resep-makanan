import 'package:resep_makanan/models/resep.dart';
import 'package:resep_makanan/widget/resep_card.dart';
import 'package:flutter/material.dart';

class DetailResep extends StatelessWidget {
  final String name;
  final String images;
  final String rating;
  final String totalTime;
  final String description;
  final String videoUrl;
  final List<Instruction> instructions;

  DetailResep({required this.name, required this.images, required this.rating, required this.totalTime, required this.description, required this.videoUrl, required this.instructions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Row(
          children: [
            SizedBox(width: 10),
            Text('Detail Menu'),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ResepCard(title: name, rating: rating, cookTime: totalTime, thumbnailUrl: images, videoUrl: videoUrl),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  child: Column(mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Description',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(description, style: TextStyle(color: Colors.black), textAlign: TextAlign.justify),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Instructions',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                            itemCount: instructions.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(instructions[index].displayText),
                              );
                            }))
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
