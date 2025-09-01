import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp
    extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(
    int soundNumber,
  ) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource(
        'audio/note$soundNumber.wav',
      ),
    );
  }

  // Reusable key builder
  Widget buildKey({
    required Color color,
    required int soundNumber,
  }) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.zero,
          ),
        ),
        child: const SizedBox.shrink(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment
                    .stretch,
            children: [
              buildKey(
                color: Colors.red,
                soundNumber: 1,
              ),
              buildKey(
                color: Colors.orange,
                soundNumber: 2,
              ),
              buildKey(
                color: Colors.yellow,
                soundNumber: 3,
              ),
              buildKey(
                color: Colors.green,
                soundNumber: 4,
              ),
              buildKey(
                color: Colors.teal,
                soundNumber: 5,
              ),
              buildKey(
                color: Colors.blue,
                soundNumber: 6,
              ),
              buildKey(
                color: Colors.purple,
                soundNumber: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
