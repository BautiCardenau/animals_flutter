import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(AnimalsApp());
}

class AnimalsApp extends StatelessWidget {
  var player = AudioCache();
  void playAudio(int number) {
    player.play('animals$number.wav');
  }

  Expanded buildKey(int audioNr, String imageName) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
            onPressed: () {
              playAudio(audioNr);
            },
            child: Image.asset('images/$imageName.png'),
            color: Colors.grey[400],
            padding: EdgeInsets.all(10.0),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      buildKey(1, "puppy"),
                      buildKey(2, "cat"),
                      buildKey(3, "elephant"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      buildKey(4, "cow"),
                      buildKey(5, "monkey"),
                      buildKey(6, "crow"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
