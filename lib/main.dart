import 'package:flutter/material.dart';
import 'start_screen.dart';

// main function
void main() {
  // runApp function
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 58, 141, 208),
                  Color.fromARGB(255, 72, 93, 231),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: const StartScreen()),
      ),
    ),
  );
}
