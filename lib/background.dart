import 'package:flutter/material.dart';
import 'package:quizapp_karel/emoji_generator.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key, required this.warnaakhir, required this.warnaawal});

  final Color warnaawal;
  final Color warnaakhir;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            warnaawal,
            warnaakhir,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: const Center(
        child: EmojiGenerator(),
      ),
    );
  }
}
