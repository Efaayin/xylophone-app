import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playSound(int toneNumber) {
    final player = AudioCache();
    player.play('note$toneNumber.wav');
  }

  void playSound2() {
    final player = AudioCache();
    player.play('cricket.m4a');
  }

  Expanded buildKey({required int soundTone, required Color color}) {
    return Expanded(
      child: TextButton(
        child: Text(''),
        onPressed: () {
          playSound(soundTone);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.all(0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(soundTone: 1, color: Colors.red),
          buildKey(soundTone: 2, color: Colors.orange),
          buildKey(soundTone: 3, color: Colors.yellow),
          buildKey(soundTone: 4, color: Colors.green),
          buildKey(soundTone: 5, color: Colors.blue),
          buildKey(soundTone: 6, color: Colors.indigo),
          buildKey(soundTone: 7, color: Colors.purple),
        ],
      ),
    );
  }
}
