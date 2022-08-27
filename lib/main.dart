import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Future<void> playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(MaterialColor color, int soundNumber) {
    return Expanded(
      child: FlatButton(
        onPressed: () async {
          playSound(soundNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.blue, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.green, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
