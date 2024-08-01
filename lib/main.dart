import 'package:flutter/material.dart';
import 'background.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          warnaawal: Colors.purple,
          warnaakhir: Colors.pink,
        ),
      ),
    ),
  );
}
