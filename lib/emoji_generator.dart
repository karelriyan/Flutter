import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class EmojiGenerator extends StatefulWidget {
  const EmojiGenerator({super.key});

  @override
  State<EmojiGenerator> createState() {
    return _EmojiGeneratorState();
  }
}

class _EmojiGeneratorState extends State<EmojiGenerator> {
  var currentRandomNumber = 1;

  void changeemoji() {
    setState(() {
      currentRandomNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/emoji-$currentRandomNumber.png',
          width: 200,
        ),
        const SizedBox(height: 40),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 25),
          ),
          onPressed: changeemoji,
          child: const Text('Generate Emoji'),
        )
      ],
    );
  }
}
