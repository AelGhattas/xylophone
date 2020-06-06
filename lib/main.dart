import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buttonFunc({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buttonFunc(color: Colors.red, soundNumber: 1),
                buttonFunc(color: Colors.deepOrangeAccent, soundNumber: 2),
                buttonFunc(color: Colors.yellow, soundNumber: 3),
                buttonFunc(color: Colors.green.shade700, soundNumber: 4),
                buttonFunc(color: Colors.green.shade900, soundNumber: 5),
                buttonFunc(color: Colors.blue, soundNumber: 6),
                buttonFunc(color: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
