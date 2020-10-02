import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final AudioCache player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildkey(Color color, int note) {
    return Expanded(
      child: MaterialButton(
        enableFeedback: false,
        color: color,
        onPressed: () {
          playSound(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(Colors.purple, 1),
                buildkey(Colors.red, 2),
                buildkey(Colors.orange, 3),
                buildkey(Colors.yellow, 4),
                buildkey(Colors.blue, 5),
                buildkey(Colors.green, 6),
                buildkey(Colors.pink, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
