import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DetailVideo extends StatefulWidget {
  final String videoUrl;

  DetailVideo({required this.videoUrl});

  @override
  _DetailVideoState createState() => _DetailVideoState(videoUrl);
}

class _DetailVideoState extends State<DetailVideo> {
  final String videoUrl;
  _DetailVideoState(this.videoUrl);

  late VideoPlayerController playerController;

  @override
  void initState() {
    super.initState();
    playerController = VideoPlayerController.network(videoUrl)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => playerController.play());
  }

  @override
  void dispose() {
    super.dispose();
    playerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Resep Video'),
          ],
        ),
      ),
      body: Center(
        child: playerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: playerController.value.aspectRatio,
                child: VideoPlayer(playerController),
              )
            : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            playerController.value.isPlaying ? playerController.pause() : playerController.play();
          });
        },
        child: Icon(
          playerController.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
