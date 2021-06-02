import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int sound_number) {
    final player = AudioCache();
    player.play('note$sound_number.wav');
  }

  Expanded buildkey({int soundinput, Color color} ){
    return Expanded(
      child: TextButton(
        // child: Text("Press Me"),
        style: TextButton.styleFrom(
          // primary: Colors.red,
          backgroundColor: color,
          onSurface: Colors.grey,
          elevation: 5,
        ),
        onPressed: () {
          playsound(soundinput);
        },
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
            children: [
              buildkey(color:Colors.red , soundinput: 1),
              buildkey(color:Colors.blue , soundinput: 2),
              buildkey(color:Colors.grey , soundinput: 3),
              buildkey(color:Colors.white , soundinput: 4),
              buildkey(color:Colors.green , soundinput: 5),
              buildkey(color:Colors.cyan, soundinput: 6),
              buildkey(color:Colors.purple , soundinput: 7),
            ],
          ),
        ),
      ),
    );
  }
}
