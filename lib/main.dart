import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            MyContainer(color: Colors.red, sound: 1),
            MyContainer(color: Colors.orange, sound: 2),
            MyContainer(color: Colors.yellow, sound: 3),
            MyContainer(color: Colors.green, sound: 4),
            MyContainer(color: Colors.greenAccent, sound: 5),
            MyContainer(color: Colors.blue, sound: 6),
            MyContainer(color: Colors.purple, sound: 7),
          ],
        ),
      ),
    );
  }

  Widget MyContainer({Color color, int sound}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(0),
        ),
        onPressed: () {
          playSound(sound);
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: color),
        ),
      ),
    );
  }

  void playSound(int num) {
    final player = AssetsAudioPlayer();
    player.open(Audio('assets/note$num.wav'));
  player.play();
  }
}
