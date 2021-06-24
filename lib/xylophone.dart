import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playSound(int toneNumber) {
    final player = AudioCache();
    player.play('note$toneNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TextButton(
            child: Text(''),
            onPressed: () {
              playSound(1);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
          ),
          TextButton(
            child: Text(''),
            onPressed: () {
              playSound(2);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
            ),
          ),
          TextButton(
            child: Text(''),
            onPressed: () {
              playSound(3);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
            ),
          ),
          TextButton(
            child: Text(''),
            onPressed: () {
              playSound(4);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            ),
          ),
          TextButton(
            child: Text(''),
            onPressed: () {
              playSound(5);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
          ),
          TextButton(
            child: Text(''),
            onPressed: () {
              playSound(6);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo),
            ),
          ),
          TextButton(
            child: Text(''),
            onPressed: () {
              playSound(7);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}
