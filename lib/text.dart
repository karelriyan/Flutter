import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.mytext, {super.key});

  final String mytext;

  @override
  Widget build(BuildContext context) {
    return Text(
      mytext,
      style: const TextStyle(
        color: Colors.red,
        fontSize: 50,
      ),
    );
  }
}
