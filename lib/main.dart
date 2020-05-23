import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded play(int i, Color ccolor){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final audioPlayer = AudioCache();
          audioPlayer.play('note$i.wav');
        },
        child: Container(
          color: ccolor,
        ),
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
            children: <Widget>[
              play(1,Colors.red),
              play(2,Colors.orange),
              play(3,Colors.yellow),
              play(4,Colors.green),
              play(5,Colors.teal),
              play(6,Colors.blue),
              play(7,Colors.indigo),
            ],
          ),
        ),
      ),
    );
  }
}
