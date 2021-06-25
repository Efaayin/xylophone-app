import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playSound(int toneNumber) {
    final player = AudioCache();
    player.play('note$toneNumber.wav');
  }

  Widget buildKey() {
    return Expanded(
      child: TextButton(
        child: Text(''),
        onPressed: () {
          playSound(1);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
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
          buildKey(),
          Expanded(
            child: TextButton(
              child: Text(''),
              onPressed: () {
                playSound(2);
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.orange),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.all(0),
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Text(''),
              onPressed: () {
                playSound(3);
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.yellow),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Text(''),
              onPressed: () {
                playSound(4);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Text(''),
              onPressed: () {
                playSound(5);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Text(''),
              onPressed: () {
                playSound(6);
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.indigo),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Text(''),
              onPressed: () {
                playSound(7);
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
