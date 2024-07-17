import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded BuildKey({required Color color, required int SoundNumber}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.play(
            AssetSource("note$SoundNumber.wav"),
          );
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuildKey(color: Colors.red, SoundNumber: 1),
              BuildKey(color: Colors.orange, SoundNumber: 2),
              BuildKey(color: Colors.yellow, SoundNumber: 3),
              BuildKey(color: Colors.green, SoundNumber: 4),
              BuildKey(color: Colors.teal, SoundNumber: 5),
              BuildKey(color: Colors.blue, SoundNumber: 6),
              BuildKey(color: Colors.purple, SoundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
