import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {
              final player = AudioCache();
              player.play('note1.wav');
            },
            child: Text("click"),
          ),
        ),
      ),
    ),
  );
}
