import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(Xylo());

class Xylo extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded span(int sNum, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(sNum);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            span(1, Colors.red),
            span(2, Colors.blueGrey),
            span(3, Colors.indigo),
            span(4, Colors.lightGreenAccent),
            span(5, Colors.green),
            span(6, Colors.teal),
            span(7, Colors.pinkAccent),
          ],
        ),
      ),
    );
  }
}
